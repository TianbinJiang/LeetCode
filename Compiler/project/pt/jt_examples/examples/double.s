	.data	
	.comm	u,1032
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$5,n
	pushl	u+4
	.data	
s22:	.asciz	"Anything you can say, I can say twice (end with 'bye'):"
	.text	
	lea	s22,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
b1:	movl	$6,n
	incl	n
	pushl	u+0
	lea	u+8,%eax
	pushl	%eax
	call	pttrap107
	addl	$8,%esp
	incl	n
	pushl	u+4
	.data	
s122:	.asciz	" "
	.text	
	lea	s122,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+8,%ebx
	pushl	%ebx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	.data	
s150:	.asciz	"bye"
	.text	
	lea	s150,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	jne	f2
	movl	$10,n
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	jmp	b1
f2:	movl	$12,n
	call	pttrap0
	leave	
	ret	
