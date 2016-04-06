	.data	
	.comm	u,15842
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
	movl	%eax,u+1148
	movl	$37,n
	cmpl	$17,u+1144
	jne	f2
	incl	n
	movl	$19,u+1144
	jmp	f3
f2:	movl	$40,n
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
	movl	u+1148,%eax
	movl	%eax,%esi
	movl	u+1140,%eax
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
	incl	%eax
	movl	%eax,%eax
	leave	
	ret	
f1:	movl	$46,n
	movl	$13277,u+1140
	incl	n
	movl	$17,u+1144
	movl	$1,u+1152
	movl	$52,u+1156
	jmp	f4
p134:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+1376
	movl	$13,u+1380
	movl	$65,n
	movl	$1,u+1440
b5:	movl	$66,n
	incl	n
	movl	u+1440,%eax
	cmpl	$13,%eax
	jle	f6
	cmpl	$1,%eax
	jge	f7
	pushl	n
	call	pttrap13
f7:f6:	decl	%eax
	shl	$2,%eax
	lea	u+1384,%ebx
	addl	%ebx,%eax
	movl	$0,(%eax)
	incl	n
	incl	u+1440
	cmpl	$13,u+1440
	jg	f8
	jmp	b5
f8:	movl	$72,n
	movl	$1,u+1436
b9:	movl	$73,n
	incl	n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$13
	call	p38
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$74,n
	movl	%eax,u+1372
b10:	movl	$75,n
	movl	u+1372,%eax
	cmpl	$13,%eax
	jle	f11
	cmpl	$1,%eax
	jge	f12
	pushl	n
	call	pttrap13
f12:f11:	decl	%eax
	shl	$2,%eax
	lea	u+1384,%ebx
	addl	%ebx,%eax
	cmpl	$4,(%eax)
	jne	f13
	movl	$77,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	$13
	call	p38
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$77,n
	movl	%eax,u+1372
	jmp	b10
f13:	movl	$80,n
	movl	u+1436,%eax
	cmpl	$52,%eax
	jle	f14
	cmpl	$1,%eax
	jge	f15
	pushl	n
	call	pttrap13
f15:f14:	decl	%eax
	shl	$2,%eax
	lea	u+1160,%ebx
	addl	%ebx,%eax
	movl	u+1372,%ebx
	movl	%ebx,(%eax)
	incl	n
	movl	u+1372,%eax
	cmpl	$13,%eax
	jle	f16
	cmpl	$1,%eax
	jge	f17
	pushl	n
	call	pttrap13
f17:f16:	decl	%eax
	shl	$2,%eax
	lea	u+1384,%ebx
	addl	%ebx,%eax
	movl	u+1372,%ebx
	cmpl	$13,%ebx
	jle	f18
	cmpl	$1,%ebx
	jge	f19
	pushl	n
	call	pttrap13
f19:f18:	decl	%ebx
	shl	$2,%ebx
	lea	u+1384,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	incl	%ebx
	movl	%ebx,(%eax)
	movl	$83,n
	incl	u+1436
	cmpl	$52,u+1436
	jg	f20
	jmp	b9
f20:	movl	$87,n
	movl	$0,u+1368
	leave	
	ret	
p334:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$91,n
	incl	u+1368
	movl	u+1368,%eax
	cmpl	$52,%eax
	jle	f21
	cmpl	$1,%eax
	jge	f22
	pushl	n
	call	pttrap13
f22:f21:	decl	%eax
	shl	$2,%eax
	lea	u+1160,%ebx
	addl	%ebx,%eax
	movl	(%eax),%eax
	movl	%eax,%eax
	leave	
	ret	
p363:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$52,%eax
	subl	u+1368,%eax
	incl	%eax
	movl	%eax,%eax
	leave	
	ret	
f4:	movl	$1,u+1444
	movl	$13,u+1448
	jmp	f23
