	.data	
	.comm	u,17916
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$1,u+8
	movl	$7,u+12
	movl	$1,u+44
	movl	$7,u+48
	jmp	f1
p38:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1152
	movl	12(%ebp),%eax
	movl	%eax,u+1148
	movl	$39,n
	cmpl	$17,u+1144
	jne	f2
	incl	n
	movl	$19,u+1144
	jmp	f3
f2:	movl	$42,n
	movl	$17,u+1144
f3:	incl	n
	movl	u+1140,%eax
	imull	u+1144,%eax
	movl	$10000,%esi
	movl	%eax,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%eax
	movl	%eax,u+1140
	incl	n
	movl	u+1148,%eax
	movl	u+1152,%ebx
	movl	%ebx,%esi
	movl	u+1140,%ebx
	movl	%ebx,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
f1:	movl	$48,n
	movl	$13277,u+1140
	incl	n
	movl	$17,u+1144
	movl	$1,u+1156
	movl	$52,u+1160
	jmp	f4
p145:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+1380
	movl	$13,u+1384
	movl	$68,n
	movl	$1,u+1444
b5:	movl	$69,n
	incl	n
	movl	u+1444,%eax
	cmpl	$13,%eax
	jle	f6
	cmpl	$1,%eax
	jge	f7
	pushl	n
	call	pttrap13
f7:f6:	decl	%eax
	shl	$2,%eax
	lea	u+1388,%ebx
	addl	%ebx,%eax
	movl	$0,(%eax)
	incl	n
	incl	u+1444
	cmpl	$13,u+1444
	jg	f8
	jmp	b5
f8:	movl	$75,n
	movl	$1,u+1440
b9:	movl	$76,n
	incl	n
	lea	u+1376,%eax
	pushl	%eax
	pushl	$13
	call	p38
	addl	$8,%esp
	movl	$77,n
b10:	movl	$78,n
	movl	u+1376,%eax
	cmpl	$13,%eax
	jle	f11
	cmpl	$1,%eax
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%eax
	shl	$2,%eax
	lea	u+1388,%ebx
	addl	%ebx,%eax
	cmpl	$4,(%eax)
	jne	f13
	movl	$80,n
	lea	u+1376,%eax
	pushl	%eax
	pushl	$13
	call	p38
	addl	$8,%esp
	movl	$80,n
	jmp	b10
f13:	movl	$83,n
	movl	u+1440,%eax
	cmpl	$52,%eax
	jle	f14
	cmpl	$1,%eax
	jge	f15
	pushl	n
	call	pttrap13
f15:f14:	decl	%eax
	shl	$2,%eax
	lea	u+1164,%ebx
	addl	%ebx,%eax
	movl	u+1376,%ebx
	movl	%ebx,(%eax)
	incl	n
	movl	u+1376,%eax
	cmpl	$13,%eax
	jle	f16
	cmpl	$1,%eax
	jge	f17
	pushl	n
	call	pttrap13
f17:f16:	decl	%eax
	shl	$2,%eax
	lea	u+1388,%ebx
	addl	%ebx,%eax
	movl	u+1376,%ebx
	cmpl	$13,%ebx
	jle	f18
	cmpl	$1,%ebx
	jge	f19
	pushl	n
	call	pttrap13
f19:f18:	decl	%ebx
	shl	$2,%ebx
	lea	u+1388,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	movl	$86,n
	incl	u+1440
	cmpl	$52,u+1440
	jg	f20
	jmp	b9
f20:	movl	$90,n
	movl	$0,u+1372
	leave	
	ret	
p347:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1448
	movl	$95,n
	incl	u+1372
	incl	n
	movl	u+1448,%eax
	movl	u+1372,%ebx
	cmpl	$52,%ebx
	jle	f21
	cmpl	$1,%ebx
	jge	f22
	pushl	n
	call	pttrap13
f22:f21:	decl	%ebx
	shl	$2,%ebx
	lea	u+1164,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
