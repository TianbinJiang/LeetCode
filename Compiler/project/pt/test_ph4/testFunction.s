	.data	
	.comm	u,3092
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	jmp	f1
p11:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+4
	movl	$4,n
	movl	u+4,%eax
	.data	
s26:	.asciz	"2"
	.text	
	lea	s26,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
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
	lea	u+8,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	lea	u+8,%eax
	movl	%eax,%eax
	leave	
	ret	
p40:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1032
	movl	$10,n
	movl	u+1032,%eax
	incl	%eax
	movl	%eax,u+1036
	movl	u+1036,%eax
	incl	%eax
	movl	%eax,%eax
	leave	
	ret	
f1:	movl	$19,n
	.data	
s73:	.asciz	"test"
	.text	
	lea	s73,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1040,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$21,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1040,%eax
	pushl	%eax
	call	p11
	addl	$4,%esp
	movl	$21,n
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
	lea	u+2064,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	pushl	u+0
	lea	u+2064,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$25,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$1
	call	p40
	addl	$4,%esp
	movl	$25,n
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	%eax,u+3088
	incl	n
	pushl	u+0
	pushl	u+3088
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