p393:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+14768
	movl	12(%ebp),%eax
	movl	%eax,u+14764
	movl	$110,n
	.data	
s407:	.asciz	""
	.text	
	lea	s407,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+14780,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	$112,n
	movl	$1,u+14776
b24:	movl	$113,n
	movl	u+14764,%eax
	cmpl	%eax,u+14776
	jg	f25
	movl	$115,n
	.data	
s441:	.asciz	" "
	.text	
	lea	s441,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+14780,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	u+14768,%ebx
	movl	u+14776,%ecx
	cmpl	4(%ebx),%ecx
	jle	f26
	cmpl	(%ebx),%ecx
	jge	f27
	pushl	n
	call	pttrap13
f27:f26:	subl	(%ebx),%ecx
	shl	$2,%ecx
	addl	$8,%ebx
	addl	%ebx,%ecx
	movl	(%ecx),%ecx
	cmpl	$13,%ecx
	jle	f28
	cmpl	$1,%ecx
	jge	f29
	pushl	n
	call	pttrap13
f29:f28:	decl	%ecx
	shl	$10,%ecx
	lea	u+1452,%ebx
	addl	%ebx,%ecx
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
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
	lea	u+14780,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	incl	u+14776
	jmp	b24
f25:	lea	u+14780,%eax
	movl	%eax,%eax
	leave	
	ret	
f23:	movl	$123,n
	.data	
s493:	.asciz	"A"
	.text	
	lea	s493,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1452,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s506:	.asciz	"2"
	.text	
	lea	s506,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2476,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s519:	.asciz	"3"
	.text	
	lea	s519,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+3500,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s532:	.asciz	"4"
	.text	
	lea	s532,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+4524,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s545:	.asciz	"5"
	.text	
	lea	s545,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+5548,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s558:	.asciz	"6"
	.text	
	lea	s558,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+6572,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s571:	.asciz	"7"
	.text	
	lea	s571,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+7596,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s584:	.asciz	"8"
	.text	
	lea	s584,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8620,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s597:	.asciz	"9"
	.text	
	lea	s597,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+9644,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s610:	.asciz	"10"
	.text	
	lea	s610,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+10668,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s624:	.asciz	"J"
	.text	
	lea	s624,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+11692,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s637:	.asciz	"Q"
	.text	
	lea	s637,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+12716,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s650:	.asciz	"K"
	.text	
	lea	s650,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+13740,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	jmp	f30
p656:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$146,n
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
s707:	.asciz	"New shuffle."
	.text	
	lea	s707,%eax
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
s752:	.asciz	"Enter player name (E.O.Thorp for Thorp, your name for you, q to quit): "
	.text	
	lea	s752,%eax
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
	movl	$155,n
	.data	
s860:	.asciz	"q"
	.text	
	lea	s860,%eax
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
	movb	$0,u+15804
	jmp	f32
f31:	movl	$157,n
	movl	$159,n
	.data	
s884:	.asciz	"E.O.Thorp"
	.text	
	lea	s884,%eax
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
s907:	.asciz	"What does he/she stand on? "
	.text	
	lea	s907,%eax
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
b34:	movl	$162,n
	cmpl	$0,u+1136
	jle	f35
	cmpl	$20,u+1136
	jle	f36
f35:	movl	$164,n
	pushl	u+4
	.data	
s995:	.asciz	"(1..20): "
	.text	
	lea	s995,%eax
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
f36:f33:	movl	$167,n
	movl	$169,n
	.data	
s1048:	.asciz	"E.O.Thorp"
	.text	
	lea	s1048,%eax
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
s1079:	.asciz	"E.O.Thorp plays this time."
	.text	
	lea	s1079,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f38
