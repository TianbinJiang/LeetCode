	.data	
	.comm	u,1032
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$7,n
	movl	$1,u+1028
	incl	n
	.data	
s22:	.asciz	""
	.text	
	lea	s22,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
b1:	movl	$9,n
	cmpl	$50,u+1028
	jg	f2
	movl	$11,n
	.data	
s44:	.asciz	"*"
	.text	
	lea	s44,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+4,%ebx
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
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	pushl	u+0
	lea	u+4,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	incl	u+1028
	jmp	b1
f2:	movl	$15,n
	call	pttrap0
	leave	
	ret	