p387:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+1452
	movl	$101,n
	movl	u+1452,%eax
	movl	$52,%ebx
	subl	u+1372,%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
f4:	movl	$1,u+1456
	movl	$13,u+1460
	jmp	f23
p428:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+14784
	movl	12(%ebp),%eax
	movl	%eax,u+14780
	movl	16(%ebp),%eax
	movl	%eax,u+14776
	movl	$115,n
	movl	u+14784,%eax
	.data	
s448:	.asciz	""
	.text	
	lea	s448,%ebx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$117,n
	movl	$1,u+14792
b24:	movl	$118,n
	movl	u+14776,%eax
	cmpl	%eax,u+14792
	jg	f25
	movl	$120,n
	movl	u+14784,%eax
	movl	u+14784,%ebx
	.data	
s484:	.asciz	" "
	.text	
	lea	s484,%ecx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%ecx,%edx
	pushl	%edx
	pushl	%ebx
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	movl	u+14780,%ecx
	movl	u+14792,%edx
	cmpl	4(%ecx),%edx
	jle	f26
	cmpl	(%ecx),%edx
	jge	f27
	pushl	n
	call	pttrap13
f27:f26:	subl	(%ecx),%edx
	shl	$2,%edx
	addl	$8,%ecx
	addl	%ecx,%edx
	movl	(%edx),%edx
	cmpl	$13,%edx
	jle	f28
	cmpl	$1,%edx
	jge	f29
	pushl	n
	call	pttrap13
f29:f28:	decl	%edx
	shl	$10,%edx
	lea	u+1464,%ecx
	addl	%ecx,%edx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%edx
	movl	%ebx,%ecx
	pushl	%ecx
	call	pttrap103
	addl	$8,%esp
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
	movl	%ebx,%ecx
	pushl	%ecx
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	incl	u+14792
	jmp	b24
f25:	leave	
	ret	
f23:	movl	$126,n
	.data	
s532:	.asciz	"A"
	.text	
	lea	s532,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1464,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s545:	.asciz	"2"
	.text	
	lea	s545,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2488,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s558:	.asciz	"3"
	.text	
	lea	s558,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3512,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s571:	.asciz	"4"
	.text	
	lea	s571,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4536,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s584:	.asciz	"5"
	.text	
	lea	s584,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+5560,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s597:	.asciz	"6"
	.text	
	lea	s597,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+6584,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s610:	.asciz	"7"
	.text	
	lea	s610,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+7608,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s623:	.asciz	"8"
	.text	
	lea	s623,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8632,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s636:	.asciz	"9"
	.text	
	lea	s636,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+9656,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s649:	.asciz	"10"
	.text	
	lea	s649,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+10680,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s663:	.asciz	"J"
	.text	
	lea	s663,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+11704,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s676:	.asciz	"Q"
	.text	
	lea	s676,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+12728,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s689:	.asciz	"K"
	.text	
	lea	s689,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+13752,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	jmp	f30
p695:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+14796
	movl	$148,n
	movl	$0,u+96
	incl	n
	movl	$0,u+92
	incl	n
	movl	$0,u+88
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s751:	.asciz	"New shuffle."
	.text	
	lea	s751,%eax
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
	incl	n
	pushl	u+4
	.data	
s796:	.asciz	"Enter player name (E.O.Thorp for Thorp, your name for you, q to quit): "
	.text	
	lea	s796,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+110,%eax
	pushl	%eax
	call	pttrap107
	addl	$8,%esp
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	movl	$157,n
	.data	
s904:	.asciz	"q"
	.text	
	lea	s904,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	je	f31
	incl	n
	movl	u+14796,%eax
	movb	$0,(%eax)
	jmp	f32
f31:	movl	$159,n
	movl	$161,n
	.data	
s929:	.asciz	"E.O.Thorp"
	.text	
	lea	s929,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	jne	f33
	incl	n
	pushl	u+4
	.data	
s952:	.asciz	"What does he/she stand on? "
	.text	
	lea	s952,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+1136,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