f37:	movl	$172,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1142:	.asciz	"Next player is "
	.text	
	lea	s1142,%eax
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
s1163:	.asciz	"."
	.text	
	lea	s1163,%ebx
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
s1189:	.asciz	"He stops at "
	.text	
	lea	s1189,%eax
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
s1228:	.asciz	"."
	.text	
	lea	s1228,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$177,n
	movl	$15,%eax
	cmpl	u+1136,%eax
	jle	f39
	incl	n
	pushl	u+4
	.data	
s1264:	.asciz	"(What a hamburger!)"
	.text	
	lea	s1264,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f40
f39:	movl	$179,n
	incl	n
	pushl	u+4
	.data	
s1311:	.asciz	"Good luck, "
	.text	
	lea	s1311,%eax
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
s1328:	.asciz	"."
	.text	
	lea	s1328,%ebx
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
f40:f38:	movl	$184,n
	movb	$1,u+15804
f32:	movb	u+15804,%al
	movb	%al,%al
	leave	
	ret	
p1372:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$198,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p363
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$198,n
	cmpl	$10,%eax
	jle	f41
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1403:	.asciz	"New game."
	.text	
	lea	s1403,%eax
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
	movb	$1,u+15805
	jmp	f42
f41:	movl	$203,n
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	pushl	u+4
	.data	
s1469:	.asciz	"Too few cards left for another game."
	.text	
	lea	s1469,%eax
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
s1529:	.asciz	"Of "
	.text	
	lea	s1529,%eax
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
s1559:	.asciz	" games, "
	.text	
	lea	s1559,%eax
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
s1596:	.asciz	" won "
	.text	
	lea	s1596,%eax
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
s1628:	.asciz	", dealer won "
	.text	
	lea	s1628,%eax
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
s1668:	.asciz	"."
	.text	
	lea	s1668,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$209,n
	movl	u+92,%eax
	cmpl	%eax,u+88
	jle	f43
	incl	n
	pushl	u+4
	.data	
s1705:	.asciz	"House cleans up on "
	.text	
	lea	s1705,%eax
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
s1730:	.asciz	" this time."
	.text	
	lea	s1730,%ebx
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
f43:	movl	$211,n
	movl	u+88,%eax
	cmpl	%eax,u+92
	jle	f45
	incl	n
	.data	
s1778:	.asciz	"E.O.Thorp"
	.text	
	lea	s1778,%eax
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
s1800:	.asciz	"E.O.Thorp does it again."
	.text	
	lea	s1800,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f47
f46:	movl	$214,n
	incl	n
	pushl	u+4
	.data	
s1855:	.asciz	" must have doctored the shuffle."
	.text	
	lea	s1855,%eax
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
f45:	movl	$217,n
	incl	n
	pushl	u+4
	.data	
s1919:	.asciz	"Even shuffle."
	.text	
	lea	s1919,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f48:f44:	movl	$221,n
	movb	$0,u+15805
f42:	movb	u+15805,%al
	movb	%al,%al
	leave	
	ret	
p1972:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$230,n
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
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p334
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	movl	$231,n
	movl	%ebx,(%eax)
	leave	
	ret	
p2006:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$238,n
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
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p334
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%ebx
	movl	$239,n
	movl	%ebx,(%eax)
	leave	
	ret	
p2040:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$246,n
	movb	$0,u+108
	incl	n
	movb	$0,u+109
	incl	n
	movl	$0,u+84
	incl	n
	movl	$0,u+80
	movl	$251,n
	call	p1972
	addl	$0,%esp
	movl	$251,n
	incl	n
	call	p2006
	addl	$0,%esp
	movl	$252,n
	incl	n
	call	p1972
	addl	$0,%esp
	movl	$253,n
	incl	n
	call	p2006
	addl	$0,%esp
	movl	$254,n
	movl	$256,n
	pushl	u+4
	.data	
s2103:	.asciz	"The initial deal gives "
	.text	
	lea	s2103,%eax
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
s2153:	.asciz	" :"
	.text	
	lea	s2153,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	call	p393
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$256,n
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
s2201:	.asciz	"  and the dealer :"
	.text	
	lea	s2201,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	call	p393
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$257,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s2254:	.asciz	"."
	.text	
	lea	s2254,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	leave	
	ret	
