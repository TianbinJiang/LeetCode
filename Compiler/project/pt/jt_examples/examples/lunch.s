	.data	
	.comm	u,16412
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$1,u+4
	movl	$8,u+8
	movl	$1,u+8204
	movl	$8,u+8208
	movl	$11,n
	.data	
s42:	.asciz	"fly"
	.text	
	lea	s42,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+12,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s57:	.asciz	"spider"
	.text	
	lea	s57,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1036,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s75:	.asciz	"bird"
	.text	
	lea	s75,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2060,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s91:	.asciz	"cat"
	.text	
	lea	s91,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3084,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s106:	.asciz	"dog"
	.text	
	lea	s106,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4108,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s121:	.asciz	"goat"
	.text	
	lea	s121,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+5132,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s137:	.asciz	"cow"
	.text	
	lea	s137,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+6156,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s152:	.asciz	"horse"
	.text	
	lea	s152,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+7180,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$21,n
	.data	
s169:	.asciz	"I don't know why she swallowed a fly."
	.text	
	lea	s169,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8212,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s218:	.asciz	"That wiggled and jiggled and tickled inside her."
	.text	
	lea	s218,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+9236,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s278:	.asciz	"How absurd, to swallow a bird."
	.text	
	lea	s278,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+10260,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s320:	.asciz	"Imagine that, she swallowed a cat."
	.text	
	lea	s320,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+11284,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s366:	.asciz	"What a hog, to swallow a dog."
	.text	
	lea	s366,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+12308,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s407:	.asciz	"What a dope, to swallow a goat."
	.text	
	lea	s407,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+13332,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s450:	.asciz	"I don't know how she swallowed that cow."
	.text	
	lea	s450,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+14356,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s502:	.asciz	"She died of course."
	.text	
	lea	s502,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+15380,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$31,n
	pushl	u+0
	.data	
s532:	.asciz	"I Know an Old Lady"
	.text	
	lea	s532,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$34,n
	movl	$1,u+16408
b1:	movl	$36,n
	cmpl	$9,u+16408
	je	f2
	movl	$38,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	.data	
s605:	.asciz	"I know an old lady"
	.text	
	lea	s605,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	.data	
s647:	.asciz	"Who swallowed a "
	.text	
	lea	s647,%eax
	movl	u+16408,%ebx
	cmpl	$8,%ebx
	jle	f3
	cmpl	$1,%ebx
	jge	f4
	pushl	n
	call	pttrap13
f4:f3:	decl	%ebx
	shl	$10,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
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
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	movl	u+16408,%eax
	cmpl	$8,%eax
	jle	f5
	cmpl	$1,%eax
	jge	f6
	pushl	n
	call	pttrap13
f6:f5:	decl	%eax
	shl	$10,%eax
	lea	u+8212,%ebx
	addl	%ebx,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$43,n
	movl	u+16408,%eax
	movl	%eax,u+16404
b7:	movl	$44,n
	movl	$2,%eax
	cmpl	u+16404,%eax
	jg	f8
	movl	$46,n
	pushl	u+0
	.data	
s749:	.asciz	"She swallowed the "
	.text	
	lea	s749,%eax
	movl	u+16404,%ebx
	cmpl	$8,%ebx
	jle	f9
	cmpl	$1,%ebx
	jge	f10
	pushl	n
	call	pttrap13
f10:f9:	decl	%ebx
	shl	$10,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
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
	incl	n
	pushl	u+0
	.data	
s793:	.asciz	" to catch the "
	.text	
	lea	s793,%eax
	movl	u+16404,%ebx
	decl	%ebx
	cmpl	$8,%ebx
	jle	f11
	cmpl	$1,%ebx
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%ebx
	shl	$10,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
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
	.data	
s821:	.asciz	","
	.text	
	lea	s821,%ebx
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
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	decl	u+16404
	jmp	b7
f8:	movl	$51,n
	cmpl	$1,u+16408
	jle	f13
	incl	n
	pushl	u+0
	lea	u+8212,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
f13:	movl	$53,n
	movl	$55,n
	movl	$8,%eax
	cmpl	u+16408,%eax
	jle	f14
	incl	n
	pushl	u+0
	.data	
s917:	.asciz	"Perhaps she'll die."
	.text	
	lea	s917,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
f14:	movl	$57,n
	movl	$59,n
	incl	u+16408
	jmp	b1
f2:	movl	$63,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	.data	
s988:	.asciz	"The end."
	.text	
	lea	s988,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	.data	
s1022:	.asciz	"Thank you very much, you're too kind."
	.text	
	lea	s1022,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	.data	
s1085:	.asciz	"I'll be here until Thursday - try the veal!"
	.text	
	lea	s1085,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