b34:	movl	$164,n
	cmpl	$0,u+1136
	jle	f35
	cmpl	$20,u+1136
	jle	f36
f35:	movl	$166,n
	pushl	u+4
	.data	
s1040:	.asciz	"(1..20): "
	.text	
	lea	s1040,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+1136,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	call	pttrap4
	addl	$4,%esp
	jmp	b34
f36:f33:	movl	$169,n
	movl	$171,n
	.data	
s1093:	.asciz	"E.O.Thorp"
	.text	
	lea	s1093,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	je	f37
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1124:	.asciz	"E.O.Thorp plays this time."
	.text	
	lea	s1124,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f38
f37:	movl	$174,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1187:	.asciz	"Next player is "
	.text	
	lea	s1187,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+110,%ebx
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
s1208:	.asciz	"."
	.text	
	lea	s1208,%ebx
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
s1234:	.asciz	"He stops at "
	.text	
	lea	s1234,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+1136
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1273:	.asciz	"."
	.text	
	lea	s1273,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$179,n
	movl	$15,%eax
	cmpl	u+1136,%eax
	jle	f39
	incl	n
	pushl	u+4
	.data	
s1309:	.asciz	"(What a hamburger!)"
	.text	
	lea	s1309,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f40
f39:	movl	$181,n
	incl	n
	pushl	u+4
	.data	
s1356:	.asciz	"Good luck, "
	.text	
	lea	s1356,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+110,%ebx
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
s1373:	.asciz	"."
	.text	
	lea	s1373,%ebx
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
f40:f38:	movl	$186,n
	movl	u+14796,%eax
	movb	$1,(%eax)
f32:	leave	
	ret	
p1414:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+14800
	movl	$198,n
	lea	u+14804,%eax
	pushl	%eax
	call	p387
	addl	$4,%esp
	movl	$198,n
	movl	$200,n
	cmpl	$10,u+14804
	jle	f41
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1459:	.asciz	"New game."
	.text	
	lea	s1459,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	incl	u+96
	incl	n
	movl	u+14800,%eax
	movb	$1,(%eax)
	jmp	f42
f41:	movl	$205,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1526:	.asciz	"Too few cards left for another game."
	.text	
	lea	s1526,%eax
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
s1586:	.asciz	"Of "
	.text	
	lea	s1586,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+96
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1616:	.asciz	" games, "
	.text	
	lea	s1616,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s1653:	.asciz	" won "
	.text	
	lea	s1653,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+92
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1685:	.asciz	", dealer won "
	.text	
	lea	s1685,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+88
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s1725:	.asciz	"."
	.text	
	lea	s1725,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$211,n
	movl	u+92,%eax
	cmpl	%eax,u+88
	jle	f43
	incl	n
	pushl	u+4
	.data	
s1762:	.asciz	"House cleans up on "
	.text	
	lea	s1762,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	lea	u+110,%ebx
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
s1787:	.asciz	" this time."
	.text	
	lea	s1787,%ebx
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
	jmp	f44
f43:	movl	$213,n
	movl	u+88,%eax
	cmpl	%eax,u+92
	jle	f45
	incl	n
	.data	
s1835:	.asciz	"E.O.Thorp"
	.text	
	lea	s1835,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	je	f46
	incl	n
	pushl	u+4
	.data	
s1857:	.asciz	"E.O.Thorp does it again."
	.text	
	lea	s1857,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f47
f46:	movl	$216,n
	incl	n
	pushl	u+4
	.data	
s1912:	.asciz	" must have doctored the shuffle."
	.text	
	lea	s1912,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f47:	jmp	f48
f45:	movl	$219,n
	incl	n
	pushl	u+4
	.data	
s1976:	.asciz	"Even shuffle."
	.text	
	lea	s1976,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f48:f44:	movl	$223,n
	movl	u+14800,%eax
	movb	$0,(%eax)
f42:	leave	
	ret	