p2276:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+15816
	movl	12(%ebp),%eax
	movl	%eax,u+15812
	movl	16(%ebp),%eax
	movl	%eax,u+15808
	movl	$269,n
	movl	$0,u+15824
	incl	n
	movl	$0,u+15820
	movl	$272,n
	movl	$1,u+15828
b53:	movl	$273,n
	movl	u+15808,%eax
	cmpl	%eax,u+15828
	jg	f54
	movl	$276,n
	movl	u+15812,%eax
	movl	u+15828,%ebx
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
v2341:	movl	$276,n
	movl	$279,n
	movl	u+15812,%eax
	movl	u+15828,%ebx
	cmpl	4(%eax),%ebx
	jle	f58
	cmpl	(%eax),%ebx
	jge	f59
	pushl	n
	call	pttrap13
f59:f58:	subl	(%eax),%ebx
	shl	$2,%ebx
	addl	$8,%eax
	addl	%eax,%ebx
	movl	(%ebx),%ebx
	addl	%ebx,u+15824
	jmp	m2331
v2364:	movl	$280,n
	movl	$283,n
	movl	$11,%eax
	addl	%eax,u+15824
	incl	n
	incl	u+15820
	jmp	m2331
a2331:b60:	movl	$286,n
	movl	$286,n
	movl	$288,n
	movl	$10,%eax
	addl	%eax,u+15824
	jmp	m2331
f57:	movl	(%ebx),%ebx
	decl	%ebx
	cmpl	$9,%ebx
	ja	b60
	shl	$2,%ebx
	movl	c2331(%ebx),%ebx
	jmp	*%ebx
	.data	
c2331:	.long	v2364
	.long	v2341
	.long	v2341
	.long	v2341
	.long	v2341
	.long	v2341
	.long	v2341
	.long	v2341
	.long	v2341
	.long	v2341
	.text	
m2331:	movl	$289,n
	movl	$292,n
	incl	u+15828
	jmp	b53
f54:b61:	movl	$295,n
	cmpl	$21,u+15824
	jle	f62
	cmpl	$0,u+15820
	je	f63
	movl	$297,n
	movl	$10,%eax
	subl	%eax,u+15824
	incl	n
	decl	u+15820
	jmp	b61
f63:f62:	movl	$301,n
	movl	u+15816,%eax
	cmpl	$0,u+15820
	jle	f64
	movb	$1,%bl
	jmp	f65
f64:	movb	$0,%bl
f65:	movb	%bl,(%eax)
	movl	u+15824,%eax
	movl	%eax,%eax
	leave	
	ret	
p2514:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$315,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	lea	u+15832,%eax
	pushl	%eax
	call	p2276
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$315,n
	movl	%eax,u+104
	movl	$317,n
	cmpl	$21,u+104
	jle	f66
	incl	n
	pushl	u+4
	.data	
s2557:	.asciz	"Dealer goes bust."
	.text	
	lea	s2557,%eax
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
f66:	movl	$321,n
	cmpl	$21,u+104
	jne	f68
	incl	n
	pushl	u+4
	.data	
s2631:	.asciz	"Dealer calls blackjack."
	.text	
	lea	s2631,%eax
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
f68:	movl	$325,n
	incl	n
	movl	$17,%eax
	cmpl	u+104,%eax
	jle	f70
	incl	n
	call	p2006
	addl	$0,%esp
	movl	$327,n
	jmp	f71
f70:	movl	$329,n
	movb	$1,u+109
f71:	movl	$331,n
	cmpb	$0,u+109
	je	f72
	incl	n
	pushl	u+4
	.data	
