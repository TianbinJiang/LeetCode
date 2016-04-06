	.data	
	.comm	u,3086
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$10,n
	.data	
s14:	.asciz	"Hello "
	.text	
	lea	s14,%eax
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
	.data	
s28:	.asciz	"World"
	.text	
	lea	s28,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1028,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$13,n
	lea	u+4,%eax
	lea	u+1028,%ebx
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
	lea	u+2052,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	pushl	u+0
	.data	
s57:	.asciz	"concatenate them: "
	.text	
	lea	s57,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	lea	u+2052,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$17,n
	lea	u+4,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$4
	pushl	$2
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap104
	addl	$12,%esp
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
	lea	u+2052,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	pushl	u+0
	.data	
s129:	.asciz	"Then (substring): "
	.text	
	lea	s129,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	lea	u+2052,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$22,n
	lea	u+2052,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	%eax,u+3076
	incl	n
	pushl	u+0
	.data	
s197:	.asciz	"Then length is: "
	.text	
	lea	s197,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	pushl	u+3076
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$26,n
	.data	
s248:	.asciz	"a"
	.text	
	lea	s248,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpl	$1,%eax
	jne	f1
	incl	n
	pushl	u+0
	.data	
s265:	.asciz	"The length is 1"
	.text	
	lea	s265,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	f2
f1:	movl	$29,n
	pushl	u+0
	.data	
s299:	.asciz	"The length is not 1"
	.text	
	lea	s299,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
f2:	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$32,n
	lea	u+2052,%eax
	lea	u+2052,%ebx
	cmpl	%ebx,%eax
	jne	f3
	incl	n
	pushl	u+0
	.data	
s357:	.asciz	"The strings are Equal!"
	.text	
	lea	s357,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	f4
f3:	movl	$35,n
	pushl	u+0
	.data	
s398:	.asciz	"Then strings are NOT Equal."
	.text	
	lea	s398,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
f4:	movl	$37,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
