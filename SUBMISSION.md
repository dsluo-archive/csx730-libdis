# csx730-libdis Submission

## Group Member Names

* David Luo 811357331
* Devan Vitha 811055508

## `main.o` Symbols

```
                 U _setjmp
                 U longjmp
0000000000000000 T main
                 U printf
```

## `main` Symbols

```
00000000006007d0 d _DYNAMIC
0000000000600968 d _GLOBAL_OFFSET_TABLE_
0000000000400704 R _IO_stdin_used
                 w _ITM_deregisterTMCloneTable
                 w _ITM_registerTMCloneTable
00000000006007b8 d __CTOR_END__
00000000006007b0 d __CTOR_LIST__
00000000006007c8 D __DTOR_END__
00000000006007c0 d __DTOR_LIST__
00000000004007a8 r __FRAME_END__
00000000006009b0 D __TMC_END__
00000000006009b0 A __bss_start
00000000006009a0 D __data_start
00000000004006b0 t __do_global_ctors_aux
0000000000400520 t __do_global_dtors_aux
00000000006009a8 D __dso_handle
                 w __gmon_start__
00000000006007ac d __init_array_end
00000000006007ac d __init_array_start
0000000000400610 T __libc_csu_fini
0000000000400620 T __libc_csu_init
                 U __libc_start_main@@GLIBC_2.2.5
00000000006009b0 A _edata
00000000006009c0 A _end
00000000004006f4 T _fini
00000000004003f8 T _init
                 U _setjmp@@GLIBC_2.2.5
0000000000400460 T _start
000000000040048c t call_gmon_start
00000000006009b0 b completed.7179
00000000006009a0 W data_start
00000000004004b0 t deregister_tm_clones
00000000006009b8 b dtor_idx.7181
00000000004005a0 t frame_dummy
                 U longjmp@@GLIBC_2.2.5
00000000004005a8 T main
                 U printf@@GLIBC_2.2.5
00000000004004e0 t register_tm_clones
```

## `main` Shared Library Dependencies

```
	linux-vdso.so.1 =>  (0x00007ffd9ed2d000)
	libc.so.6 => /lib64/libc.so.6 (0x0000003310400000)
	/lib64/ld-linux-x86-64.so.2 (0x0000003310000000)
```

According to the above, longjmp looks like it's defined in `glibc`, so probably in `/lib64/libc.so.6`.
