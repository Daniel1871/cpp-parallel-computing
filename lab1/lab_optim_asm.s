	.file	"lab_optim.cpp"
	.intel_syntax noprefix
 # GNU C++17 (GCC) version 15.2.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version none
 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -march=alderlake -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -mno-sse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mgfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mno-clzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=48 --param=l1-cache-line-size=64 --param=l2-cache-size=24576 -mtune=alderlake -masm=intel -mthreads -O3 -fopenmp
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt5ctypeIcE8do_widenEc
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1820:
	.seh_endprologue
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:1094:       do_widen(char __c) const
	mov	eax, edx	 # __c, __c
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:1095:       { return __c; }
	ret	
	.seh_endproc
	.text
	.p2align 4
	.def	_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE._omp_fn.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE._omp_fn.0
_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE._omp_fn.0:
.LFB3851:
	push	r14	 #
	.seh_pushreg	r14
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # lab_optim.cpp:25:     #pragma omp parallel for collapse(2)
	mov	ebx, DWORD PTR 16[rcx]	 # rows, *.omp_data_i_9(D).rows
	test	ebx, ebx	 # rows
	mov	rbp, rcx	 # .omp_data_i, .omp_data_i
	jle	.L11	 #,
	mov	esi, DWORD PTR 20[rcx]	 # cols, *.omp_data_i_9(D).cols
	test	esi, esi	 # cols
	jle	.L11	 #,
	call	omp_get_num_threads	 #
	mov	edi, eax	 # _15, _15
	call	omp_get_thread_num	 #
	xor	edx, edx	 # tmp160
	mov	ecx, eax	 # _18,
	mov	eax, ebx	 # rows, rows
	imul	eax, esi	 # rows, cols
	div	edi	 # _15
	cmp	ecx, edx	 # _18, tmp160
	lea	r8d, 1[rax]	 # tmp199,
	cmovnb	r8d, eax	 # tmp199,, q.19_1, tmp159
	mov	eax, 0	 # tmp201,
	cmovb	edx, eax	 # tmp160,, tt.20_2, tmp201
	imul	ecx, r8d	 # _22, q.19_1
	add	ecx, edx	 # _23, tt.20_2
	lea	r9d, [r8+rcx]	 # _24,
	cmp	ecx, r9d	 # _23, _24
	jnb	.L11	 #,
	mov	eax, ecx	 # i, _23
	xor	edx, edx	 # tmp163
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1283: 	return *(this->_M_impl._M_start + __n);
	mov	r11, QWORD PTR 0[rbp]	 # *.omp_data_i_9(D).matrix, *.omp_data_i_9(D).matrix
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	mov	rbx, QWORD PTR 8[rbp]	 # *.omp_data_i_9(D).transposed, *.omp_data_i_9(D).transposed
	div	esi	 # cols
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1283: 	return *(this->_M_impl._M_start + __n);
	mov	rdi, QWORD PTR [r11]	 # _60, *_59.D.72811._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	mov	rbx, QWORD PTR [rbx]	 # _69, *_68.D.72811._M_impl.D.72114._M_start
	add	ecx, 1	 # .iter.14_76,
	cmp	ecx, r9d	 # .iter.14_76, _24
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	movsx	r10, eax	 # _58, i
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	r12d, edx	 # _63, tmp163
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1283: 	return *(this->_M_impl._M_start + __n);
	lea	r11, [r10+r10*2]	 # tmp168,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	lea	rbp, [r12+r12*2]	 # tmp175,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1283: 	return *(this->_M_impl._M_start + __n);
	mov	r11, QWORD PTR [rdi+r11*8]	 # prephitmp_110, MEM[(const struct vector *)_62].D.73852._M_impl.D.73191._M_start
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	rbp, QWORD PTR [rbx+rbp*8]	 # MEM[(struct vector *)_71].D.73852._M_impl.D.73191._M_start, MEM[(struct vector *)_71].D.73852._M_impl.D.73191._M_start
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	r14d, DWORD PTR [r11+r12*4]	 # _67, *_66
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	DWORD PTR 0[rbp+r10*4], r14d	 # *_74, _67
	jnb	.L11	 #,
	lea	ebp, -1[r8]	 # _54,
	xor	r8d, r8d	 # ivtmp.192
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L9:
	add	edx, 1	 # j,
	cmp	esi, edx	 # cols, j
	jle	.L7	 #,
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	movsx	rcx, edx	 # _102, j
	add	r8d, 1	 # ivtmp.192,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	lea	r9, [rcx+rcx*2]	 # tmp183,
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	r10d, DWORD PTR [r11+rcx*4]	 # _90, *_98
	cmp	r8d, ebp	 # ivtmp.192, _54
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	movsx	rcx, eax	 # _97, i
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	r9, QWORD PTR [rbx+r9*8]	 # MEM[(struct vector *)_100].D.73852._M_impl.D.73191._M_start, MEM[(struct vector *)_100].D.73852._M_impl.D.73191._M_start
	mov	DWORD PTR [r9+rcx*4], r10d	 # *_87, _90
	jne	.L9	 #,
.L11:
 # lab_optim.cpp:25:     #pragma omp parallel for collapse(2)
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r14	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
	add	eax, 1	 # i,
	add	r8d, 1	 # ivtmp.192,
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	movsx	rdx, eax	 # _107, i
	cmp	ebp, r8d	 # _54, ivtmp.192
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1283: 	return *(this->_M_impl._M_start + __n);
	lea	rcx, [rdx+rdx*2]	 # tmp191,
	mov	r11, QWORD PTR [rdi+rcx*8]	 # prephitmp_110, MEM[(const struct vector *)_104].D.73852._M_impl.D.73191._M_start
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	rcx, QWORD PTR [rbx]	 # *_69.D.73852._M_impl.D.73191._M_start, *_69.D.73852._M_impl.D.73191._M_start
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	r9d, DWORD PTR [r11]	 # _57, MEM[(const value_type &)pretmp_103]
 # lab_optim.cpp:28:             transposed[j][i] = matrix[i][j];
	mov	DWORD PTR [rcx+rdx*4], r9d	 # *_81, _57
	je	.L11	 #,
	xor	edx, edx	 # j
	jmp	.L9	 #
	.seh_endproc
	.section	.text$_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
	.def	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev
_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev:
.LFB3409:
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 32	 #,
	.seh_stackalloc	32
	.seh_endprologue
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	mov	rsi, QWORD PTR 8[rcx]	 # _1, this_3(D)->D.72811._M_impl.D.72114._M_finish
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	mov	rbx, QWORD PTR [rcx]	 # __first, this_3(D)->D.72811._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _1, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:800:       ~vector() _GLIBCXX_NOEXCEPT
	mov	rdi, rcx	 # this, this
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	je	.L13	 #,
	.p2align 4,,10
	.p2align 3
.L17:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR [rbx]	 # _15, MEM[(int * *)__first_24]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _15
	je	.L14	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[rbx]	 # _16, MEM[(int * *)__first_24 + 16B]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _16, _15
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _1, __first
	jne	.L17	 #,
.L16:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rbx, QWORD PTR [rdi]	 # __first, MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.72114._M_start
.L13:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rbx, rbx	 # __first
	je	.L19	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[rdi]	 # MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.72114._M_end_of_storage, MEM[(struct _Vector_base *)this_3(D)]._M_impl.D.72114._M_end_of_storage
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbx	 #, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rbx	 # _8, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:805:       }
	add	rsp, 32	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	jmp	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L14:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _1, __first
	jne	.L17	 #,
	jmp	.L16	 #
	.p2align 4,,10
	.p2align 3
.L19:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:805:       }
	add	rsp, 32	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	ret	
	.seh_endproc
	.section	.text$_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_,"x"
	.linkonce discard
	.p2align 4
	.globl	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
	.def	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_
_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_:
.LFB3684:
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 40	 #,
	.seh_stackalloc	40
	.seh_endprologue
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rcx, rdx	 # __first, __last
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:202:     _Destroy(_ForwardIterator __first, _ForwardIterator __last)
	mov	rbx, rcx	 # __first, __first
	mov	rsi, rdx	 # __last, __last
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	je	.L25	 #,
	.p2align 4,,10
	.p2align 3
.L24:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR [rbx]	 # _8, MEM[(int * *)__first_16]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _8
	je	.L22	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[rbx]	 # _9, MEM[(int * *)__first_16 + 16B]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _9, _8
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # __last, __first
	jne	.L24	 #,
.L25:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:222:     }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L22:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # __last, __first
	jne	.L24	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:222:     }
	add	rsp, 40	 #,
	pop	rbx	 #
	pop	rsi	 #
	ret	
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "cannot create std::vector larger than max_size()\0"
	.text
	.p2align 4
	.globl	_Z15generate_matrixii
	.def	_Z15generate_matrixii;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15generate_matrixii
_Z15generate_matrixii:
.LFB3072:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 72	 #,
	.seh_stackalloc	72
	vmovaps	XMMWORD PTR 48[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 48
	.seh_endprologue
 # lab_optim.cpp:8:     std::vector<std::vector<int>> matrix(rows, std::vector<int>(cols));
	movsx	rsi, r8d	 # _1,
 # lab_optim.cpp:7: std::vector<std::vector<int>> generate_matrix(int rows, int cols) {
	mov	DWORD PTR 160[rsp], r8d	 # cols, cols
	mov	rbx, rcx	 # <retval>, <retval>
	movsx	rbp, edx	 #, rows
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	rax, rsi	 # tmp193, _1
	shr	rax, 61	 # tmp193,
	jne	.L67	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	test	rsi, rsi	 # _1
	je	.L68	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rdi, 0[0+rsi*4]	 # _35,
	mov	rcx, rdi	 #, _35
	mov	QWORD PTR 32[rsp], rdi	 # %sfp, _35
.LEHB0:
	call	_Znwy	 #
.LEHE0:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:1143:       if (__n <= 0)
	cmp	rsi, 1	 # _1,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0	 # *_65,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r13, rax	 # _65, _65
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:895: 	      ++__first;
	lea	r12, 4[rax]	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:1143:       if (__n <= 0)
	je	.L49	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:925: 	*__first = __val;
	mov	rcx, r12	 #, __first
	lea	r8, -4[rdi]	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:1149:       return __first + __n;
	lea	r12, [rax+rdi]	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:925: 	*__first = __val;
	xor	edx, edx	 #
	call	memset	 #
.L32:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movabs	rax, 384307168202282325	 # tmp146,
	cmp	rax, rbp	 # tmp146, ivtmp.263
	jb	.L29	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp148
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	test	rbp, rbp	 # ivtmp.263
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rbx], 0	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR [rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct vector * *)matrix_18(D)], tmp148
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	je	.L34	 #,
.L35:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	r14, 0[rbp+rbp*2]	 # _81,
	sal	r14, 3	 # tmp152,
	mov	rcx, r14	 #, tmp152
.LEHB1:
	call	_Znwy	 #
.LEHE1:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovq	xmm1, rax	 # _82, _82
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	lea	rdx, [rax+r14]	 # __first,
	sub	r12, r13	 # _131, _65
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	mov	rdi, rax	 # __first, _82
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vpunpcklqdq	xmm0, xmm1, xmm1	 # _38, _82
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	QWORD PTR 40[rsp], rax	 # %sfp, _82
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm6, xmm6, xmm6	 # tmp156
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 16[rbx], rdx	 # MEM[(struct _Vector_base *)matrix_18(D)]._M_impl.D.72114._M_end_of_storage, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovdqu	XMMWORD PTR [rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct vector * *)matrix_18(D)], _38
	je	.L69	 #,
	.p2align 4,,10
	.p2align 3
.L36:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rdi], 0	 # MEM[(int * *)__first_73 + 16B],
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, r12	 #, _131
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR [rdi], xmm6	 # MEM <vector(2) long long unsigned int> [(int * *)__first_73], tmp156
.LEHB2:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE2:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	lea	r15, [rax+r12]	 # _159,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	mov	QWORD PTR [rdi], rax	 # MEM[(int * *)__first_73], tmp189
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	mov	r8, r12	 #, _131
	mov	rdx, r13	 #, _65
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 16[rdi], r15	 # MEM[(int * *)__first_73 + 16B], _159
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	mov	rcx, rax	 #, tmp189
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	add	rdi, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	call	memcpy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:635: 	this->_M_impl._M_finish =
	mov	QWORD PTR -16[rdi], r15	 # MEM[(int * *)__first_73 + 8B], _159
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	sub	rbp, 1	 # ivtmp.263,
	jne	.L36	 #,