s2737:	.asciz	"Dealer stands with "
	.text	
	lea	s2737,%eax
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
s2783:	.asciz	"."
	.text	
	lea	s2783,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$334,n
	movl	u+100,%eax
	cmpl	%eax,u+104
	jle	f73
	incl	n
	pushl	u+4
	.data	
s2820:	.asciz	"House wins."
	.text	
	lea	s2820,%eax
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
f73:	movl	$337,n
	movl	u+104,%eax
	cmpl	%eax,u+100
	jle	f75
	incl	n
	pushl	u+4
	.data	
s2884:	.asciz	" wins."
	.text	
	lea	s2884,%eax
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
f75:	movl	$340,n
	incl	n
	pushl	u+4
	.data	
s2931:	.asciz	"Tie game."
	.text	
	lea	s2931,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f76:f74:	jmp	f77
f72:	movl	$343,n
	incl	n
	pushl	u+4
	.data	
s2972:	.asciz	"Dealer takes a card and now has "
	.text	
	lea	s2972,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+80
	lea	u+8,%eax
	pushl	%eax
	call	p393
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$344,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3039:	.asciz	"."
	.text	
	lea	s3039,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f77:f69:f67:	leave	
	ret	
p3068:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$355,n
	movl	u+100,%eax
	cmpl	%eax,u+1136
	jle	f78
	incl	n
	call	p1972
	addl	$0,%esp
	movl	$356,n
	jmp	f79
f78:	movl	$358,n
	movb	$1,u+108
f79:	leave	
	ret	
p3104:	pushl	%ebp
	movl	%esp, %ebp	
	movb	8(%ebp),%al
	movb	%al,u+15833
	movl	$367,n
	movl	u+16,%eax
	movl	%eax,u+15836
	movl	$369,n
	cmpb	$0,u+15833
	je	f80
	movl	$371,n
	cmpl	$8,u+15836
	jle	f81
	movl	$373,n
	cmpl	$18,u+100
	jle	f82
	movb	$1,%al
	jmp	f83
f82:	movb	$0,%al
f83:	movb	%al,u+108
	jmp	f84
f81:	movl	$376,n
	cmpl	$17,u+100
	jle	f85
	movb	$1,%al
	jmp	f86
f85:	movb	$0,%al
f86:	movb	%al,u+108
f84:	jmp	f87
f80:	movl	$379,n
	cmpl	$1,u+15836
	jle	f88
	movl	$4,%eax
	cmpl	u+15836,%eax
	jle	f89
	movl	$381,n
	cmpl	$12,u+100
	jle	f90
	movb	$1,%al
	jmp	f91
f90:	movb	$0,%al
f91:	movb	%al,u+108
	jmp	f92
f89:f88:	movl	$382,n
	cmpl	$3,u+15836
	jle	f93
	movl	$7,%eax
	cmpl	u+15836,%eax
	jle	f94
	movl	$384,n
	cmpl	$11,u+100
	jle	f95
	movb	$1,%al
	jmp	f96
f95:	movb	$0,%al
f96:	movb	%al,u+108
	jmp	f97
f94:f93:	movl	$387,n
	cmpl	$16,u+100
	jle	f98
	movb	$1,%al
	jmp	f99
f98:	movb	$0,%al
f99:	movb	%al,u+108
f97:f92:f87:	movl	$389,n
	cmpb	$0,u+108
	jne	f100
	incl	n
	call	p1972
	addl	$0,%esp
	movl	$390,n
f100:	movl	$390,n
	leave	
	ret	
p3272:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$400,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	lea	u+15840,%eax
	pushl	%eax
	call	p2276
	addl	$12,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$400,n
	movl	%eax,u+100
	movl	$402,n
	cmpl	$21,u+100
	jne	f101
	incl	n
	pushl	u+4
	.data	
s3318:	.asciz	" calls blackjack."
	.text	
	lea	s3318,%eax
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
f101:	movl	$407,n
	cmpl	$21,u+100
	jle	f103
	incl	n
	pushl	u+4
	.data	
