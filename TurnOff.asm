; x64 Assembly 
; TurnOff by MathInDOS
; Copyright (C) 2018-2020 MathInDOS

	.file	"TurnOff.cpp"
	.text
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
.lcomm _ZStL8__ioinit,1,1
	.def	__main;	.scl	2;	.type	32;	.endef
.LC0:
	.ascii "-h\0"
.LC1:
	.ascii "-help\0"
.LC2:
	.ascii "/?\0"
.LC3:
	.ascii "-?\0"
.LC4:
	.ascii "TurnOff Version-1.0\0"
	.align 8
.LC5:
	.ascii "Copyright (C) 2018-2020 MathInDOS\0"
	.align 8
.LC6:
	.ascii "Build Date: 18 December 2020 (Friday)\0"
	.align 8
.LC7:
	.ascii "Usages: TurnOff [-l | -p | -r | -rapps | -s | -fs | -fsh | -\0"
.LC8:
	.ascii "-l\0"
.LC9:
	.ascii "SeShutdownPrivilege\0"
.LC10:
	.ascii "-p\0"
.LC11:
	.ascii "-r\0"
.LC12:
	.ascii "-rapps\0"
.LC13:
	.ascii "-s\0"
.LC14:
	.ascii "-fs\0"
.LC15:
	.ascii "-fsh\0"
.LC16:
	.ascii "-fph\0"
.LC17:
	.ascii "-flh\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB6296:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L2
	movl	$0, %eax
	jmp	.L33
.L2:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L4
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L4
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	je	.L4
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L5
.L4:
	leaq	.LC4(%rip), %rdx
	movq	.refptr._ZSt4cout(%rip), %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	leaq	.LC7(%rip), %rdx
	movq	%rax, %rcx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movq	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%rip), %rdx
	movq	%rax, %rcx
	call	_ZNSolsEPFRSoS_E
	movl	$0, %eax
	jmp	.L33
.L5:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L6
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L7
	movl	$0, %eax
	jmp	.L33
.L7:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L8
	movl	$0, %eax
	jmp	.L33
.L8:
	movl	$-2147483648, %edx
	movl	$4, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L6:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L9
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L10
	movl	$0, %eax
	jmp	.L33
.L10:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L11
	movl	$0, %eax
	jmp	.L33
.L11:
	movl	$-2147352573, %edx
	movl	$12, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L9:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L12
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L13
	movl	$0, %eax
	jmp	.L33
.L13:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L14
	movl	$0, %eax
	jmp	.L33
.L14:
	movl	$-2147352573, %edx
	movl	$6, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L12:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L15
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L16
	movl	$0, %eax
	jmp	.L33
.L16:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L17
	movl	$0, %eax
	jmp	.L33
.L17:
	movl	$-2147352573, %edx
	movl	$68, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L15:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC13(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L18
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L19
	movl	$0, %eax
	jmp	.L33
.L19:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L20
	movl	$0, %eax
	jmp	.L33
.L20:
	movl	$-2147352573, %edx
	movl	$5, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L18:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC14(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L21
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L22
	movl	$0, %eax
	jmp	.L33
.L22:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L23
	movl	$0, %eax
	jmp	.L33
.L23:
	movl	$-2147352573, %edx
	movl	$5, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L21:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC15(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L25
	movl	$0, %eax
	jmp	.L33
.L25:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L26
	movl	$0, %eax
	jmp	.L33
.L26:
	movl	$-2147352573, %edx
	movl	$17, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L24:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L27
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L28
	movl	$0, %eax
	jmp	.L33
.L28:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L29
	movl	$0, %eax
	jmp	.L33
.L29:
	movl	$-2147352573, %edx
	movl	$24, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L27:
	movq	24(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rax, %rcx
	call	strcmp
	testl	%eax, %eax
	jne	.L30
	movq	__imp_GetCurrentProcess(%rip), %rax
	call	*%rax
	leaq	-8(%rbp), %rdx
	movq	%rdx, %r8
	movl	$40, %edx
	movq	%rax, %rcx
	movq	__imp_OpenProcessToken(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L31
	movl	$0, %eax
	jmp	.L33
.L31:
	leaq	-32(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %r8
	leaq	.LC9(%rip), %rdx
	movl	$0, %ecx
	movq	__imp_LookupPrivilegeValueA(%rip), %rax
	call	*%rax
	movl	$1, -32(%rbp)
	movl	$2, -20(%rbp)
	movq	-8(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	$0, 40(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, %r9d
	movq	%rdx, %r8
	movl	$0, %edx
	movq	%rax, %rcx
	movq	__imp_AdjustTokenPrivileges(%rip), %rax
	call	*%rax
	movq	__imp_GetLastError(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L32
	movl	$0, %eax
	jmp	.L33
.L32:
	movl	$-2147352573, %edx
	movl	$16, %ecx
	movq	__imp_ExitWindowsEx(%rip), %rax
	call	*%rax
	movl	$0, %eax
	jmp	.L33
.L30:
	movl	$0, %eax
.L33:
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
	.seh_proc	__tcf_0
__tcf_0:
.LFB6786:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitD1Ev
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB6785:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	cmpl	$1, 16(%rbp)
	jne	.L37
	cmpl	$65535, 24(%rbp)
	jne	.L37
	leaq	_ZStL8__ioinit(%rip), %rcx
	call	_ZNSt8ios_base4InitC1Ev
	leaq	__tcf_0(%rip), %rcx
	call	atexit
.L37:
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	_GLOBAL__sub_I_main;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_main
_GLOBAL__sub_I_main:
.LFB6787:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.ident	"GCC: (tdm64-1) 9.2.0"
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.def	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEPFRSoS_E;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, "dr"
	.globl	.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.linkonce	discard
.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_:
	.quad	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
