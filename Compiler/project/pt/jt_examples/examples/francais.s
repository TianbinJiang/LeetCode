	.data	
	.comm	u,2056
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
b1:	movl	$6,n
	incl	n
	pushl	u+4
	.data	
s25:	.asciz	"Please give me a regular French 'er' verb (end with 'arreter')"
	.text	
	lea	s25,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+0
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap107
	addl	$8,%esp
	movl	$10,n
	pushl	u+4
	.data	
s126:	.asciz	"Thanks, here is the present conjugation"
	.text	
	lea	s126,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$12,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	subl	$2,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$1
	lea	u+1032,%eax
	pushl	%eax
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
	lea	u+8,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	pushl	u+4
	.data	
s208:	.asciz	"The root of this verb is '"
	.text	
	lea	s208,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+8,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s261:	.asciz	"'"
	.text	
	lea	s261,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$15,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	decl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1032,%ebx
	pushl	%ebx
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%eax
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s296:	.asciz	"er"
	.text	
	lea	s296,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f2
	movl	$17,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$1
	pushl	$1
	lea	u+8,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s314:	.asciz	"a"
	.text	
	lea	s314,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	jne	f3
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$1
	pushl	$1
	lea	u+8,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s327:	.asciz	"e"
	.text	
	lea	s327,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	jne	f4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$1
	pushl	$1
	lea	u+8,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s343:	.asciz	"i"
	.text	
	lea	s343,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	jne	f5
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$1
	pushl	$1
	lea	u+8,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s357:	.asciz	"o"
	.text	
	lea	s357,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	jne	f6
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$1
	pushl	$1
	lea	u+8,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s373:	.asciz	"u"
	.text	
	lea	s373,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f7
f6:f5:f4:f3:	movl	$20,n
	pushl	u+4
	.data	
s388:	.asciz	"J'"
	.text	
	lea	s388,%eax
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
	.data	
s396:	.asciz	"e"
	.text	
	lea	s396,%ebx
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
	jmp	f8
f7:	movl	$22,n
	pushl	u+4
	.data	
s417:	.asciz	"Je "
	.text	
	lea	s417,%eax
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
	.data	
s426:	.asciz	"e"
	.text	
	lea	s426,%ebx
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
f8:	movl	$24,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$26,n
	pushl	u+4
	.data	
s455:	.asciz	"Tu "
	.text	
	lea	s455,%eax
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
	.data	
s464:	.asciz	"es"
	.text	
	lea	s464,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s491:	.asciz	"Il ou elle "
	.text	
	lea	s491,%eax
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
	.data	
s508:	.asciz	"e"
	.text	
	lea	s508,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$30,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap105
	addl	$4,%esp
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
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%eax
	lea	u+8,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s550:	.asciz	"g"
	.text	
	lea	s550,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f9
	incl	n
	pushl	u+4
	.data	
s564:	.asciz	"Nous "
	.text	
	lea	s564,%eax
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
	.data	
s575:	.asciz	"eons"
	.text	
	lea	s575,%ebx
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
	jmp	f10
f9:	movl	$33,n
	pushl	u+4
	.data	
s599:	.asciz	"Nous "
	.text	
	lea	s599,%eax
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
	.data	
s610:	.asciz	"ons"
	.text	
	lea	s610,%ebx
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
f10:	movl	$35,n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$37,n
	pushl	u+4
	.data	
s641:	.asciz	"Vous "
	.text	
	lea	s641,%eax
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
	.data	
s652:	.asciz	"ez"
	.text	
	lea	s652,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s679:	.asciz	"Ils ou elles "
	.text	
	lea	s679,%eax
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
	.data	
s698:	.asciz	"ent"
	.text	
	lea	s698,%ebx
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
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f11
f2:	movl	$41,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	decl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+1032,%ebx
	pushl	%ebx
	call	pttrap105
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	pushl	%eax
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap104
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	.data	
s747:	.asciz	"ir"
	.text	
	lea	s747,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	pttrap106
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	cmpb	$0,%al
	je	f12
	incl	n
	pushl	u+4
	.data	
s762:	.asciz	"I'm too tired to do an 'ir' verb"
	.text	
	lea	s762,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f13
f12:	movl	$44,n
	incl	n
	pushl	u+4
	.data	
s822:	.asciz	"I don't like the looks of this verb"
	.text	
	lea	s822,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f13:f11:	.data	
s883:	.asciz	"arreter"
	.text	
	lea	s883,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1032,%eax
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
	jne	f14
	movl	$50,n
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	jmp	b1
f14:	movl	$52,n
	call	pttrap0
	leave	
	ret	
