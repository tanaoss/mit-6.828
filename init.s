	.file	"init.c"
	.stabs	"kern/init.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"int:t(0,1)=r(0,1);-2147483648;2147483647;",128,0,0,0
	.stabs	"char:t(0,2)=r(0,2);0;127;",128,0,0,0
	.stabs	"long int:t(0,3)=r(0,3);-9223372036854775808;9223372036854775807;",128,0,0,0
	.stabs	"unsigned int:t(0,4)=r(0,4);0;4294967295;",128,0,0,0
	.stabs	"long unsigned int:t(0,5)=r(0,5);0;-1;",128,0,0,0
	.stabs	"__int128:t(0,6)=r(0,6);0;-1;",128,0,0,0
	.stabs	"__int128 unsigned:t(0,7)=r(0,7);0;-1;",128,0,0,0
	.stabs	"long long int:t(0,8)=r(0,8);-9223372036854775808;9223372036854775807;",128,0,0,0
	.stabs	"long long unsigned int:t(0,9)=r(0,9);0;-1;",128,0,0,0
	.stabs	"short int:t(0,10)=r(0,10);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,11)=r(0,11);0;65535;",128,0,0,0
	.stabs	"signed char:t(0,12)=r(0,12);-128;127;",128,0,0,0
	.stabs	"unsigned char:t(0,13)=r(0,13);0;255;",128,0,0,0
	.stabs	"float:t(0,14)=r(0,1);4;0;",128,0,0,0
	.stabs	"double:t(0,15)=r(0,1);8;0;",128,0,0,0
	.stabs	"long double:t(0,16)=r(0,1);16;0;",128,0,0,0
	.stabs	"_Float32:t(0,17)=r(0,1);4;0;",128,0,0,0
	.stabs	"_Float64:t(0,18)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Float128:t(0,19)=r(0,1);16;0;",128,0,0,0
	.stabs	"_Float32x:t(0,20)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Float64x:t(0,21)=r(0,1);16;0;",128,0,0,0
	.stabs	"_Decimal32:t(0,22)=r(0,1);4;0;",128,0,0,0
	.stabs	"_Decimal64:t(0,23)=r(0,1);8;0;",128,0,0,0
	.stabs	"_Decimal128:t(0,24)=r(0,1);16;0;",128,0,0,0
	.stabs	"void:t(0,25)=(0,25)",128,0,0,0
	.stabs	"./inc/stdio.h",130,0,0,0
	.stabs	"./inc/stdarg.h",130,0,0,0
	.stabs	"va_list:t(2,1)=(2,2)=(2,3)=ar(2,4)=r(2,4);0;-1;;0;0;(2,5)=xs__va_list_tag:",128,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.stabs	"./inc/string.h",130,0,0,0
	.stabs	"./inc/types.h",130,0,0,0
	.stabs	"bool:t(4,1)=(4,2)=eFalse:0,True:1,;",128,0,0,0
	.stabs	" :T(4,3)=efalse:0,true:1,;",128,0,0,0
	.stabs	"int8_t:t(4,4)=(0,12)",128,0,0,0
	.stabs	"uint8_t:t(4,5)=(0,13)",128,0,0,0
	.stabs	"int16_t:t(4,6)=(0,10)",128,0,0,0
	.stabs	"uint16_t:t(4,7)=(0,11)",128,0,0,0
	.stabs	"int32_t:t(4,8)=(0,1)",128,0,0,0
	.stabs	"uint32_t:t(4,9)=(0,4)",128,0,0,0
	.stabs	"int64_t:t(4,10)=(0,8)",128,0,0,0
	.stabs	"uint64_t:t(4,11)=(0,9)",128,0,0,0
	.stabs	"intptr_t:t(4,12)=(4,8)",128,0,0,0
	.stabs	"uintptr_t:t(4,13)=(4,9)",128,0,0,0
	.stabs	"physaddr_t:t(4,14)=(4,9)",128,0,0,0
	.stabs	"ppn_t:t(4,15)=(4,9)",128,0,0,0
	.stabs	"size_t:t(4,16)=(4,9)",128,0,0,0
	.stabs	"ssize_t:t(4,17)=(4,8)",128,0,0,0
	.stabs	"off_t:t(4,18)=(4,8)",128,0,0,0
	.stabn	162,0,0,0
	.stabn	162,0,0,0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"leaving test_backtrace %d\n"
	.text
	.p2align 4
	.stabs	"test_backtrace:F(0,25)",36,0,0,test_backtrace
	.stabs	"x:P(0,1)",64,0,0,6
	.globl	test_backtrace
	.type	test_backtrace, @function