.L39:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	r13, r13	 # _65
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1999: 	this->_M_impl._M_finish =
	mov	QWORD PTR 8[rbx], rdi	 # *matrix_18(D).D.72811._M_impl.D.72114._M_finish, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	je	.L41	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, QWORD PTR 32[rsp]	 #, %sfp
	mov	rcx, r13	 #, _65
	call	_ZdlPvy	 #
.L41:
	mov	eax, DWORD PTR 160[rsp]	 #, cols
	test	eax, eax	 #
	je	.L26	 #,
	sal	rsi, 2	 # _67,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	xor	edi, edi	 # ivtmp.244
	.p2align 4,,10
	.p2align 3
.L45:
	xor	ebp, ebp	 # ivtmp.240
	.p2align 4,,10
	.p2align 3
.L46:
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	call	rand	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	mov	rdx, QWORD PTR [rbx]	 # matrix_18(D)->D.72811._M_impl.D.72114._M_start, matrix_18(D)->D.72811._M_impl.D.72114._M_start
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	mov	r8d, eax	 # tmp178, _3
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	mov	rcx, QWORD PTR [rdx+rdi]	 # MEM[(struct vector *)_34].D.73852._M_impl.D.73191._M_start, MEM[(struct vector *)_34].D.73852._M_impl.D.73191._M_start
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	movsx	rdx, eax	 # _3, _3
	sar	r8d, 31	 # tmp178,
	imul	rdx, rdx, 1374389535	 # tmp175, _3,
	sar	rdx, 37	 # tmp177,
	sub	edx, r8d	 # tmp173, tmp178
	imul	edx, edx, 100	 # tmp179, tmp173,
	sub	eax, edx	 # _4, tmp179
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	add	eax, 1	 # tmp181,
	mov	DWORD PTR [rcx+rbp], eax	 # *_14, tmp181
 # lab_optim.cpp:11:         for (int j = 0; j < cols; j++) {
	add	rbp, 4	 # ivtmp.240,
	cmp	rbp, rsi	 # ivtmp.240, _67
	jne	.L46	 #,
 # lab_optim.cpp:10:     for (int i = 0; i < rows; i++) {
	add	rdi, 24	 # ivtmp.244,
	cmp	r14, rdi	 # tmp152, ivtmp.244
	jne	.L45	 #,
.L26:
 # lab_optim.cpp:17: }
	vmovaps	xmm6, XMMWORD PTR 48[rsp]	 #,
	mov	rax, rbx	 #, <retval>
	add	rsp, 72	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
.L68:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movabs	rax, 384307168202282325	 # tmp138,
	cmp	rax, rbp	 # tmp138, ivtmp.263
	jb	.L48	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp139
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	test	rbp, rbp	 # ivtmp.263
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rcx], 0	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR [rcx], xmm0	 # MEM <vector(2) long long unsigned int> [(struct vector * *)matrix_18(D)], tmp139
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	je	.L26	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 32[rsp], 0	 # %sfp,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xor	r13d, r13d	 # _65
	xor	r12d, r12d	 # __first
	jmp	.L35	 #
.L69:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqa	xmm0, xmm6	 # tmp155,
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L37:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rax], 0	 # MEM[(int * *)__first_119 + 16B],
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	add	rax, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR -24[rax], xmm0	 # MEM <vector(2) long long unsigned int> [(int * *)__first_119], tmp155
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	cmp	rdx, rax	 # __first, __first
	jne	.L37	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	mov	rdi, rdx	 # __first, __first
	jmp	.L39	 #
.L34:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, QWORD PTR 32[rsp]	 #, %sfp
	mov	rcx, r13	 #, _65
	call	_ZdlPvy	 #
	jmp	.L26	 #
.L49:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 32[rsp], 4	 # %sfp,
	jmp	.L32	 #