p2026:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$231,n
	incl	u+84
	incl	n
	movl	u+84,%eax
	cmpl	$7,%eax
	jle	f49
	cmpl	$1,%eax
	jge	f50
	pushl	n
	call	pttrap13
f50:f49:	decl	%eax
	shl	$2,%eax
	lea	u+52,%ebx
	addl	%ebx,%eax
	pushl	%eax
	call	p347
	addl	$4,%esp
	movl	$232,n
	leave	
	ret	
p2062:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$240,n
	incl	u+80
	incl	n
	movl	u+80,%eax
	cmpl	$7,%eax
	jle	f51
	cmpl	$1,%eax
	jge	f52
	pushl	n
	call	pttrap13
f52:f51:	decl	%eax
	shl	$2,%eax
	lea	u+16,%ebx
	addl	%ebx,%eax
	pushl	%eax
	call	p347
	addl	$4,%esp
	movl	$241,n
	leave	
	ret	
p2098:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$251,n
	movb	$0,u+108
	incl	n
	movb	$0,u+109
	incl	n
	movl	$0,u+84
	incl	n
	movl	$0,u+80
	movl	$256,n
	call	p2026
	addl	$0,%esp
	movl	$256,n
	incl	n
	call	p2062
	addl	$0,%esp
	movl	$257,n
	incl	n
	call	p2026
	addl	$0,%esp
	movl	$258,n
	incl	n
	call	p2062
	addl	$0,%esp
	movl	$259,n
	movl	$261,n
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+14808,%eax
	pushl	%eax
	call	p428
	addl	$12,%esp
	movl	$261,n
	incl	n
	pushl	u+4
	.data	
s2180:	.asciz	"The initial deal gives "
	.text	
	lea	s2180,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s2230:	.asciz	" :"
	.text	
	lea	s2230,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+14808,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+14808,%eax
	pushl	%eax
	call	p428
	addl	$12,%esp
	movl	$263,n
	incl	n
	pushl	u+4
	.data	
s2287:	.asciz	"  and the dealer :"
	.text	
	lea	s2287,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+14808,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s2332:	.asciz	"."
	.text	
	lea	s2332,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	leave	
	ret	
p2354:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+15844
	movl	12(%ebp),%eax
	movl	%eax,u+15840
	movl	16(%ebp),%eax
	movl	%eax,u+15836
	movl	20(%ebp),%eax
	movl	%eax,u+15832
	movl	$277,n
	movl	u+15844,%eax
	movl	$0,(%eax)
	incl	n
	movl	$0,u+15848
	movl	$280,n
	movl	$1,u+15852
b53:	movl	$281,n
	movl	u+15832,%eax
	cmpl	%eax,u+15852
	jg	f54
	movl	$284,n
	movl	u+15836,%eax
	movl	u+15852,%ebx
	cmpl	4(%eax),%ebx
	jle	f55
	cmpl	(%eax),%ebx
	jge	f56
	pushl	n
	call	pttrap13
f56:f55:	subl	(%eax),%ebx
	shl	$2,%ebx
	addl	$8,%eax
	addl	%eax,%ebx
	jmp	f57
v2423:	movl	$284,n
	movl	$287,n
	movl	u+15844,%eax
	movl	u+15844,%ebx
	movl	u+15836,%ecx
	movl	u+15852,%edx
	cmpl	4(%ecx),%edx
	jle	f58
	cmpl	(%ecx),%edx
	jge	f59
	pushl	n
	call	pttrap13
f59:f58:	subl	(%ecx),%edx
	shl	$2,%edx
	addl	$8,%ecx
	addl	%ecx,%edx
	movl	(%edx),%edx
	addl	(%ebx),%edx
	movl	%edx,(%eax)
	jmp	m2413
v2448:	movl	$288,n
	movl	$291,n
	movl	u+15844,%eax
	movl	u+15844,%ebx
	movl	$11,%ecx
	addl	(%ebx),%ecx
	movl	%ecx,(%eax)
	incl	n
	incl	u+15848
	jmp	m2413