test_backtrace:
	.stabn	68,0,13,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	.stabn	68,0,13,.LM1-.LFBB1
.LM1:
	movl	%edi, %ebp
	.stabn	68,0,15,.LM2-.LFBB1
.LM2:
	testl	%edi, %edi
	jle	.L2
	.stabn	68,0,16,.LM3-.LFBB1
.LM3:
	leal	-1(%rdi), %edi
	call	test_backtrace
.L3:
	.stabn	68,0,22,.LM4-.LFBB1
.LM4:
	movl	%ebp, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	.stabn	68,0,23,.LM5-.LFBB1
.LM5:
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	.stabn	68,0,22,.LM6-.LFBB1
.LM6:
	jmp	cprintf@PLT
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.stabn	68,0,19,.LM7-.LFBB1
.LM7:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	mon_backtrace@PLT
	jmp	.L3
	.cfi_endproc
.LFE0:
	.size	test_backtrace, .-test_backtrace
.Lscope1:
	.section	.rodata.str1.1
.LC1:
	.string	"6828 decimal is %o octal!\n"
	.text
	.p2align 4
	.stabs	"i386_init:F(0,25)",36,0,0,i386_init
	.globl	i386_init
	.type	i386_init, @function
i386_init:
	.stabn	68,0,27,.LM8-.LFBB2
.LM8:
.LFBB2:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	.stabn	68,0,33,.LM9-.LFBB2
.LM9:
	leaq	edata(%rip), %rdi
	leaq	end(%rip), %rdx
	.stabn	68,0,33,.LM10-.LFBB2
.LM10:
	xorl	%esi, %esi
	.stabn	68,0,33,.LM11-.LFBB2
.LM11:
	subq	%rdi, %rdx
	.stabn	68,0,27,.LM12-.LFBB2
.LM12:
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.stabn	68,0,33,.LM13-.LFBB2
.LM13:
	call	memset@PLT
	.stabn	68,0,37,.LM14-.LFBB2
.LM14:
	call	cons_init@PLT
	.stabn	68,0,39,.LM15-.LFBB2
.LM15:
	movl	$6828, %esi
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
.LBB4:
.LBB5:
	.stabn	68,0,16,.LM16-.LFBB2
.LM16:
	movl	$4, %edi
	call	test_backtrace
	.stabn	68,0,22,.LM17-.LFBB2
.LM17:
	movl	$5, %esi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
	.p2align 4,,10
	.p2align 3
.L7:
.LBE5:
.LBE4:
	.stabn	68,0,46,.LM18-.LFBB2
.LM18:
	xorl	%edi, %edi
	call	monitor@PLT
	jmp	.L7
	.cfi_endproc
.LFE1:
	.size	i386_init, .-i386_init
.Lscope2:
	.section	.rodata.str1.1
.LC2:
	.string	"kernel panic at %s:%d: "
.LC3:
	.string	"\n"
	.text
	.p2align 4
	.stabs	"_panic:F(0,25)",36,0,0,_panic
	.stabs	"file:P(0,26)=*(0,2)",64,0,0,10
	.stabs	"line:P(0,1)",64,0,0,11
	.stabs	"fmt:P(0,26)",64,0,0,6
	.globl	_panic
	.type	_panic, @function
_panic:
	.stabn	68,0,62,.LM19-.LFBB3
.LM19:
.LFBB3:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r10
	movl	%esi, %r11d
	movq	%rdx, %rbp
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L10
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L10:
	.stabn	68,0,62,.LM20-.LFBB3
.LM20:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.stabn	68,0,65,.LM21-.LFBB3
.LM21:
	cmpq	$0, panicstr(%rip)
	je	.L15
	.p2align 4,,10
	.p2align 3
.L12:
	.stabn	68,0,81,.LM22-.LFBB3
.LM22:
	xorl	%edi, %edi
	call	monitor@PLT
	jmp	.L12