.L51:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:121: 	  std::_Destroy(_M_first, *_M_cur);
	mov	rcx, QWORD PTR 40[rsp]	 #, %sfp
	mov	rdx, rdi	 #, __first
	vzeroupper
	mov	rsi, rax	 # tmp190,
	call	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR [rbx]	 # _49, MEM[(struct _Vector_base *)matrix_18(D)]._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _49
	je	.L44	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[rbx]	 # MEM[(struct _Vector_base *)matrix_18(D)]._M_impl.D.72114._M_end_of_storage, MEM[(struct _Vector_base *)matrix_18(D)]._M_impl.D.72114._M_end_of_storage
	sub	rdx, rcx	 # _50, _49
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	jmp	.L44	 #
.L48:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	xor	edx, edx	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xor	r13d, r13d	 # _65
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 32[rsp], rdx	 # %sfp,
.L29:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2211: 	  __throw_length_error(
	lea	rcx, .LC0[rip]	 #,
.LEHB3:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE3:
.L67:
	lea	rcx, .LC0[rip]	 #,
.LEHB4:
	call	_ZSt20__throw_length_errorPKc	 #
.L52:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	mov	rsi, rax	 # tmp169, tmp192
	vzeroupper
.L44:
	test	r13, r13	 # _65
	je	.L47	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, QWORD PTR 32[rsp]	 #, %sfp
	mov	rcx, r13	 #, _65
	call	_ZdlPvy	 #
.L47:
	mov	rcx, rsi	 #, tmp169
	call	_Unwind_Resume	 #
	nop	
.LEHE4:
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3072:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3072-.LLSDACSB3072
.LLSDACSB3072:
	.uleb128 .LEHB0-.LFB3072
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3072
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L52-.LFB3072
	.uleb128 0
	.uleb128 .LEHB2-.LFB3072
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L51-.LFB3072
	.uleb128 0
	.uleb128 .LEHB3-.LFB3072
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L52-.LFB3072
	.uleb128 0
	.uleb128 .LEHB4-.LFB3072
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3072:
	.text
	.seh_endproc
	.p2align 4
	.globl	_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE
	.def	_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE
_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE:
.LFB3082:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 120	 #,
	.seh_stackalloc	120
	vmovaps	XMMWORD PTR 96[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 96
	.seh_endprologue
 # lab_optim.cpp:19: std::vector<std::vector<int>> transpose(const std::vector<std::vector<int>>& matrix) {
	mov	r13, rdx	 # matrix, matrix
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	mov	rdx, QWORD PTR [rdx]	 # _24, matrix_4(D)->D.72811._M_impl.D.72114._M_start
 # lab_optim.cpp:19: std::vector<std::vector<int>> transpose(const std::vector<std::vector<int>>& matrix) {
	mov	r12, rcx	 # <retval>, <retval>
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	movabs	rcx, -6148914691236517205	 # tmp144,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	mov	rax, QWORD PTR 8[r13]	 # _25, matrix_4(D)->D.72811._M_impl.D.72114._M_finish
	mov	r14, QWORD PTR 8[rdx]	 # MEM[(const struct vector *)_24].D.73852._M_impl.D.73191._M_finish, MEM[(const struct vector *)_24].D.73852._M_impl.D.73191._M_finish
	sub	r14, QWORD PTR [rdx]	 # _14, MEM[(const struct vector *)_24].D.73852._M_impl.D.73191._M_start
	sub	rax, rdx	 # _25, _24
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	sar	r14, 2	 # _14,
	sar	rax, 3	 # tmp142,
	mov	QWORD PTR 40[rsp], r14	 # %sfp, _14
	imul	rax, rcx	 # tmp142, tmp144
 # lab_optim.cpp:23:     std::vector<std::vector<int>> transposed(cols, std::vector<int>(rows));
	movsx	r15, eax	 # _1, __dif_26
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	mov	QWORD PTR 48[rsp], rax	 # %sfp, __dif_26
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	mov	rax, r15	 # tmp195, _1
	shr	rax, 61	 # tmp195,
	jne	.L101	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	test	r15, r15	 # _1
	je	.L85	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rsi, 0[0+r15*4]	 # _60,
	mov	rcx, rsi	 #, _60
.LEHB5:
	call	_Znwy	 #
.LEHE5:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:1143:       if (__n <= 0)
	cmp	r15, 1	 # _1,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0	 # *_61,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rbp, rax	 # _61, _61
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:895: 	      ++__first;
	lea	rdi, 4[rax]	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:1143:       if (__n <= 0)
	je	.L86	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:925: 	*__first = __val;
	mov	rcx, rdi	 #, __first
	lea	r8, -4[rsi]	 #,
	xor	edx, edx	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	r15, rsi	 # _1, _60
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:925: 	*__first = __val;
	call	memset	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:1149:       return __first + __n;
	lea	rdi, 0[rbp+rsi]	 # __first,
.L72:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	movabs	rax, 384307168202282325	 # tmp157,
 # lab_optim.cpp:23:     std::vector<std::vector<int>> transposed(cols, std::vector<int>(rows));
	movsx	rsi, DWORD PTR 40[rsp]	 # ivtmp.301, %sfp
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2210: 	if (__n > _S_max_size(_Tp_alloc_type(__a)))
	cmp	rax, rsi	 # tmp157, ivtmp.301
	jb	.L102	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[r12], 0	 # MEM[(struct _Vector_impl_data *)transposed_9(D)]._M_end_of_storage,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm0, xmm0, xmm0	 # tmp159
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	test	rsi, rsi	 # ivtmp.301
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR [r12], xmm0	 # MEM <vector(2) long long unsigned int> [(struct vector * *)transposed_9(D)], tmp159
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	je	.L103	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	lea	rax, [rsi+rsi*2]	 # _77,
	lea	rbx, 0[0+rax*8]	 # tmp163,
	mov	rcx, rbx	 #, tmp163
.LEHB6:
	call	_Znwy	 #
.LEHE6:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovq	xmm4, rax	 # _78, _78
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	rdx, rax	 # _78, _78
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	QWORD PTR 56[rsp], rax	 # %sfp, _78
	sub	rdi, rbp	 # _38, _61
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	lea	rax, [rax+rbx]	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vpunpcklqdq	xmm0, xmm4, xmm4	 # _98, _78
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm6, xmm6, xmm6	 # tmp167
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1119: 	ptrdiff_t __dif = this->_M_impl._M_finish - this->_M_impl._M_start;
	mov	rbx, rdx	 # __first, _78
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 16[r12], rax	 # MEM[(struct _Vector_base *)transposed_9(D)]._M_impl.D.72114._M_end_of_storage, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovdqu	XMMWORD PTR [r12], xmm0	 # MEM <vector(2) long long unsigned int> [(struct vector * *)transposed_9(D)], _98
	je	.L104	 #,
	.p2align 4,,10
	.p2align 3
.L76:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rbx], 0	 # MEM[(int * *)__first_49 + 16B],
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rcx, rdi	 #, _38
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR [rbx], xmm6	 # MEM <vector(2) long long unsigned int> [(int * *)__first_49], tmp167
.LEHB7:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE7:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	lea	r14, [rax+rdi]	 # _41,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	mov	QWORD PTR [rbx], rax	 # MEM[(int * *)__first_49], tmp192
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	mov	r8, rdi	 #, _38
	mov	rdx, rbp	 #, _61
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 16[rbx], r14	 # MEM[(int * *)__first_49 + 16B], _41
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	mov	rcx, rax	 #, tmp192
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	call	memcpy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:635: 	this->_M_impl._M_finish =
	mov	QWORD PTR -16[rbx], r14	 # MEM[(int * *)__first_49 + 8B], _41
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	sub	rsi, 1	 # ivtmp.301,
	jne	.L76	 #,
.L75:
	vmovq	xmm2, r13	 # matrix, matrix
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rbp, rbp	 # _61
	vmovd	xmm3, DWORD PTR 48[rsp]	 # tmp204, %sfp
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1999: 	this->_M_impl._M_finish =
	mov	QWORD PTR 8[r12], rbx	 # *transposed_9(D).D.72811._M_impl.D.72114._M_finish, __first
	vpinsrd	xmm1, xmm3, DWORD PTR 40[rsp], 1	 # _111, tmp204, %sfp
	vpinsrq	xmm6, xmm2, r12, 1	 # _32, matrix, <retval>
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	je	.L80	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, r15	 #, _1
	mov	rcx, rbp	 #, _61
	vmovq	QWORD PTR 40[rsp], xmm1	 # %sfp, _111
	call	_ZdlPvy	 #
	vmovq	xmm1, QWORD PTR 40[rsp]	 # _111, %sfp
.L80:
	lea	rdx, 64[rsp]	 # tmp184,
	xor	r9d, r9d	 #
	xor	r8d, r8d	 #
 # lab_optim.cpp:25:     #pragma omp parallel for collapse(2)
	vmovdqa	XMMWORD PTR 64[rsp], xmm6	 # MEM <vector(2) long long unsigned int> [(const struct vector & *)&.omp_data_o.16], _32
	lea	rcx, _Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE._omp_fn.0[rip]	 #,
	vmovq	QWORD PTR 80[rsp], xmm1	 # MEM <vector(2) int> [(int *)&.omp_data_o.16 + 16B], _111
	call	GOMP_parallel	 #
	nop	
 # lab_optim.cpp:33: }
	vmovaps	xmm6, XMMWORD PTR 96[rsp]	 #,
	mov	rax, r12	 #, <retval>
	add	rsp, 120	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L103:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	mov	QWORD PTR [r12], 0	 # MEM[(struct _Vector_base *)transposed_9(D)]._M_impl.D.72114._M_start,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xor	ebx, ebx	 # __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 16[r12], 0	 # MEM[(struct _Vector_base *)transposed_9(D)]._M_impl.D.72114._M_end_of_storage,
	jmp	.L75	 #
	.p2align 4,,10
	.p2align 3
.L85:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:387: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	xor	ebp, ebp	 # _61
	xor	edi, edi	 # __first
	jmp	.L72	 #
	.p2align 4,,10
	.p2align 3
.L104:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqa	xmm0, xmm6	 # tmp166,
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L77:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rbx], 0	 # MEM[(int * *)__first_132 + 16B],
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	add	rbx, 24	 # _68,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR -24[rbx], xmm0	 # MEM <vector(2) long long unsigned int> [(int * *)__first_132], tmp166
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	cmp	rbx, rax	 # _68, __first
	jne	.L77	 #,
	jmp	.L75	 #
	.p2align 4,,10
	.p2align 3
