#include <kern/e1000.h>
#include <kern/pmap.h>

// LAB 6: Your driver code here
static volatile uint32_t *e1000;
struct e1000_tdh *tdh;
struct e1000_tdt *tdt;
struct e1000_tdlen *tdlen;



#define E1000REG(offset) (void *)(bar_va + offset)


int
e1000_attachfn(struct pci_func *pcif)
{
    pci_func_enable(pcif);
    //pci_func_enable()协商MMIO范围，并将基地址和大小保存在基地址寄存器0(reg_base[0] and reg_size[0])中
    e1000 = mmio_map_region(pcif->reg_base[0],pcif->reg_size[0]);
    uint32_t *status_reg = (uint32_t *)(e1000+E1000_STATUS);
    assert(*status_reg== 0x80080783);
    tx_init();
    return 0;
}

static void 
tx_init() 
{
    // tx descs init
    for (int i = 0; i < E1000_NTXDESC; ++i) {
        tx_descs[i].status |= TX_STA_DD_BIT;
    }

    // setting TDBAL, TDLEN
    e1000[REG_TDBAL >> 2] = (uint32_t)PADDR((void*)tx_descs);
    e1000[REG_TDLEN >> 2] = sizeof(tx_descs);

    // TDH = TDT = 0
    reg_tdh = &e1000[REG_TDH >> 2];
    reg_tdt = &e1000[REG_TDT >> 2];
    *reg_tdh = 0;
    *reg_tdt = 0;

    // TCTL setting
    e1000[REG_TCTL >> 2] = 0
        | TCTL_EN_BIT 
        | TCTL_PSP_BIT 
        | (0x10 << TCTL_CT_SHIFT) 
        | (0x40 << TCTL_COLD_SHIFT)
        ;

    // IPG setting
    e1000[REG_TIPG >> 2] = 0
        | (10 << TIPG_IPGT_SHIFT) 
        | (8 << TIPG_IPGR1_SHIFT) 
        | (6 << TIPG_IPGR2_SHIFT)
        ;
}
int 
e1000_transmit(const char *buf, size_t len) 
{
    assert(len <= E1000_MAXPACK);
    
    uint32_t tmp_reg_tdt = *reg_tdt;

    // queue if full
    if (!(tx_descs[tmp_reg_tdt].status & TX_STA_DD_BIT))
        return -1;

    // copy memory
    memmove((void*)tx_buf[tmp_reg_tdt], buf, len);

    // setting desc
    tx_descs[tmp_reg_tdt].cmd = 0 
        | TX_CMD_RS_BIT 
        | TX_CMD_EOP_BIT 
        | TX_CMD_IFCS_BIT
        ;

    tx_descs[tmp_reg_tdt].status = 0;
    tx_descs[tmp_reg_tdt].addr = (uint64_t)PADDR((void*)tx_buf[tmp_reg_tdt]);
    tx_descs[tmp_reg_tdt].length = len;

    // update TDT
    *reg_tdt = (tmp_reg_tdt + 1) % E1000_NTXDESC;

    return 0;
}