a2413:b60:	movl	$294,n
	movl	$294,n
	movl	$296,n
	movl	u+15844,%eax
	movl	u+15844,%ebx
	movl	$10,%ecx
	addl	(%ebx),%ecx
	movl	%ecx,(%eax)
	jmp	m2413
f57:	movl	(%ebx),%ebx
	decl	%ebx
	cmpl	$9,%ebx
	ja	b60
	shl	$2,%ebx
	movl	c2413(%ebx),%ebx
	jmp	*%ebx
	.data	
c2413:	.long	v2448
	.long	v2423
	.long	v2423
	.long	v2423
	.long	v2423
	.long	v2423
	.long	v2423
	.long	v2423
	.long	v2423
	.long	v2423
	.text	
m2413:	movl	$297,n
	movl	$300,n
	incl	u+15852
	jmp	b53
f54:b61:	movl	$303,n
	movl	u+15844,%eax
	cmpl	$21,(%eax)
	jle	f62
	cmpl	$0,u+15848
	je	f63
	movl	$305,n
	movl	u+15844,%eax
	movl	u+15844,%ebx
	movl	(%ebx),%ebx
	subl	$10,%ebx
	movl	%ebx,(%eax)
	incl	n
	decl	u+15848
	jmp	b61
f63:f62:	movl	$309,n
	movl	u+15840,%eax
	cmpl	$0,u+15848
	jle	f64
	movb	$1,%bl
	jmp	f65
f64:	movb	$0,%bl
f65:	movb	%bl,(%eax)
	leave	
	ret	
p2601:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$323,n
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+15856,%eax
	pushl	%eax
	lea	u+104,%eax
	pushl	%eax
	call	p2354
	addl	$16,%esp
	movl	$323,n
	movl	$325,n
	cmpl	$21,u+104
	jle	f66
	incl	n
	pushl	u+4
	.data	
s2646:	.asciz	"Dealer goes bust."
	.text	
	lea	s2646,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	movb	$1,u+109
	incl	n
	incl	u+92
	jmp	f67
f66:	movl	$329,n
	cmpl	$21,u+104
	jne	f68
	incl	n
	pushl	u+4
	.data	
s2720:	.asciz	"Dealer calls blackjack."
	.text	
	lea	s2720,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	movb	$1,u+109
	incl	n
	incl	u+88
	jmp	f69
f68:	movl	$333,n
	incl	n
	movl	$17,%eax
	cmpl	u+104,%eax
	jle	f70
	incl	n
	call	p2062
	addl	$0,%esp
	movl	$335,n
	jmp	f71
f70:	movl	$337,n
	movb	$1,u+109
f71:	movl	$339,n
	cmpb	$0,u+109
	je	f72
	incl	n
	pushl	u+4
	.data	
s2826:	.asciz	"Dealer stands with "
	.text	
	lea	s2826,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+104
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s2872:	.asciz	"."
	.text	
	lea	s2872,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$342,n
	movl	u+100,%eax
	cmpl	%eax,u+104
	jle	f73
	incl	n
	pushl	u+4
	.data	
s2909:	.asciz	"House wins."
	.text	
	lea	s2909,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	incl	u+88
	jmp	f74
f73:	movl	$345,n
	movl	u+104,%eax
	cmpl	%eax,u+100
	jle	f75
	incl	n
	pushl	u+4
	.data	
s2973:	.asciz	" wins."
	.text	
	lea	s2973,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	incl	u+92
	jmp	f76
f75:	movl	$348,n
	incl	n
	pushl	u+4
	.data	
s3020:	.asciz	"Tie game."
	.text	
	lea	s3020,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f76:f74:	jmp	f77
f72:	movl	$351,n
	incl	n
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+15857,%eax
	pushl	%eax
	call	p428
	addl	$12,%esp
	movl	$352,n
	incl	n
	pushl	u+4
	.data	
