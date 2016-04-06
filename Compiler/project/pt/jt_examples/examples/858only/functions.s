	.data	
	.comm	u,4
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	jmp	f1
p11:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$42,%eax
	leave	
	ret	
p22:	pushl	%ebp
	movl	%esp, %ebp	
	.data	
s28:	.asciz	"forty-two"
	.text	
	lea	s28,%eax
	movl	%eax,%eax
	leave	
	ret	
p42:	pushl	%ebp
	movl	%esp, %ebp	
	movb	$0,%al
	leave	
	ret	
f1:	movl	$15,n
	pushl	u+0
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p11
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$15,n
	pushl	%eax
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$17,n
	pushl	u+0
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p22
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$17,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$19,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p42
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$19,n
	cmpl	$0,%eax
	jne	f2
	incl	n
	pushl	u+0
	pushl	$42
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	jmp	f3
f2:	movl	$22,n
	pushl	u+0
	.data	
s137:	.asciz	"ERROR"
	.text	
	lea	s137,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
f3:	movl	$24,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
