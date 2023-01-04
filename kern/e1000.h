#ifndef JOS_KERN_E1000_H
#define JOS_KERN_E1000_H

#include <kern/pci.h>

#define E1000_VENDER_ID_82540EM 0x8086
#define E1000_DEV_ID_82540EM 0X100E
#define E1000_STATUS 0x00008
#define E1000_NTXDESC 32
#define E1000_MAXPACK 1518
#define REG_TDBAL    0x03800  /* TX Descriptor Base Address Low - RW */
#define REG_TDBAH    0x03804  /* TX Descriptor Base Address High - RW */
#define REG_TDLEN    0x03808  /* TX Descriptor Length - RW */
#define REG_TDH      0x03810  /* TX Descriptor Head - RW */
#define REG_TDT      0x03818  /* TX Descripotr Tail - RW */
#define REG_TCTL     0x00400  /* TX Control - RW */
#define REG_TIPG     0x00410  /* TX Inter-packet gap -RW */

#define TCTL_EN_BIT         (1 << 1)
#define TCTL_PSP_BIT        (1 << 3)
#define TCTL_CT_SHIFT       4
#define TCTL_COLD_SHIFT     12

#define TIPG_IPGT_SHIFT     0
#define TIPG_IPGR1_SHIFT    10
#define TIPG_IPGR2_SHIFT    20

#define TX_CMD_EOP_BIT     (1 << 0)
#define TX_CMD_IFCS_BIT    (1 << 1)
#define TX_CMD_RS_BIT      (1 << 3)
#define TX_STA_DD_BIT      (1 << 0)

static volatile uint32_t *reg_tdh, *reg_tdt;
__attribute__((__aligned__(sizeof(struct e1000_tx_desc))))
static volatile struct e1000_tx_desc tx_descs[E1000_NTXDESC];
static volatile uint8_t tx_buf[E1000_NTXDESC][E1000_MAXPACK];
int e1000_attachfn(struct pci_func *pcif);
struct e1000_tx_desc {
    uint64_t addr;
    uint16_t length;
    uint8_t cso;
    uint8_t cmd;
    uint8_t status;
    uint8_t css;
    uint16_t special;
};
#endif  // SOL >= 6