s3078:	.asciz	"Dealer takes a card and now has "
	.text	
	lea	s3078,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+15857,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3137:	.asciz	"."
	.text	
	lea	s3137,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f77:f69:f67:	leave	
	ret	
p3166:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$365,n
	movl	u+100,%eax
	cmpl	%eax,u+1136
	jle	f78
	incl	n
	call	p2026
	addl	$0,%esp
	movl	$366,n
	jmp	f79
f78:	movl	$368,n
	movb	$1,u+108
f79:	leave	
	ret	
p3204:	pushl	%ebp
	movl	%esp, %ebp	
	movb	8(%ebp),%al
	movb	%al,u+16881
	movl	$378,n
	movl	u+16,%eax
	movl	%eax,u+16884
	movl	$380,n
	cmpb	$0,u+16881
	je	f80
	movl	$382,n
	cmpl	$8,u+16884
	jle	f81
	movl	$384,n
	cmpl	$18,u+100
	jle	f82
	movb	$1,%al
	jmp	f83
f82:	movb	$0,%al
f83:	movb	%al,u+108
	jmp	f84
f81:	movl	$387,n
	cmpl	$17,u+100
	jle	f85
	movb	$1,%al
	jmp	f86
f85:	movb	$0,%al
f86:	movb	%al,u+108
f84:	jmp	f87
f80:	movl	$388,n
	movl	$390,n
	cmpl	$1,u+16884
	jle	f88
	movl	$4,%eax
	cmpl	u+16884,%eax
	jle	f89
	movl	$392,n
	cmpl	$12,u+100
	jle	f90
	movb	$1,%al
	jmp	f91
f90:	movb	$0,%al
f91:	movb	%al,u+108
	jmp	f92
f89:f88:	movl	$393,n
	cmpl	$3,u+16884
	jle	f93
	movl	$7,%eax
	cmpl	u+16884,%eax
	jle	f94
	movl	$395,n
	cmpl	$11,u+100
	jle	f95
	movb	$1,%al
	jmp	f96
f95:	movb	$0,%al
f96:	movb	%al,u+108
	jmp	f97
f94:f93:	movl	$398,n
	cmpl	$16,u+100
	jle	f98
	movb	$1,%al
	jmp	f99
f98:	movb	$0,%al
f99:	movb	%al,u+108
f97:f92:f87:	movl	$401,n
	cmpb	$0,u+108
	jne	f100
	incl	n
	call	p2026
	addl	$0,%esp
	movl	$402,n
f100:	movl	$402,n
	leave	
	ret	
p3378:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$414,n
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+16888,%eax
	pushl	%eax
	lea	u+100,%eax
	pushl	%eax
	call	p2354
	addl	$16,%esp
	movl	$414,n
	movl	$416,n
	cmpl	$21,u+100
	jne	f101
	incl	n
	pushl	u+4
	.data	
s3426:	.asciz	" calls blackjack."
	.text	
	lea	s3426,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	movb	$1,u+108
	incl	n
	movb	$1,u+109
	incl	n
	incl	u+92
	jmp	f102
f101:	movl	$421,n
	cmpl	$21,u+100
	jle	f103
	incl	n
	pushl	u+4
	.data	
s3512:	.asciz	" goes bust."
	.text	
	lea	s3512,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	movb	$1,u+108
	incl	n
	movb	$1,u+109
	incl	n
	incl	u+88
	jmp	f104
f103:	movl	$426,n
	incl	n
	.data	
s3578:	.asciz	"E.O.Thorp"
	.text	
	lea	s3578,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+110,%eax
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
	je	f105
	incl	n
	movb	u+16888,%al
	pushl	%eax
	call	p3204
	addl	$4,%esp
	movl	$428,n
	jmp	f106
f105:	movl	$430,n
	call	p3166
	addl	$0,%esp
	movl	$430,n
f106:	movl	$432,n
	cmpb	$0,u+108
	je	f107
	incl	n
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3639:	.asciz	" stands with "
	.text	
	lea	s3639,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	u+100
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+4
	.data	
