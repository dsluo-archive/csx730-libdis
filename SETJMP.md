# `setjmp` Disassembly Chain

## Where?

What file stores the machine code for `setjmp`?

`/lib64/libc.so.6`

## `setjmp`

```
00000033104322c0 <_setjmp>:
  33104322c0:	31 f6                	xor    %esi,%esi
  33104322c2:	e9 49 ff ff ff       	jmpq   3310432210 <__sigsetjmp>
  33104322c7:	90                   	nop
  33104322c8:	90                   	nop
  33104322c9:	90                   	nop
  33104322ca:	90                   	nop
  33104322cb:	90                   	nop
  33104322cc:	90                   	nop
  33104322cd:	90                   	nop
  33104322ce:	90                   	nop
  33104322cf:	90                   	nop
```

## `next_call`

```
0000003310432210 <__sigsetjmp>:
  3310432210:	48 89 1f             	mov    %rbx,(%rdi)
  3310432213:	48 89 e8             	mov    %rbp,%rax
  3310432216:	64 48 33 04 25 30 00 	xor    %fs:0x30,%rax
  331043221d:	00 00 
  331043221f:	48 c1 c0 11          	rol    $0x11,%rax
  3310432223:	48 89 47 08          	mov    %rax,0x8(%rdi)
  3310432227:	4c 89 67 10          	mov    %r12,0x10(%rdi)
  331043222b:	4c 89 6f 18          	mov    %r13,0x18(%rdi)
  331043222f:	4c 89 77 20          	mov    %r14,0x20(%rdi)
  3310432233:	4c 89 7f 28          	mov    %r15,0x28(%rdi)
  3310432237:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  331043223c:	64 48 33 14 25 30 00 	xor    %fs:0x30,%rdx
  3310432243:	00 00 
  3310432245:	48 c1 c2 11          	rol    $0x11,%rdx
  3310432249:	48 89 57 30          	mov    %rdx,0x30(%rdi)
  331043224d:	48 8b 04 24          	mov    (%rsp),%rax
  3310432251:	64 48 33 04 25 30 00 	xor    %fs:0x30,%rax
  3310432258:	00 00 
  331043225a:	48 c1 c0 11          	rol    $0x11,%rax
  331043225e:	48 89 47 38          	mov    %rax,0x38(%rdi)
  3310432262:	e9 09 00 00 00       	jmpq   3310432270 <__sigjmp_save>
  3310432267:	90                   	nop
  3310432268:	90                   	nop
  3310432269:	90                   	nop
  331043226a:	90                   	nop
  331043226b:	90                   	nop
  331043226c:	90                   	nop
  331043226d:	90                   	nop
  331043226e:	90                   	nop
  331043226f:	90                   	nop

0000003310432270 <__sigjmp_save>:
  3310432270:	85 f6                	test   %esi,%esi
  3310432272:	53                   	push   %rbx
  3310432273:	48 89 fb             	mov    %rdi,%rbx
  3310432276:	75 10                	jne    3310432288 <__sigjmp_save+0x18>
  3310432278:	31 d2                	xor    %edx,%edx
  331043227a:	31 c0                	xor    %eax,%eax
  331043227c:	89 53 40             	mov    %edx,0x40(%rbx)
  331043227f:	5b                   	pop    %rbx
  3310432280:	c3                   	retq   
  3310432281:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  3310432288:	48 8d 57 48          	lea    0x48(%rdi),%rdx
  331043228c:	31 f6                	xor    %esi,%esi
  331043228e:	31 ff                	xor    %edi,%edi
  3310432290:	e8 ab 04 00 00       	callq  3310432740 <sigprocmask>
  3310432295:	85 c0                	test   %eax,%eax
  3310432297:	ba 01 00 00 00       	mov    $0x1,%edx
  331043229c:	75 da                	jne    3310432278 <__sigjmp_save+0x8>
  331043229e:	89 53 40             	mov    %edx,0x40(%rbx)
  33104322a1:	31 c0                	xor    %eax,%eax
  33104322a3:	5b                   	pop    %rbx
  33104322a4:	c3                   	retq   
  33104322a5:	90                   	nop
  33104322a6:	90                   	nop
  33104322a7:	90                   	nop
  33104322a8:	90                   	nop
  33104322a9:	90                   	nop
  33104322aa:	90                   	nop
  33104322ab:	90                   	nop
  33104322ac:	90                   	nop
  33104322ad:	90                   	nop
  33104322ae:	90                   	nop
  33104322af:	90                   	nop
```