s3404:	.asciz	" goes bust."
	.text	
	lea	s3404,%eax
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
f103:	movl	$412,n
	incl	n
	.data	
s3470:	.asciz	"E.O.Thorp"
	.text	
	lea	s3470,%eax
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
	movb	u+15840,%al
	pushl	%eax
	call	p3104
	addl	$4,%esp
	movl	$414,n
	jmp	f106
f105:	movl	$416,n
	call	p3068
	addl	$0,%esp
	movl	$416,n
f106:	movl	$418,n
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
s3531:	.asciz	" stands with "
	.text	
	lea	s3531,%eax
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
s3571:	.asciz	"."
	.text	
	lea	s3571,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	jmp	f108
f107:	movl	$420,n
	incl	n
	pushl	u+4
	lea	u+110,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3614:	.asciz	" takes a card and now has "
	.text	
	lea	s3614,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+84
	lea	u+44,%eax
	pushl	%eax
	call	p393
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$421,n
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s3675:	.asciz	"."
	.text	
	lea	s3675,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
f108:f104:f102:	leave	
	ret	
f30:	movl	$432,n
	pushl	u+4
	.data	
s3710:	.asciz	"This program simulates the game of blackjack."
	.text	
	lea	s3710,%eax
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
s3788:	.asciz	"The dealer plays the compulsory strategy of standing on 17 or better."
	.text	
	lea	s3788,%eax
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
s3890:	.asciz	"The player plays either"
	.text	
	lea	s3890,%eax
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
s3937:	.asciz	"  [1] The standard naive strategy of standing on n or better, or"
	.text	
	lea	s3937,%eax
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
s4025:	.asciz	"  [2] A simplified version of the strategy described by  E.O.Thorp"
	.text	
	lea	s4025,%eax
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
s4115:	.asciz	"      in his book 'Beat the Dealer' (Vintage Books, 1966) pp. 20-21."
	.text	
	lea	s4115,%eax
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
s4216:	.asciz	"Input :"
	.text	
	lea	s4216,%eax
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
s4247:	.asciz	"  For each shuffle, a player name (character string of <= 20 characters),"
	.text	
	lea	s4247,%eax
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
s4344:	.asciz	"  and if the player name specified is not 'E.O.Thorp', the count [n]"
	.text	
	lea	s4344,%eax
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
s4436:	.asciz	"  on which the player stands."
	.text	
	lea	s4436,%eax
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
s4498:	.asciz	"If the player name specified is 'E.O.Thorp', the player strategy used"
	.text	
	lea	s4498,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	.data	
s4580:	.asciz	" will be Thorp's."
	.text	
	lea	s4580,%eax
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
s4623:	.asciz	"Otherwise, the player will use the standard stop on count > n strategy."
	.text	
	lea	s4623,%eax
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
s4727:	.asciz	"The program will simulate one complete shuffle of play for each player."
	.text	
	lea	s4727,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
b109:	movl	$453,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p656
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$454,n
	cmpl	$0,%eax
	je	f110
	movl	$456,n
	call	p134
	addl	$0,%esp
	movl	$456,n
b111:	movl	$458,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	p1372
	addl	$0,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$459,n
	cmpl	$0,%eax
	je	f112
	movl	$461,n
	call	p2040
	addl	$0,%esp
	movl	$461,n
b113:	movl	$463,n
	cmpb	$0,u+108
	jne	f114
	movl	$465,n
	call	p3272
	addl	$0,%esp
	movl	$465,n
	jmp	b113
f114:b115:	movl	$468,n
	cmpb	$0,u+109
	jne	f116
	movl	$470,n
	call	p2514
	addl	$0,%esp
	movl	$470,n
	jmp	b115
f116:	jmp	b111
f112:	jmp	b109
f110:	movl	$475,n
	call	pttrap0
	leave	
	ret	