s3679:	.asciz	"."
	.text	
	lea	s3679,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f108
f107:	movl	$434,n
	incl	n
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+16889,%eax
	pushl	%eax
	call	p428
	addl	$12,%esp
	movl	$435,n
	incl	n
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3739:	.asciz	" takes a card and now has "
	.text	
	lea	s3739,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	lea	u+16889,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3792:	.asciz	"."
	.text	
	lea	s3792,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f108:f104:f102:	leave	
	ret	
f30:	movl	$450,n
	pushl	u+4
	.data	
s3827:	.asciz	"This program simulates the game of blackjack."
	.text	
	lea	s3827,%eax
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
	incl	n
	pushl	u+4
	.data	
s3905:	.asciz	"The dealer plays the compulsory strategy of standing on 17 or better."
	.text	
	lea	s3905,%eax
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
	incl	n
	pushl	u+4
	.data	
s4007:	.asciz	"The player plays either"
	.text	
	lea	s4007,%eax
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
s4054:	.asciz	"  [1] The standard naive strategy of standing on n or better, or"
	.text	
	lea	s4054,%eax
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
s4142:	.asciz	"  [2] A simplified version of the strategy described by  E.O.Thorp"
	.text	
	lea	s4142,%eax
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
s4232:	.asciz	"      in his book 'Beat the Dealer' (Vintage Books, 1966) pp. 20-21."
	.text	
	lea	s4232,%eax
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
	incl	n
	pushl	u+4
	.data	
s4333:	.asciz	"Input :"
	.text	
	lea	s4333,%eax
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
s4364:	.asciz	"  For each shuffle, a player name (character string of <= 20 characters),"
	.text	
	lea	s4364,%eax
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
s4461:	.asciz	"  and if (the player name specified is not 'E.O.Thorp', the count [n]"
	.text	
	lea	s4461,%eax
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
s4554:	.asciz	"  on which the player stands."
	.text	
	lea	s4554,%eax
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
	incl	n
	pushl	u+4
	.data	
s4616:	.asciz	"If the player name specified is 'E.O.Thorp', the player strategy used"
	.text	
	lea	s4616,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s4698:	.asciz	" will be Thorp's."
	.text	
	lea	s4698,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s4741:	.asciz	"Otherwise, the player will use the standard stop on count > n strategy."
	.text	
	lea	s4741,%eax
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
	incl	n
	pushl	u+4
	.data	
s4845:	.asciz	"The program will simulate one complete shuffle of play for each player."
	.text	
	lea	s4845,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$471,n
	lea	u+17913,%eax
	pushl	%eax
	call	p695
	addl	$4,%esp
	movl	$471,n
b109:	movl	$473,n
	cmpb	$0,u+17913
	je	f110
	movl	$476,n
	call	p145
	addl	$0,%esp
	movl	$476,n
	incl	n
	lea	u+17913,%eax
	pushl	%eax
	call	p1414
	addl	$4,%esp
	movl	$477,n
b111:	movl	$479,n
	cmpb	$0,u+17913
	je	f112
	movl	$482,n
	call	p2098
	addl	$0,%esp
	movl	$482,n
b113:	movl	$484,n
	cmpb	$0,u+108
	jne	f114
	movl	$486,n
	call	p3378
	addl	$0,%esp
	movl	$486,n
	jmp	b113
f114:b115:	movl	$489,n
	cmpb	$0,u+109
	jne	f116
	movl	$491,n
	call	p2601
	addl	$0,%esp
	movl	$491,n
	jmp	b115
f116:	movl	$494,n
	lea	u+17913,%eax
	pushl	%eax
	call	p1414
	addl	$4,%esp
	movl	$494,n
	jmp	b111
f112:	movl	$497,n
	lea	u+17913,%eax
	pushl	%eax
	call	p695
	addl	$4,%esp
	movl	$497,n
	jmp	b109
f110:	movl	$500,n
	call	pttrap0
	leave	
	ret	
