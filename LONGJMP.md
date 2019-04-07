# `longjmp` Disassembly Chain

## Where?

What file stores the machine code for `longjmp`?

## `longjmp`

```
00000033104322d0 <__libc_longjmp>:
  33104322d0:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  33104322d5:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  33104322da:	48 83 ec 18          	sub    $0x18,%rsp
  33104322de:	48 89 fd             	mov    %rdi,%rbp
  33104322e1:	89 f3                	mov    %esi,%ebx
  33104322e3:	e8 88 00 00 00       	callq  3310432370 <_longjmp_unwind>
  33104322e8:	8b 45 40             	mov    0x40(%rbp),%eax
  33104322eb:	85 c0                	test   %eax,%eax
  33104322ed:	75 19                	jne    3310432308 <__libc_longjmp+0x38>
  33104322ef:	85 db                	test   %ebx,%ebx
  33104322f1:	b8 01 00 00 00       	mov    $0x1,%eax
  33104322f6:	48 89 ef             	mov    %rbp,%rdi
  33104322f9:	0f 44 d8             	cmove  %eax,%ebx
  33104322fc:	89 de                	mov    %ebx,%esi
  33104322fe:	e8 1d 00 00 00       	callq  3310432320 <__longjmp>
  3310432303:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  3310432308:	48 8d 75 48          	lea    0x48(%rbp),%rsi
  331043230c:	31 d2                	xor    %edx,%edx
  331043230e:	bf 02 00 00 00       	mov    $0x2,%edi
  3310432313:	e8 28 04 00 00       	callq  3310432740 <sigprocmask>
  3310432318:	eb d5                	jmp    33104322ef <__libc_longjmp+0x1f>
  331043231a:	90                   	nop
  331043231b:	90                   	nop
  331043231c:	90                   	nop
  331043231d:	90                   	nop
  331043231e:	90                   	nop
  331043231f:	90                   	nop
```

## `next_call`

```
0000003310432740 <sigprocmask>:
  3310432740:	41 ba 08 00 00 00    	mov    $0x8,%r10d
  3310432746:	48 63 ff             	movslq %edi,%rdi
  3310432749:	b8 0e 00 00 00       	mov    $0xe,%eax
  331043274e:	0f 05                	syscall 
  3310432750:	48 3d 00 f0 ff ff    	cmp    $0xfffffffffffff000,%rax
  3310432756:	77 02                	ja     331043275a <sigprocmask+0x1a>
  3310432758:	f3 c3                	repz retq 
  331043275a:	48 8b 15 47 b8 35 00 	mov    0x35b847(%rip),%rdx        # 331078dfa8 <_DYNAMIC+0x468>
  3310432761:	f7 d8                	neg    %eax
  3310432763:	64 89 02             	mov    %eax,%fs:(%rdx)
  3310432766:	83 c8 ff             	or     $0xffffffffffffffff,%eax
  3310432769:	c3                   	retq   
  331043276a:	90                   	nop
  331043276b:	90                   	nop
  331043276c:	90                   	nop
  331043276d:	90                   	nop
  331043276e:	90                   	nop
  331043276f:	90                   	nop

0000003310432370 <_longjmp_unwind>:
  3310432370:	8b 05 8a 11 36 00    	mov    0x36118a(%rip),%eax        # 3310793500 <__libc_pthread_functions_init>
  3310432376:	85 c0                	test   %eax,%eax
  3310432378:	75 06                	jne    3310432380 <_longjmp_unwind+0x10>
  331043237a:	f3 c3                	repz retq 
  331043237c:	0f 1f 40 00          	nopl   0x0(%rax)
  3310432380:	48 8b 05 c9 12 36 00 	mov    0x3612c9(%rip),%rax        # 3310793650 <__libc_pthread_functions+0x130>
  3310432387:	48 89 e6             	mov    %rsp,%rsi
  331043238a:	48 c1 c8 11          	ror    $0x11,%rax
  331043238e:	64 48 33 04 25 30 00 	xor    %fs:0x30,%rax
  3310432395:	00 00 
  3310432397:	ff e0                	jmpq   *%rax
  3310432399:	90                   	nop
  331043239a:	90                   	nop
  331043239b:	90                   	nop
  331043239c:	90                   	nop
  331043239d:	90                   	nop
  331043239e:	90                   	nop
  331043239f:	90                   	nop

0000003310432320 <__longjmp>:
  3310432320:	4c 8b 47 30          	mov    0x30(%rdi),%r8
  3310432324:	4c 8b 4f 08          	mov    0x8(%rdi),%r9
  3310432328:	48 8b 57 38          	mov    0x38(%rdi),%rdx
  331043232c:	49 c1 c8 11          	ror    $0x11,%r8
  3310432330:	64 4c 33 04 25 30 00 	xor    %fs:0x30,%r8
  3310432337:	00 00 
  3310432339:	49 c1 c9 11          	ror    $0x11,%r9
  331043233d:	64 4c 33 0c 25 30 00 	xor    %fs:0x30,%r9
  3310432344:	00 00 
  3310432346:	48 c1 ca 11          	ror    $0x11,%rdx
  331043234a:	64 48 33 14 25 30 00 	xor    %fs:0x30,%rdx
  3310432351:	00 00 
  3310432353:	48 8b 1f             	mov    (%rdi),%rbx
  3310432356:	4c 8b 67 10          	mov    0x10(%rdi),%r12
  331043235a:	4c 8b 6f 18          	mov    0x18(%rdi),%r13
  331043235e:	4c 8b 77 20          	mov    0x20(%rdi),%r14
  3310432362:	4c 8b 7f 28          	mov    0x28(%rdi),%r15
  3310432366:	89 f0                	mov    %esi,%eax
  3310432368:	4c 89 c4             	mov    %r8,%rsp
  331043236b:	4c 89 cd             	mov    %r9,%rbp
  331043236e:	ff e2                	jmpq   *%rdx
```