.L15:
	.stabn	68,0,67,.LM23-.LFBB3
.LM23:
	movq	%rbp, panicstr(%rip)
	.stabn	68,0,70,.LM24-.LFBB3
.LM24:
#APP
# 70 "kern/init.c" 1
	cli; cld
# 0 "" 2
	.stabn	68,0,72,.LM25-.LFBB3
.LM25:
#NO_APP
	leaq	224(%rsp), %rax
	.stabn	68,0,73,.LM26-.LFBB3
.LM26:
	movq	%r10, %rsi
	movl	%r11d, %edx
	.stabn	68,0,72,.LM27-.LFBB3
.LM27:
	movl	$24, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	.stabn	68,0,73,.LM28-.LFBB3
.LM28:
	leaq	.LC2(%rip), %rdi
	.stabn	68,0,72,.LM29-.LFBB3
.LM29:
	movq	%rax, 16(%rsp)
	.stabn	68,0,73,.LM30-.LFBB3
.LM30:
	xorl	%eax, %eax
	.stabn	68,0,72,.LM31-.LFBB3
.LM31:
	movl	$48, 4(%rsp)
	.stabn	68,0,73,.LM32-.LFBB3
.LM32:
	call	cprintf@PLT
	.stabn	68,0,74,.LM33-.LFBB3
.LM33:
	movq	%rbp, %rdi
	movq	%rsp, %rsi
	call	vcprintf@PLT
	.stabn	68,0,75,.LM34-.LFBB3
.LM34:
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
	jmp	.L12
	.cfi_endproc
.LFE2:
	.size	_panic, .-_panic
	.stabs	"ap:(2,1)",128,0,0,0
	.stabn	192,0,0,.LFBB3-.LFBB3
	.stabn	224,0,0,.Lscope3-.LFBB3
.Lscope3:
	.section	.rodata.str1.1
.LC4:
	.string	"kernel warning at %s:%d: "
	.text
	.p2align 4
	.stabs	"_warn:F(0,25)",36,0,0,_warn
	.stabs	"file:P(0,26)",64,0,0,10
	.stabs	"line:P(0,1)",64,0,0,11
	.stabs	"fmt:P(0,26)",64,0,0,6
	.globl	_warn
	.type	_warn, @function
_warn:
	.stabn	68,0,87,.LM35-.LFBB4
.LM35:
.LFBB4:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r10
	movl	%esi, %r11d
	movq	%rdx, %rbp
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L17
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L17:
	.stabn	68,0,87,.LM36-.LFBB4
.LM36:
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.stabn	68,0,90,.LM37-.LFBB4
.LM37:
	leaq	224(%rsp), %rax
	.stabn	68,0,91,.LM38-.LFBB4
.LM38:
	movq	%r10, %rsi
	movl	%r11d, %edx
	.stabn	68,0,90,.LM39-.LFBB4
.LM39:
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	.stabn	68,0,91,.LM40-.LFBB4
.LM40:
	leaq	.LC4(%rip), %rdi
	.stabn	68,0,90,.LM41-.LFBB4
.LM41:
	movq	%rax, 16(%rsp)
	.stabn	68,0,91,.LM42-.LFBB4
.LM42:
	xorl	%eax, %eax
	.stabn	68,0,90,.LM43-.LFBB4
.LM43:
	movl	$24, (%rsp)
	movl	$48, 4(%rsp)
	.stabn	68,0,91,.LM44-.LFBB4
.LM44:
	call	cprintf@PLT
	.stabn	68,0,92,.LM45-.LFBB4
.LM45:
	movq	%rsp, %rsi
	movq	%rbp, %rdi
	call	vcprintf@PLT
	.stabn	68,0,93,.LM46-.LFBB4
.LM46:
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rdi
	call	cprintf@PLT
	.stabn	68,0,95,.LM47-.LFBB4
.LM47:
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L20
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L20:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3:
	.size	_warn, .-_warn
	.stabs	"ap:(2,1)",128,0,0,0
	.stabn	192,0,0,.LFBB4-.LFBB4
	.stabn	224,0,0,.Lscope4-.LFBB4
.Lscope4:
	.comm	panicstr,8,8
	.stabs	"panicstr:G(0,26)",32,0,0,0
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