.L86:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	r15d, 4	 # _1,
	jmp	.L72	 #
.L89:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:121: 	  std::_Destroy(_M_first, *_M_cur);
	mov	rcx, QWORD PTR 56[rsp]	 #, %sfp
	mov	rdx, rbx	 #, __first
	vzeroupper
	mov	rsi, rax	 # tmp193,
	call	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR [r12]	 # _45, MEM[(struct _Vector_base *)transposed_9(D)]._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _45
	je	.L83	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[r12]	 # MEM[(struct _Vector_base *)transposed_9(D)]._M_impl.D.72114._M_end_of_storage, MEM[(struct _Vector_base *)transposed_9(D)]._M_impl.D.72114._M_end_of_storage
	sub	rdx, rcx	 # _46, _45
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L83:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rbp, rbp	 # _61
	je	.L84	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdx, r15	 #, _1
	mov	rcx, rbp	 #, _61
	call	_ZdlPvy	 #
.L84:
	mov	rcx, rsi	 #, tmp182
.LEHB8:
	call	_Unwind_Resume	 #
.L101:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:2211: 	  __throw_length_error(
	lea	rcx, .LC0[rip]	 #,
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE8:
.L102:
	lea	rcx, .LC0[rip]	 #,
.LEHB9:
	call	_ZSt20__throw_length_errorPKc	 #
.LEHE9:
.L88:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	mov	rsi, rax	 # tmp182, tmp194
	vzeroupper
	jmp	.L83	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3082:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3082-.LLSDACSB3082
.LLSDACSB3082:
	.uleb128 .LEHB5-.LFB3082
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3082
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L88-.LFB3082
	.uleb128 0
	.uleb128 .LEHB7-.LFB3082
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L89-.LFB3082
	.uleb128 0
	.uleb128 .LEHB8-.LFB3082
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB3082
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L88-.LFB3082
	.uleb128 0
.LLSDACSE3082:
	.text
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "Iteration \0"
.LC2:
	.ascii " time: \0"
.LC3:
	.ascii " ms\0"
.LC5:
	.ascii "\12Average transpose time: \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB3083:
	push	r15	 #
	.seh_pushreg	r15
	push	r14	 #
	.seh_pushreg	r14
	push	r13	 #
	.seh_pushreg	r13
	push	r12	 #
	.seh_pushreg	r12
	push	rbp	 #
	.seh_pushreg	rbp
	push	rdi	 #
	.seh_pushreg	rdi
	push	rsi	 #
	.seh_pushreg	rsi
	push	rbx	 #
	.seh_pushreg	rbx
	sub	rsp, 136	 #,
	.seh_stackalloc	136
	vmovaps	XMMWORD PTR 112[rsp], xmm6	 #,
	.seh_savexmm	xmm6, 112
	.seh_endprologue
 # lab_optim.cpp:41:     for(int i = 1; i <= iterations; i++) {
	mov	ebp, 1	 # i,
 # lab_optim.cpp:38:     long long total_time = 0;
	xor	r14d, r14d	 # total_time
 # lab_optim.cpp:35: int main() {   
	call	__main	 #
	lea	rax, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp266,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	r13, QWORD PTR .refptr._ZSt4cout[rip]	 # tmp263,
	mov	QWORD PTR 40[rsp], rax	 # %sfp, tmp266
	.p2align 4,,10
	.p2align 3
.L130:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 40000	 #,
.LEHB10:
	call	_Znwy	 #
.LEHE10:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:925: 	*__first = __val;
	mov	r8d, 39996	 #,
	xor	edx, edx	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:133:       ::new(static_cast<void*>(__p)) _Tp(std::forward<_Args>(__args)...);
	mov	DWORD PTR [rax], 0	 # *_86,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:895: 	      ++__first;
	lea	rcx, 4[rax]	 # __first_87,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	rsi, rax	 # _86,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_algobase.h:925: 	*__first = __val;
	call	memset	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 240000	 #,
.LEHB11:
	call	_Znwy	 #
.LEHE11:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovq	xmm2, rax	 # _103, _103
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	r12, rax	 # _103,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vpxor	xmm6, xmm6, xmm6	 # tmp187
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	rbx, rax	 # __first, _103
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	lea	rdi, 240000[rax]	 # _98,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vpunpcklqdq	xmm0, xmm2, xmm2	 # _239, _103
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 64[rsp], rdi	 # MEM[(struct _Vector_base *)&original_matrix]._M_impl.D.72114._M_end_of_storage, _98
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	vmovdqa	XMMWORD PTR 48[rsp], xmm0	 # MEM <vector(2) long long unsigned int> [(struct vector * *)&original_matrix], _239
	.p2align 4,,10
	.p2align 3
.L106:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	mov	QWORD PTR 16[rbx], 0	 # MEM[(int * *)__first_213 + 16B],
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	mov	ecx, 40000	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:106: 	: _M_start(), _M_finish(), _M_end_of_storage()
	vmovdqu	XMMWORD PTR [rbx], xmm6	 # MEM <vector(2) long long unsigned int> [(int * *)__first_213], tmp187
.LEHB12:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:151: 	return static_cast<_Tp*>(_GLIBCXX_OPERATOR_NEW(__n * sizeof(_Tp)));
	call	_Znwy	 #
.LEHE12:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	lea	r15, 40000[rax]	 # _127,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:405: 	this->_M_impl._M_start = this->_M_allocate(__n);
	mov	QWORD PTR [rbx], rax	 # MEM[(int * *)__first_213], tmp269
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	mov	rdx, rsi	 #, _86
	mov	rcx, rax	 #, tmp269
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	mov	QWORD PTR 16[rbx], r15	 # MEM[(int * *)__first_213 + 16B], _127
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	mov	r8d, 40000	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:273: 	      __builtin_memcpy(std::__niter_base(__result),
	call	memcpy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:635: 	this->_M_impl._M_finish =
	mov	QWORD PTR -16[rbx], r15	 # MEM[(int * *)__first_213 + 8B], _127
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:469:       for (; __n--; ++__first)
	cmp	rdi, rbx	 # _98, __first
	jne	.L106	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	edx, 40000	 #,
	mov	rcx, rsi	 #, _86
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1999: 	this->_M_impl._M_finish =
	mov	QWORD PTR 56[rsp], rdi	 # original_matrix.D.72811._M_impl.D.72114._M_finish, _98
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	xor	ebx, ebx	 # ivtmp.343
	call	_ZdlPvy	 #
	.p2align 4,,10
	.p2align 3
.L107:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:407: 	this->_M_impl._M_end_of_storage = this->_M_impl._M_start + __n;
	xor	esi, esi	 # ivtmp.336
	.p2align 4,,10
	.p2align 3
.L111:
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	call	rand	 #
	mov	edx, eax	 # _47,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:1264: 	return *(this->_M_impl._M_start + __n);
	mov	rax, QWORD PTR 48[rsp]	 # original_matrix.D.72811._M_impl.D.72114._M_start, original_matrix.D.72811._M_impl.D.72114._M_start
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	mov	r8d, edx	 # tmp209, _47
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	mov	rcx, QWORD PTR [rax+rbx]	 # MEM[(struct vector *)_54].D.73852._M_impl.D.73191._M_start, MEM[(struct vector *)_54].D.73852._M_impl.D.73191._M_start
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	movsx	rax, edx	 # _47, _47
	sar	r8d, 31	 # tmp209,
	imul	rax, rax, 1374389535	 # tmp206, _47,
	sar	rax, 37	 # tmp208,
	sub	eax, r8d	 # tmp204, tmp209
	imul	eax, eax, 100	 # tmp210, tmp204,
	sub	edx, eax	 # _48, tmp210
 # lab_optim.cpp:12:             matrix[i][j] = rand() % 100 + 1; // генерируем числа от 1 до 100
	add	edx, 1	 # tmp212,
	mov	DWORD PTR [rcx+rsi], edx	 # *_59, tmp212
 # lab_optim.cpp:11:         for (int j = 0; j < cols; j++) {
	add	rsi, 4	 # ivtmp.336,
	cmp	rsi, 40000	 # ivtmp.336,
	jne	.L111	 #,
 # lab_optim.cpp:10:     for (int i = 0; i < rows; i++) {
	add	rbx, 24	 # ivtmp.343,
	cmp	rbx, 240000	 # ivtmp.343,
	jne	.L107	 #,
 # lab_optim.cpp:44:         auto start_transpose = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # lab_optim.cpp:45:         std::vector<std::vector<int>> transposed_matrix = transpose(original_matrix);
	lea	rdx, 48[rsp]	 #,
	lea	rcx, 80[rsp]	 #,
 # lab_optim.cpp:44:         auto start_transpose = std::chrono::high_resolution_clock::now();
	mov	rbx, rax	 # start_transpose,
.LEHB13:
 # lab_optim.cpp:45:         std::vector<std::vector<int>> transposed_matrix = transpose(original_matrix);
	call	_Z9transposeRKSt6vectorIS_IiSaIiEESaIS1_EE	 #
.LEHE13:
 # lab_optim.cpp:46:         auto end_transpose = std::chrono::high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	r8d, 10	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/chrono.h:720: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	sub	rax, rbx	 # end_transpose, start_transpose
	mov	rcx, rax	 # _28, end_transpose
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/chrono.h:218: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movabs	rax, 4835703278458516699	 # tmp286,
	imul	rcx	 # _28
	sar	rcx, 63	 # tmp219,
	sar	rdx, 18	 # tmp218,
	mov	rbx, rdx	 # tmp218, tmp218
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	lea	rdx, .LC1[rip]	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/chrono.h:218: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	sub	rbx, rcx	 # tmp218, tmp219
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	rcx, r13	 #, tmp263
.LEHB14:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # lab_optim.cpp:51:         std::cout << "Iteration " << i << " time: " << duration_transpose.count() << " ms" << std::endl;
	mov	edx, ebp	 #, i
	mov	rcx, r13	 #, tmp263
	call	_ZNSolsEi	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	r8d, 7	 #,
	lea	rdx, .LC2[rip]	 #,
	mov	rcx, rax	 #, _15
 # lab_optim.cpp:51:         std::cout << "Iteration " << i << " time: " << duration_transpose.count() << " ms" << std::endl;
	mov	r12, rax	 # _15,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:212:       { return _M_insert(__n); }
	mov	rdx, rbx	 #, _25
	mov	rcx, r12	 #, _15
	call	_ZNSo9_M_insertIxEERSoT_	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	r8d, 3	 #,
	lea	rdx, .LC3[rip]	 #,
	mov	rcx, rax	 #, _29
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:212:       { return _M_insert(__n); }
	mov	r12, rax	 # _29,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:67:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [r12]	 # MEM[(struct basic_ostream *)_29]._vptr.basic_ostream, MEM[(struct basic_ostream *)_29]._vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_133 + -24B], MEM[(long long int *)_133 + -24B]
	mov	rcx, QWORD PTR 240[r12+rax]	 # _141, MEM[(const struct __ctype_type * *)_136 + 240B]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/basic_ios.h:51:       if (!__f)
	test	rcx, rcx	 # _141
	je	.L154	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:884: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rcx], 0	 # MEM[(const struct ctype *)_141]._M_widen_ok,
	je	.L114	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:67:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, BYTE PTR 67[rcx]	 # prephitmp_44, MEM[(const struct ctype *)_141]._M_widen[10]
.L115:
	mov	rcx, r12	 #, _29
 # lab_optim.cpp:49:         total_time += duration_transpose.count();
	add	r14, rbx	 # total_time, _25
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:67:     { return flush(__os.put(__os.widen('\n'))); }
	call	_ZNSo3putEc	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:89:     { return __os.flush(); }
	mov	rcx, rax	 #, _139
	call	_ZNSo5flushEv	 #
.LEHE14:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	mov	rsi, QWORD PTR 88[rsp]	 # _167, transposed_matrix.D.72811._M_impl.D.72114._M_finish
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	mov	rbx, QWORD PTR 80[rsp]	 # __first, transposed_matrix.D.72811._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _167, __first
	je	.L116	 #,
	.p2align 4,,10
	.p2align 3
.L120:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR [rbx]	 # _175, MEM[(int * *)__first_240]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _175
	je	.L117	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[rbx]	 # _176, MEM[(int * *)__first_240 + 16B]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _176, _175
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rbx, rsi	 # __first, _167
	jne	.L120	 #,
.L119:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rbx, QWORD PTR 80[rsp]	 # __first, MEM[(struct _Vector_base *)&transposed_matrix]._M_impl.D.72114._M_start
.L116:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rbx, rbx	 # __first
	je	.L121	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 96[rsp]	 # _171, MEM[(struct _Vector_base *)&transposed_matrix]._M_impl.D.72114._M_end_of_storage
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbx	 #, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rbx	 # _171, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
.L121:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	mov	rsi, QWORD PTR 56[rsp]	 # _161, original_matrix.D.72811._M_impl.D.72114._M_finish
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:802: 	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
	mov	rbx, QWORD PTR 48[rsp]	 # __first, original_matrix.D.72811._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _161, __first
	je	.L122	 #,
	.p2align 4,,10
	.p2align 3
.L126:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR [rbx]	 # _181, MEM[(int * *)__first_243]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _181
	je	.L123	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 16[rbx]	 # _182, MEM[(int * *)__first_243 + 16B]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rcx	 # _182, _181
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _161, __first
	jne	.L126	 #,
.L125:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rbx, QWORD PTR 48[rsp]	 # __first, MEM[(struct _Vector_base *)&original_matrix]._M_impl.D.72114._M_start
.L122:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rbx, rbx	 # __first
	je	.L127	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 64[rsp]	 # _165, MEM[(struct _Vector_base *)&original_matrix]._M_impl.D.72114._M_end_of_storage
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rcx, rbx	 #, __first
 # lab_optim.cpp:41:     for(int i = 1; i <= iterations; i++) {
	add	ebp, 1	 # i,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	sub	rdx, rbx	 # _165, __first
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # lab_optim.cpp:41:     for(int i = 1; i <= iterations; i++) {
	cmp	ebp, 11	 # i,
	jne	.L130	 #,
.L129:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	r8d, 25	 #,
	lea	rdx, .LC5[rip]	 #,
	vxorps	xmm0, xmm0, xmm0	 # tmp284
	mov	rcx, r13	 #, tmp263
 # lab_optim.cpp:54:     double average_time = static_cast<double>(total_time) / iterations;
	vcvtsi2sd	xmm0, xmm0, r14	 # tmp285, tmp284, total_time
 # lab_optim.cpp:54:     double average_time = static_cast<double>(total_time) / iterations;
	vdivsd	xmm1, xmm0, QWORD PTR .LC4[rip]	 # average_time, _1,
	vmovsd	QWORD PTR 32[rsp], xmm1	 # %sfp, average_time
.LEHB15:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:232:       { return _M_insert(__f); }
	vmovsd	xmm1, QWORD PTR 32[rsp]	 # average_time, %sfp
	mov	rcx, r13	 #, tmp263
	call	_ZNSo9_M_insertIdEERSoT_	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	r8d, 3	 #,
	lea	rdx, .LC3[rip]	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:232:       { return _M_insert(__f); }
	mov	rsi, rax	 # _30,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/ostream.h:739: 	__ostream_insert(__out, __s,
	mov	rcx, rax	 #, _30
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:67:     { return flush(__os.put(__os.widen('\n'))); }
	mov	rax, QWORD PTR [rsi]	 # MEM[(struct basic_ostream *)_30]._vptr.basic_ostream, MEM[(struct basic_ostream *)_30]._vptr.basic_ostream
	mov	rax, QWORD PTR -24[rax]	 # MEM[(long long int *)_185 + -24B], MEM[(long long int *)_185 + -24B]
	mov	rbx, QWORD PTR 240[rsi+rax]	 # _193, MEM[(const struct __ctype_type * *)_188 + 240B]
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/basic_ios.h:51:       if (!__f)
	test	rbx, rbx	 # _193
	je	.L155	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:884: 	if (_M_widen_ok)
	cmp	BYTE PTR 56[rbx], 0	 # MEM[(const struct ctype *)_193]._M_widen_ok,
	je	.L132	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:885: 	  return _M_widen[static_cast<unsigned char>(__c)];
	movzx	eax, BYTE PTR 67[rbx]	 # _201, MEM[(const struct ctype *)_193]._M_widen[10]
.L133:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:67:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # _190, _201
	mov	rcx, rsi	 #, _30
	call	_ZNSo3putEc	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:89:     { return __os.flush(); }
	mov	rcx, rax	 #, _191
	call	_ZNSo5flushEv	 #
	nop	
.LEHE15:
 # lab_optim.cpp:58: }
	vmovaps	xmm6, XMMWORD PTR 112[rsp]	 #,
	xor	eax, eax	 #
	add	rsp, 136	 #,
	pop	rbx	 #
	pop	rsi	 #
	pop	rdi	 #
	pop	rbp	 #
	pop	r12	 #
	pop	r13	 #
	pop	r14	 #
	pop	r15	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L123:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _161, __first
	jne	.L126	 #,
	jmp	.L125	 #
	.p2align 4,,10
	.p2align 3
.L117:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	add	rbx, 24	 # __first,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_construct.h:211: 	for (; __first != __last; ++__first)
	cmp	rsi, rbx	 # _167, __first
	jne	.L120	 #,
	jmp	.L119	 #
.L114:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:886: 	this->_M_widen_init();
	mov	QWORD PTR 32[rsp], rcx	 # %sfp, _141
.LEHB16:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:887: 	return this->do_widen(__c);
	mov	rcx, QWORD PTR 32[rsp]	 # _141, %sfp
	mov	edx, 10	 # prephitmp_44,
	mov	rax, QWORD PTR [rcx]	 # MEM[(const struct ctype *)_141].D.45405._vptr.facet, MEM[(const struct ctype *)_141].D.45405._vptr.facet
	mov	rax, QWORD PTR 48[rax]	 # _152, MEM[(int (*) () *)_151 + 48B]
	cmp	rax, QWORD PTR 40[rsp]	 # _152, %sfp
	je	.L115	 #,
	call	rax	 # _152
.LEHE16:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/ostream:67:     { return flush(__os.put(__os.widen('\n'))); }
	movsx	edx, al	 # prephitmp_44, _158
	jmp	.L115	 #
.L127:
 # lab_optim.cpp:41:     for(int i = 1; i <= iterations; i++) {
	add	ebp, 1	 # i,
 # lab_optim.cpp:41:     for(int i = 1; i <= iterations; i++) {
	cmp	ebp, 11	 # i,
	jne	.L130	 #,
	jmp	.L129	 #
.L132:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:886: 	this->_M_widen_init();
	mov	rcx, rbx	 #, _193
.LEHB17:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/locale_facets.h:887: 	return this->do_widen(__c);
	mov	rax, QWORD PTR [rbx]	 # MEM[(const struct ctype *)_193].D.45405._vptr.facet, MEM[(const struct ctype *)_193].D.45405._vptr.facet
	lea	rdx, _ZNKSt5ctypeIcE8do_widenEc[rip]	 # tmp248,
	mov	r8, QWORD PTR 48[rax]	 # _204, MEM[(int (*) () *)_203 + 48B]
	mov	eax, 10	 # _201,
	cmp	r8, rdx	 # _204, tmp248
	je	.L133	 #,
	mov	edx, 10	 #,
	mov	rcx, rbx	 #, _193
	call	r8	 # _204
	jmp	.L133	 #
.L140:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	mov	rdi, rax	 # tmp200, tmp272
	vzeroupper
.L110:
	mov	rcx, rsi	 #, _86
	mov	edx, 40000	 #,
	call	_ZdlPvy	 #
	mov	rcx, rdi	 #, tmp200
	call	_Unwind_Resume	 #
.L155:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/basic_ios.h:52: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.LEHE17:
.L154:
.LEHB18:
	call	_ZSt16__throw_bad_castv	 #
.LEHE18:
.L139:
 # lab_optim.cpp:52:     }
	lea	rcx, 80[rsp]	 #,
	mov	rbx, rax	 # tmp282,
	vzeroupper
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev	 #
.L135:
	lea	rcx, 48[rsp]	 #,
	call	_ZNSt6vectorIS_IiSaIiEESaIS1_EED1Ev	 #
	mov	rcx, rbx	 #, tmp252
.LEHB19:
	call	_Unwind_Resume	 #
.LEHE19:
.L138:
	mov	rbx, rax	 # tmp252, tmp283
	vzeroupper
	jmp	.L135	 #
.L141:
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_uninitialized.h:121: 	  std::_Destroy(_M_first, *_M_cur);
	mov	rcx, r12	 #, _103
	mov	rdx, rbx	 #, __first
	vzeroupper
	mov	rdi, rax	 # tmp270,
	call	_ZSt8_DestroyIPSt6vectorIiSaIiEEEvT_S4_	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rcx, QWORD PTR 48[rsp]	 # _70, MEM[(struct _Vector_base *)&original_matrix]._M_impl.D.72114._M_start
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:395: 	if (__p)
	test	rcx, rcx	 # _70
	je	.L110	 #,
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/stl_vector.h:376: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	mov	rdx, QWORD PTR 64[rsp]	 # _71, MEM[(struct _Vector_base *)&original_matrix]._M_impl.D.72114._M_end_of_storage
	sub	rdx, rcx	 # _71, _70
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/new_allocator.h:172: 	_GLIBCXX_OPERATOR_DELETE(_GLIBCXX_SIZED_DEALLOC(__p, __n));
	call	_ZdlPvy	 #
 # C:/Program Files/w64devkit/lib/gcc/x86_64-w64-mingw32/15.2.0/include/c++/bits/alloc_traits.h:649:       { __a.deallocate(__p, __n); }
	jmp	.L110	 #
	.seh_handler	__gxx_personality_seh0, @unwind, @except
	.seh_handlerdata
.LLSDA3083:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3083-.LLSDACSB3083
.LLSDACSB3083:
	.uleb128 .LEHB10-.LFB3083
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB3083
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L140-.LFB3083
	.uleb128 0
	.uleb128 .LEHB12-.LFB3083
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L141-.LFB3083
	.uleb128 0
	.uleb128 .LEHB13-.LFB3083
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L138-.LFB3083
	.uleb128 0
	.uleb128 .LEHB14-.LFB3083
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L139-.LFB3083
	.uleb128 0
	.uleb128 .LEHB15-.LFB3083
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB3083
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L139-.LFB3083
	.uleb128 0
	.uleb128 .LEHB17-.LFB3083
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB3083
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L139-.LFB3083
	.uleb128 0
	.uleb128 .LEHB19-.LFB3083
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3083:
	.section	.text.startup,"x"
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.def	__main;	.scl	2;	.type	32;	.endef
	.def	__gxx_personality_seh0;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (GNU) 15.2.0"
	.def	omp_get_num_threads;	.scl	2;	.type	32;	.endef
	.def	omp_get_thread_num;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	rand;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	GOMP_parallel;	.scl	2;	.type	32;	.endef
	.def	_ZNSt6chrono3_V212system_clock3nowEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_ZNSolsEi;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIxEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.p2align	3, 0
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
