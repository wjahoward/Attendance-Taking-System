.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 8,1
	.asciz "Mono AOT Compiler 5.8.0 (tarball Thu Mar 29 18:51:02 EDT 2018)"
	.asciz "BeaconTest.iOS.exe"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,8,5
	.asciz "intptr"
LDIE_U:

	.byte 4,8,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,8,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,8,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,8,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,120,30
	.align 3
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1_T_REF__ctor_System_Action_1_T_REF
BeaconTest_Command_1_T_REF__ctor_System_Action_1_T_REF:
.file 1 "/Users/admin/Desktop/FYP/BeaconTest/Helpers/Command.cs"
.loc 1 0 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #200]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9400000
bl _p_1
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf9003ba0
bl _p_3
.word 0xf9401bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f9
.word 0xaa1903e1
.word 0xf94017a0
.word 0xf9000b20
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 1 8 0
.word 0xf9401bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9002ba0
.word 0xaa1903e0
.word 0xf90037a0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000cc0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94037a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000b00
.word 0xf9001020
.word 0xf90033a1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013a0
.word 0xf9400000
bl _p_4
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf9001401
.word 0xf9002fa0
.word 0xf94013a0
.word 0xf9400000
bl _p_5
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf9002022

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #216]
.word 0xf9401443
.word 0xf9000c23
.word 0xf9401042
.word 0xf9000822
.word 0xd2800002
.word 0x3901803f
bl _p_6
.word 0xf9401bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.loc 1 9 0
.word 0xf9401bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.loc 1 10 0
.word 0xf9401bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400800
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000240
.loc 1 11 0
.word 0xf9401bb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 12 0
.word 0xf9401bb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_0:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1_T_REF__ctor_System_Action_1_T_REF_System_Func_2_T_REF_bool
BeaconTest_Command_1_T_REF__ctor_System_Action_1_T_REF_System_Func_2_T_REF_bool:
.loc 1 0 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xf90013b8
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #224]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9400000
bl _p_10
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0xf90053a0
bl _p_11
.word 0xf94023b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f8
.word 0xaa1803e1
.word 0xf9401ba0
.word 0xf9000b00
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1803e0
.word 0xf9401fa0
.word 0xf9000f00
.word 0x91006301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 1 14 0
.word 0xf94023b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90033a0
.word 0xaa1803e0
.word 0xf9004fa0
.word 0xeb1f031f
.word 0x10000011
.word 0x54001740

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9404fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001580
.word 0xf9001020
.word 0xf9004ba1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9400000
bl _p_12
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xf9001401
.word 0xf90047a0
.word 0xf94017a0
.word 0xf9400000
bl _p_13
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf90037a0
.word 0xaa1803e0
.word 0xf90043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540010c0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000f00
.word 0xf9001020
.word 0xf9003fa1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9400000
bl _p_14
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9001401
.word 0xf9003ba0
.word 0xf94017a0
.word 0xf9400000
bl _p_15
.word 0xaa0003e3
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403ba2
.word 0xf9002043

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #240]
.word 0xf9401464
.word 0xf9000c44
.word 0xf9401063
.word 0xf9000843
.word 0xd2800003
.word 0x3901805f
bl _p_16
.word 0xf94023b1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.loc 1 15 0
.word 0xf94023b1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.loc 1 16 0
.word 0xf94023b1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400800
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000240
.loc 1 17 0
.word 0xf94023b1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 18 0
.word 0xf94023b1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400f00
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f6
.word 0xaa1603e0
.word 0x34000240
.loc 1 19 0
.word 0xf94023b1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800221
.word 0xd2800221
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 20 0
.word 0xf94023b1
.word 0xf943d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xf94013b8
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_1:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__ctor_System_Action_1_object
BeaconTest_Command__ctor_System_Action_1_object:
.loc 1 28 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #248]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 1 29 0
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 1 30 0
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000240
.loc 1 31 0
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 33 0
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf9000f3a
.word 0x91006320
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 1 34 0
.word 0xf94017b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__ctor_System_Action
BeaconTest_Command__ctor_System_Action:
.loc 1 0 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #256]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #264]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf90033a0
bl _p_17
.word 0xf9401bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa1803e1
.word 0xf94017a0
.word 0xf9000b00
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 1 36 0
.word 0xf9401bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9002ba0
.word 0xaa1803e0
.word 0xf9002fa0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf9402fa2
.word 0xeb1f005f
.word 0x10000011
.word 0x54000a20
.word 0xf9001022
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #272]
.word 0xf9001422

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #280]
.word 0xf9002022

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #288]
.word 0xf9401443
.word 0xf9000c23
.word 0xf9401042
.word 0xf9000822
.word 0xd2800002
.word 0x3901803f
bl _p_6
.word 0xf9401bb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.loc 1 37 0
.word 0xf9401bb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.loc 1 38 0
.word 0xf9401bb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400800
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000240
.loc 1 39 0
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 40 0
.word 0xf9401bb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_3:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__ctor_System_Action_1_object_System_Func_2_object_bool
BeaconTest_Command__ctor_System_Action_1_object_System_Func_2_object_bool:
.loc 1 42 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013ba
.word 0xaa0003f8
.word 0xf90017a1
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #296]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94017a1
.word 0xaa1803e0
bl _p_6
.word 0xf9401bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 1 43 0
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 1 44 0
.word 0xf9401bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xeb1f035f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000240
.loc 1 45 0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800221
.word 0xd2800221
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 47 0
.word 0xf9401bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf9000b1a
.word 0x91004300
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 1 48 0
.word 0xf9401bb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__ctor_System_Action_System_Func_1_bool
BeaconTest_Command__ctor_System_Action_System_Func_1_bool:
.loc 1 0 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xf90013b7
.word 0xf90017a0
.word 0xf9001ba1
.word 0xf9001fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #312]
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0xf90043a0
bl _p_18
.word 0xf94023b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f7
.word 0xaa1703e1
.word 0xf9401ba0
.word 0xf9000ae0
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1703e0
.word 0xf9401fa0
.word 0xf9000ee0
.word 0x910062e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 1 50 0
.word 0xf94023b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90033a0
.word 0xaa1703e0
.word 0xf9003fa0
.word 0xeb1f02ff
.word 0x10000011
.word 0x540015a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf9403fa1
.word 0xeb1f003f
.word 0x10000011
.word 0x54001400
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #320]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #328]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #336]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf90037a0
.word 0xaa1703e0
.word 0xf9003ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403ba3
.word 0xeb1f007f
.word 0x10000011
.word 0x54000e00
.word 0xf9001043
.word 0x91008044
.word 0xd349fc84
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0084

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x5, [x16, #16]
.word 0x8b050084
.word 0xd280003e
.word 0x3900009e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #344]
.word 0xf9001443

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #352]
.word 0xf9002043

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #360]
.word 0xf9401464
.word 0xf9000c44
.word 0xf9401063
.word 0xf9000843
.word 0xd2800003
.word 0x3901805f
bl _p_16
.word 0xf94023b1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.loc 1 51 0
.word 0xf94023b1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.loc 1 52 0
.word 0xf94023b1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400800
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f6
.word 0xaa1603e0
.word 0x34000240
.loc 1 53 0
.word 0xf94023b1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 54 0
.word 0xf94023b1
.word 0xf9432a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400ee0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f5
.word 0xaa1503e0
.word 0x34000240
.loc 1 55 0
.word 0xf94023b1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800221
.word 0xd2800221
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 56 0
.word 0xf94023b1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf943b231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xf94013b7
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_5:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_CanExecute_object
BeaconTest_Command_CanExecute_object:
.loc 1 59 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 1 60 0
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340002e0
.loc 1 61 0
.word 0xf9401bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b22
.word 0xf94017a1
.word 0xaa0203e0
.word 0xf9002fa2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9402fa1
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x53001c00
.word 0xaa0003f7
.word 0x14000008
.loc 1 63 0
.word 0xf9401bb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f7
.loc 1 64 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1703e0
.word 0xf9401bb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_6:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_add_CanExecuteChanged_System_EventHandler
BeaconTest_Command_add_CanExecuteChanged_System_EventHandler:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #376]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401320
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_19
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #384]
.word 0xeb01001f
.word 0x10000011
.word 0x540006c1
.word 0xaa1503e0
.word 0xaa1503f6
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540005a0
.word 0x91008320
.word 0xaa1503e1
.word 0xaa1703e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #392]
.word 0xc85f7c10
.word 0xeb17021f
.word 0x54000061
.word 0xc811fc15
.word 0x35ffff91
.word 0xd50330bf
.word 0xaa1003e1
.word 0xf90033a1
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa0003e1
.word 0xaa1703e1
.word 0xeb17001f
.word 0x54fff841
.word 0xf94023b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9

Lme_7:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_remove_CanExecuteChanged_System_EventHandler
BeaconTest_Command_remove_CanExecuteChanged_System_EventHandler:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401320
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_20
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #384]
.word 0xeb01001f
.word 0x10000011
.word 0x540006c1
.word 0xaa1503e0
.word 0xaa1503f6
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540005a0
.word 0x91008320
.word 0xaa1503e1
.word 0xaa1703e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #392]
.word 0xc85f7c10
.word 0xeb17021f
.word 0x54000061
.word 0xc811fc15
.word 0x35ffff91
.word 0xd50330bf
.word 0xaa1003e1
.word 0xf90033a1
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa0003e1
.word 0xaa1703e1
.word 0xeb17001f
.word 0x54fff841
.word 0xf94023b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9

Lme_8:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_Execute_object
BeaconTest_Command_Execute_object:
.loc 1 69 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #408]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 1 70 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c02
.word 0xf9400fa1
.word 0xaa0203e0
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 1 71 0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_ChangeCanExecute
BeaconTest_Command_ChangeCanExecute:
.loc 1 74 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #416]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 1 75 0
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401340
.word 0xaa0003f9
.loc 1 76 0
.word 0xf94017b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xeb1f033f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000260
.loc 1 77 0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #424]
.word 0xf9400002
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xf9400f30
.word 0xd63f0200
.word 0xf94017b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.loc 1 78 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator_get_Instance
BeaconTest_ServiceLocator_get_Instance:
.file 2 "/Users/admin/Desktop/FYP/BeaconTest/Helpers/ServiceLocator.cs"
.loc 2 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #432]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xf9400001
.word 0xaa0103e0
.word 0xf940003e
bl _p_21
.word 0xf9001ba0
.word 0xf9400bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator_Register_TContract_REF_TService_REF
BeaconTest_ServiceLocator_Register_TContract_REF_TService_REF:
.loc 2 14 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001bb9
.word 0xf9002faf
.word 0xf9001fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #448]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xf94023b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 2 15 0
.word 0xf94023b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0xf9400800
.word 0xf90037a0
.word 0xf9402fa0
bl _p_22
.word 0xf90033a0
.word 0xf9402fa0
bl _p_23
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402fa0
bl _p_25
.word 0xf94033a1
.word 0xf94037a2
.word 0x91002003
.word 0xf9400400
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1903e3
.word 0xaa0203f8
.word 0xaa0103f7
.word 0xaa0003f6
.word 0xb50009d9
.word 0xaa1803e0
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xf9402fa0
bl _p_23
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402fa0
bl _p_25
.word 0xf9400000
.word 0xf90043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000de0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #456]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000c20
.word 0xf9001020
.word 0xf9003fa1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402fa0
bl _p_26
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9001401
.word 0xf9003ba0
.word 0xf9402fa0
bl _p_27
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #464]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf90033a0
.word 0xaa1503e0
.word 0xf90037a0
.word 0xf9402fa0
bl _p_23
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402fa0
bl _p_25
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf94037a2
.word 0x91002021
.word 0xf9000022
.word 0xaa0003f6
.word 0xaa1803e0
.word 0xaa1703e0
.word 0xaa1603e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0x3980b410
.word 0xb5000050
bl _p_24

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90033a0
.word 0xaa1603e1
bl _p_28
.word 0xf94023b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a2
.word 0xaa1803e0
.word 0xaa1703e1
.word 0xf940031e
bl _p_29
.word 0xf94023b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.loc 2 17 0
.word 0xf94023b1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xf9401bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_c:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator_Get_T_REF
BeaconTest_ServiceLocator_Get_T_REF:
.loc 2 20 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xf90027af
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #480]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9002bbf
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.loc 2 22 0
.word 0xf9401bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9400800
.word 0xf90037a0
.word 0xf94027a0
bl _p_30
.word 0xaa0003e1
.word 0xf94037a3
.word 0x910143a2
.word 0xaa0303e0
.word 0xf940007e
bl _p_31
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000440
.loc 2 23 0
.word 0xf9401bb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.loc 2 24 0
.word 0xf9401bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf90033a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf94033a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_32
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
bl _p_33
.word 0xaa0003e2
.word 0xf9400441
.word 0xf9402fa0
bl _p_34
.word 0xaa0003f8
.word 0x14000008
.loc 2 27 0
.word 0xf9401bb1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0xd2800000
.word 0xd2800018
.loc 2 28 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9401bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_d:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__ctor
BeaconTest_ServiceLocator__ctor:
.loc 2 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #488]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #496]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9001ba0
bl _p_35
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__cctor
BeaconTest_ServiceLocator__cctor:
.loc 2 8 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #504]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf9400000
.word 0xf90023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540008a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #520]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf94023a1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000700
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #528]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #536]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #544]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf9001fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #552]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_36
.word 0xf9400bb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #440]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_f:
.text
	.align 4
	.no_dead_strip BeaconTest_Item_get_Id
BeaconTest_Item_get_Id:
.file 3 "/Users/admin/Desktop/FYP/BeaconTest/Models/Item.cs"
.loc 3 7 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_10:
.text
	.align 4
	.no_dead_strip BeaconTest_Item_set_Id_string
BeaconTest_Item_set_Id_string:
.loc 3 7 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #568]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_11:
.text
	.align 4
	.no_dead_strip BeaconTest_Item_get_Text
BeaconTest_Item_get_Text:
.loc 3 8 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_12:
.text
	.align 4
	.no_dead_strip BeaconTest_Item_set_Text_string
BeaconTest_Item_set_Text_string:
.loc 3 8 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #584]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip BeaconTest_Item_get_Description
BeaconTest_Item_get_Description:
.loc 3 9 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14:
.text
	.align 4
	.no_dead_strip BeaconTest_Item_set_Description_string
BeaconTest_Item_set_Description_string:
.loc 3 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #600]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip BeaconTest_Item__ctor
BeaconTest_Item__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #608]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__ctor
BeaconTest_CloudDataStore__ctor:
.file 4 "/Users/admin/Desktop/FYP/BeaconTest/Services/CloudDataStore.cs"
.loc 4 18 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #616]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.loc 4 19 0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 4 20 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #624]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9002ba0
bl _p_37
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 21 0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf90023a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #632]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #640]
.word 0xf9400021
bl _p_38
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #648]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf94027a1
.word 0xf9001fa0
bl _p_39
.word 0xf9400fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xf94023a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_40
.word 0xf9400fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.loc 4 23 0
.word 0xf9400fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9001ba0
bl _p_41
.word 0xf9400fb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9000f40
.word 0x91006341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 24 0
.word 0xf9400fb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore_GetItemsAsync_bool
BeaconTest_CloudDataStore_GetItemsAsync_bool:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #664]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #672]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf90053a0
bl _p_42
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x394063a1
.word 0x3901b001
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
.word 0x910143a0
.word 0xaa0003e8
bl _p_43
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #688]
bl _p_44
.word 0xf94013b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
bl _p_45
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_18:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore_GetItemAsync_string
BeaconTest_CloudDataStore_GetItemAsync_string:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #696]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #704]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf90053a0
bl _p_46
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
.word 0x910143a0
.word 0xaa0003e8
bl _p_47
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #720]
bl _p_48
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
bl _p_49
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_19:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore_AddItemAsync_BeaconTest_Item
BeaconTest_CloudDataStore_AddItemAsync_BeaconTest_Item:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #728]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xd2800c01
.word 0xd2800c01
bl _p_2
.word 0xf90053a0
bl _p_50
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x910143a0
.word 0xaa0003e8
bl _p_51
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900581e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #752]
bl _p_52
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_53
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_1a:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore_UpdateItemAsync_BeaconTest_Item
BeaconTest_CloudDataStore_UpdateItemAsync_BeaconTest_Item:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #760]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #768]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf90053a0
bl _p_54
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x910143a0
.word 0xaa0003e8
bl _p_51
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #776]
bl _p_55
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_53
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_1b:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore_DeleteItemAsync_string
BeaconTest_CloudDataStore_DeleteItemAsync_string:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #784]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #792]
.word 0xd2800b01
.word 0xd2800b01
bl _p_2
.word 0xf90053a0
bl _p_56
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x910143a0
.word 0xaa0003e8
bl _p_51
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #800]
bl _p_57
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_53
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_1c:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__ctor
BeaconTest_MockDataStore__ctor:
.file 5 "/Users/admin/Desktop/FYP/BeaconTest/Services/MockDataStore.cs"
.loc 5 12 0 prologue_end
.word 0xd2806c10
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xa9007bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #808]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0x9103e3a0
.word 0xd2800000
.word 0xb900fbbf
.word 0xb900ffbf
.word 0xb90103bf
.word 0xb90107bf
.word 0x910383a0
.word 0xd2800000
.word 0xf90073a0
.word 0xf90077a0
.word 0xf9007ba0
.word 0xd2800018
.word 0xf9402bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9402bb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 5 13 0
.word 0xf9402bb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.loc 5 14 0
.word 0xf9402bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf901afa0
bl _p_41
.word 0xf9402bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf941afa0
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 5 15 0
.word 0xf9402bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf901aba0
bl _p_41
.word 0xf9402bb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf941aba0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf9018ba0
.word 0xaa1703e0
.word 0xf90193a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf901a7a0
bl _p_58
.word 0xf9402bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf941a7a0
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xf9019ba0
.word 0xaa1603e0
.word 0xf901a3a0
.word 0x910343a0
.word 0xf90087a0
bl _p_59
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402bb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910343a0
.word 0x9103e3a0
.word 0xb980d3a0
.word 0xb900fba0
.word 0xb980d7a0
.word 0xb900ffa0
.word 0xb980dba0
.word 0xb90103a0
.word 0xb980dfa0
.word 0xb90107a0
.word 0x9103e3a0
bl _p_60
.word 0xf9019fa0
.word 0xf9402bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9419fa1
.word 0xf941a3a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xf9402bb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9419ba0
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xf90197a0
.word 0xaa1503e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #824]
.word 0xaa1503e0
.word 0xf94002be
bl _p_62
.word 0xf9402bb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94197a0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf9018fa0
.word 0xaa1403e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa1403e0
.word 0xf940029e
bl _p_63
.word 0xf9402bb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9418fa1
.word 0xf94193a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf9430e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9418ba0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf9016ba0
.word 0xaa1303e0
.word 0xf90173a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90187a0
bl _p_58
.word 0xf9402bb1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94187a0
.word 0xf9008ba0
.word 0xf9408ba0
.word 0xf9017ba0
.word 0xf9408ba0
.word 0xf90183a0
.word 0x910303a0
.word 0xf90087a0
bl _p_59
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402bb1
.word 0xf9439631
.word 0xb4000051
.word 0xd63f0220
.word 0x910303a0
.word 0x9103e3a0
.word 0xb980c3a0
.word 0xb900fba0
.word 0xb980c7a0
.word 0xb900ffa0
.word 0xb980cba0
.word 0xb90103a0
.word 0xb980cfa0
.word 0xb90107a0
.word 0x9103e3a0
bl _p_60
.word 0xf9017fa0
.word 0xf9402bb1
.word 0xf943da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9417fa1
.word 0xf94183a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xf9402bb1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9417ba0
.word 0xf9008fa0
.word 0xf9408fa0
.word 0xf90177a0
.word 0xf9408fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #840]
.word 0xaa0203e0
.word 0xf940005e
bl _p_62
.word 0xf9402bb1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94177a0
.word 0xf90093a0
.word 0xf94093a0
.word 0xf9016fa0
.word 0xf94093a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa0203e0
.word 0xf940005e
bl _p_63
.word 0xf9402bb1
.word 0xf9447631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9416fa1
.word 0xf94173a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf9449a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9416ba0
.word 0xf90097a0
.word 0xf94097a0
.word 0xf9014ba0
.word 0xf94097a0
.word 0xf90153a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90167a0
bl _p_58
.word 0xf9402bb1
.word 0xf944e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94167a0
.word 0xf9009ba0
.word 0xf9409ba0
.word 0xf9015ba0
.word 0xf9409ba0
.word 0xf90163a0
.word 0x9102c3a0
.word 0xf90087a0
bl _p_59
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402bb1
.word 0xf9452231
.word 0xb4000051
.word 0xd63f0220
.word 0x9102c3a0
.word 0x9103e3a0
.word 0xb980b3a0
.word 0xb900fba0
.word 0xb980b7a0
.word 0xb900ffa0
.word 0xb980bba0
.word 0xb90103a0
.word 0xb980bfa0
.word 0xb90107a0
.word 0x9103e3a0
bl _p_60
.word 0xf9015fa0
.word 0xf9402bb1
.word 0xf9456631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9415fa1
.word 0xf94163a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xf9402bb1
.word 0xf9458a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9415ba0
.word 0xf9009fa0
.word 0xf9409fa0
.word 0xf90157a0
.word 0xf9409fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #848]
.word 0xaa0203e0
.word 0xf940005e
bl _p_62
.word 0xf9402bb1
.word 0xf945c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94157a0
.word 0xf900a3a0
.word 0xf940a3a0
.word 0xf9014fa0
.word 0xf940a3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa0203e0
.word 0xf940005e
bl _p_63
.word 0xf9402bb1
.word 0xf9460231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9414fa1
.word 0xf94153a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf9462631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9414ba0
.word 0xf900a7a0
.word 0xf940a7a0
.word 0xf9012ba0
.word 0xf940a7a0
.word 0xf90133a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90147a0
bl _p_58
.word 0xf9402bb1
.word 0xf9466e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94147a0
.word 0xf900aba0
.word 0xf940aba0
.word 0xf9013ba0
.word 0xf940aba0
.word 0xf90143a0
.word 0x910283a0
.word 0xf90087a0
bl _p_59
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402bb1
.word 0xf946ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910283a0
.word 0x9103e3a0
.word 0xb980a3a0
.word 0xb900fba0
.word 0xb980a7a0
.word 0xb900ffa0
.word 0xb980aba0
.word 0xb90103a0
.word 0xb980afa0
.word 0xb90107a0
.word 0x9103e3a0
bl _p_60
.word 0xf9013fa0
.word 0xf9402bb1
.word 0xf946f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9413fa1
.word 0xf94143a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xf9402bb1
.word 0xf9471631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9413ba0
.word 0xf900afa0
.word 0xf940afa0
.word 0xf90137a0
.word 0xf940afa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #856]
.word 0xaa0203e0
.word 0xf940005e
bl _p_62
.word 0xf9402bb1
.word 0xf9475231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94137a0
.word 0xf900b3a0
.word 0xf940b3a0
.word 0xf9012fa0
.word 0xf940b3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa0203e0
.word 0xf940005e
bl _p_63
.word 0xf9402bb1
.word 0xf9478e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9412fa1
.word 0xf94133a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf947b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9412ba0
.word 0xf900b7a0
.word 0xf940b7a0
.word 0xf9010ba0
.word 0xf940b7a0
.word 0xf90113a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90127a0
bl _p_58
.word 0xf9402bb1
.word 0xf947fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94127a0
.word 0xf900bba0
.word 0xf940bba0
.word 0xf9011ba0
.word 0xf940bba0
.word 0xf90123a0
.word 0x910243a0
.word 0xf90087a0
bl _p_59
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402bb1
.word 0xf9483a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910243a0
.word 0x9103e3a0
.word 0xb98093a0
.word 0xb900fba0
.word 0xb98097a0
.word 0xb900ffa0
.word 0xb9809ba0
.word 0xb90103a0
.word 0xb9809fa0
.word 0xb90107a0
.word 0x9103e3a0
bl _p_60
.word 0xf9011fa0
.word 0xf9402bb1
.word 0xf9487e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411fa1
.word 0xf94123a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xf9402bb1
.word 0xf948a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9411ba0
.word 0xf900bfa0
.word 0xf940bfa0
.word 0xf90117a0
.word 0xf940bfa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #864]
.word 0xaa0203e0
.word 0xf940005e
bl _p_62
.word 0xf9402bb1
.word 0xf948de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94117a0
.word 0xf900c3a0
.word 0xf940c3a0
.word 0xf9010fa0
.word 0xf940c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa0203e0
.word 0xf940005e
bl _p_63
.word 0xf9402bb1
.word 0xf9491a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9410fa1
.word 0xf94113a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf9493e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9410ba0
.word 0xf900c7a0
.word 0xf940c7a0
.word 0xf900eba0
.word 0xf940c7a0
.word 0xf900f3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90107a0
bl _p_58
.word 0xf9402bb1
.word 0xf9498631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94107a0
.word 0xf900cba0
.word 0xf940cba0
.word 0xf900fba0
.word 0xf940cba0
.word 0xf90103a0
.word 0x910203a0
.word 0xf90087a0
bl _p_59
.word 0xf94087be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9402bb1
.word 0xf949c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910203a0
.word 0x9103e3a0
.word 0xb98083a0
.word 0xb900fba0
.word 0xb98087a0
.word 0xb900ffa0
.word 0xb9808ba0
.word 0xb90103a0
.word 0xb9808fa0
.word 0xb90107a0
.word 0x9103e3a0
bl _p_60
.word 0xf900ffa0
.word 0xf9402bb1
.word 0xf94a0a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940ffa1
.word 0xf94103a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_61
.word 0xf9402bb1
.word 0xf94a2e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940fba0
.word 0xf900cfa0
.word 0xf940cfa0
.word 0xf900f7a0
.word 0xf940cfa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #872]
.word 0xaa0203e0
.word 0xf940005e
bl _p_62
.word 0xf9402bb1
.word 0xf94a6a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940f7a0
.word 0xf900d3a0
.word 0xf940d3a0
.word 0xf900efa0
.word 0xf940d3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xaa0203e0
.word 0xf940005e
bl _p_63
.word 0xf9402bb1
.word 0xf94aa631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940efa1
.word 0xf940f3a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf94aca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba0
.word 0xaa0003f9
.loc 5 25 0
.word 0xf9402bb1
.word 0xf94ae231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf94af231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x9101a3a0
.word 0xaa0003e8
.word 0xaa1903e0
.word 0xf940033e
bl _p_65
.word 0xf9402bb1
.word 0xf94b1a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0
.word 0x910383a0
.word 0xf94037a0
.word 0xf90073a0
.word 0xf9403ba0
.word 0xf90077a0
.word 0xf9403fa0
.word 0xf9007ba0
.word 0x1400002d
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf94b5e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910383a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #880]
bl _p_66
.word 0xf900efa0
.word 0xf9402bb1
.word 0xf94b8631
.word 0xb4000051
.word 0xd63f0220
.word 0xf940efa0
.word 0xf900eba0
.word 0xaa0003f8
.loc 5 26 0
.word 0xf9402bb1
.word 0xf94ba231
.word 0xb4000051
.word 0xd63f0220
.loc 5 27 0
.word 0xf9402bb1
.word 0xf94bb231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba1
.word 0xaa1a03e0
.word 0xf9400b42
.word 0xaa0103e0
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9402bb1
.word 0xf94bde31
.word 0xb4000051
.word 0xd63f0220
.loc 5 28 0
.word 0xf9402bb1
.word 0xf94bee31
.word 0xb4000051
.word 0xd63f0220
.loc 5 25 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf94c0e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910383a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #880]
bl _p_67
.word 0x53001c00
.word 0xf900eba0
.word 0xf9402bb1
.word 0xf94c3a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf940eba0
.word 0x35fff800
.word 0xf900d7bf
.word 0x94000005
.word 0xf940d7a0
.word 0xb4000040
bl _p_68
.word 0x1400000d
.word 0xf900e3be
.word 0x910383a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #880]
bl _p_69
.word 0xf9402bb1
.word 0xf94c8231
.word 0xb4000051
.word 0xd63f0220
.word 0xf940e3be
.word 0xd61f03c0
.loc 5 29 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf94caa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf94cba31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa9407bfd
.word 0xd2806c10
.word 0x910003f1
.word 0x8b100231
.word 0x9100023f
.word 0xd65f03c0

Lme_22:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore_AddItemAsync_BeaconTest_Item
BeaconTest_MockDataStore_AddItemAsync_BeaconTest_Item:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #888]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #896]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf90053a0
bl _p_70
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x910143a0
.word 0xaa0003e8
bl _p_51
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #904]
bl _p_71
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_53
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_23:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore_UpdateItemAsync_BeaconTest_Item
BeaconTest_MockDataStore_UpdateItemAsync_BeaconTest_Item:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #912]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #920]
.word 0xd2800b01
.word 0xd2800b01
bl _p_2
.word 0xf90053a0
bl _p_72
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x910143a0
.word 0xaa0003e8
bl _p_51
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #928]
bl _p_73
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_53
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_24:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore_DeleteItemAsync_string
BeaconTest_MockDataStore_DeleteItemAsync_string:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #936]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #944]
.word 0xd2800b01
.word 0xd2800b01
bl _p_2
.word 0xf90053a0
bl _p_74
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0x910143a0
.word 0xaa0003e8
bl _p_51
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #952]
bl _p_75
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_53
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_25:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore_GetItemAsync_string
BeaconTest_MockDataStore_GetItemAsync_string:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #960]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #968]
.word 0xd2800b01
.word 0xd2800b01
bl _p_2
.word 0xf90053a0
bl _p_76
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
.word 0x910143a0
.word 0xaa0003e8
bl _p_47
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #976]
bl _p_77
.word 0xf94013b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
bl _p_49
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_26:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore_GetItemsAsync_bool
BeaconTest_MockDataStore_GetItemsAsync_bool:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #984]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #992]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf90053a0
bl _p_78
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x394063a1
.word 0x39011001
.word 0xf94043a0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
.word 0x910143a0
.word 0xaa0003e8
bl _p_43
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1000]
bl _p_79
.word 0xf94013b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000260
.word 0x91004000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
bl _p_45
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_27:
.text
	.align 4
	.no_dead_strip BeaconTest_AboutViewModel__ctor
BeaconTest_AboutViewModel__ctor:
.file 6 "/Users/admin/Desktop/FYP/BeaconTest/ViewModels/AboutViewModel.cs"
.loc 6 7 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1008]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_80
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 6 8 0
.word 0xf9401fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 6 9 0
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1016]
.word 0xaa1a03e0
bl _p_81
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.loc 6 11 0
.word 0xf9401fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1024]
.word 0xf9400000
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1903e1
.word 0xaa1a03f8
.word 0xaa0003f7
.word 0xb5000759
.word 0xaa1803e0
.word 0xaa1703e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1032]
.word 0xf9400000
.word 0xf9002ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf9402ba1
.word 0xeb1f003f
.word 0x10000011
.word 0x54000a00
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1048]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1056]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1064]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xaa0003f6
.word 0xaa0003e1
.word 0xaa0003e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1024]
.word 0xf9000020
.word 0xaa0003f7
.word 0xaa1803e0
.word 0xaa1703e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1072]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9002ba0
.word 0xaa1703e1
bl _p_82
.word 0xf9401fb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9001700
.word 0x9100a301
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 6 12 0
.word 0xf9401fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_28:
.text
	.align 4
	.no_dead_strip BeaconTest_AboutViewModel_get_OpenWebCommand
BeaconTest_AboutViewModel_get_OpenWebCommand:
.loc 6 14 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1080]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_29:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_get_DataStore
BeaconTest_BaseViewModel_get_DataStore:
.file 7 "/Users/admin/Desktop/FYP/BeaconTest/ViewModels/BaseViewModel.cs"
.loc 7 10 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1088]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
bl _p_83
.word 0xf90027a0
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1096]
.word 0xf940001e
bl _p_84
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003fa
.word 0xaa0003e1
.word 0xaa0003e1
.word 0xaa0003f9
.word 0xb5000200
.word 0xaa1903e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1104]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf90023a0
bl _p_85
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_2a:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_get_IsBusy
BeaconTest_BaseViewModel_get_IsBusy:
.loc 7 15 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1112]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x39408000
.word 0x53001c00
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2b:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_set_IsBusy_bool
BeaconTest_BaseViewModel_set_IsBusy_bool:
.loc 7 16 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1120]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540003c0
.word 0x91008321
.word 0x394063a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #1128]
.word 0xd2800000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1136]
.word 0xaa1903e0
.word 0xd2800004
bl _p_86
.word 0x53001c00
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_2c:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_get_Title
BeaconTest_BaseViewModel_get_Title:
.loc 7 22 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1144]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9400800
.word 0xaa0003f9
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_set_Title_string
BeaconTest_BaseViewModel_set_Title_string:
.loc 7 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1152]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540003c0
.word 0x91004321
.word 0xf9400fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #1160]
.word 0xd2800000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1168]
.word 0xaa1903e0
.word 0xd2800004
bl _p_87
.word 0x53001c00
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_2e:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_SetProperty_T_REF_T_REF__T_REF_string_System_Action
BeaconTest_BaseViewModel_SetProperty_T_REF_T_REF__T_REF_string_System_Action:
.loc 7 29 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa90263b7
.word 0xf9001bba
.word 0xf90033af
.word 0xf9001fa0
.word 0xaa0103f7
.word 0xaa0203f8
.word 0xf90023a3
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1176]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800015
.word 0xd2800014
.word 0xf94027b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 30 0
.word 0xf94027b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_88
.word 0xaa0003ef
bl _p_89
.word 0xf9003fa0
.word 0xf94027b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa3
.word 0xaa1703e0
.word 0xf94002e1
.word 0xaa1803e0
.word 0xaa0303e0
.word 0xaa1803e2
.word 0xf9400063
.word 0xf9404c70
.word 0xd63f0200
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x53001c00
.word 0xaa0003f5
.word 0xaa1503e0
.word 0x34000120
.loc 7 31 0
.word 0xf94027b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f4
.word 0x14000036
.loc 7 33 0
.word 0xf94027b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xf90002f8
.word 0xd349fee0
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.loc 7 34 0
.word 0xf94027b1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400013a
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400f50
.word 0xd63f0200
.word 0xf94027b1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 35 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0xf94023a1
bl _p_90
.word 0xf94027b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.loc 7 36 0
.word 0xf94027b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f4
.loc 7 37 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf94027b1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa94263b7
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
BeaconTest_BaseViewModel_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1184]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f20
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_19
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1192]
.word 0xeb01001f
.word 0x10000011
.word 0x540006c1
.word 0xaa1503e0
.word 0xaa1503f6
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540005a0
.word 0x91006320
.word 0xaa1503e1
.word 0xaa1703e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xc85f7c10
.word 0xeb17021f
.word 0x54000061
.word 0xc811fc15
.word 0x35ffff91
.word 0xd50330bf
.word 0xaa1003e1
.word 0xf90033a1
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa0003e1
.word 0xaa1703e1
.word 0xeb17001f
.word 0x54fff841
.word 0xf94023b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9

Lme_30:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
BeaconTest_BaseViewModel_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1208]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f20
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803f7
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
bl _p_20
.word 0xaa0003f5
.word 0xf94023b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb4000175
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1192]
.word 0xeb01001f
.word 0x10000011
.word 0x540006c1
.word 0xaa1503e0
.word 0xaa1503f6
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x540005a0
.word 0x91006320
.word 0xaa1503e1
.word 0xaa1703e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1200]
.word 0xc85f7c10
.word 0xeb17021f
.word 0x54000061
.word 0xc811fc15
.word 0x35ffff91
.word 0xd50330bf
.word 0xaa1003e1
.word 0xf90033a1
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #16]
.word 0x8b010000
.word 0xd280003e
.word 0x3900001e
.word 0xf94023b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa0003e1
.word 0xaa1703e1
.word 0xeb17001f
.word 0x54fff841
.word 0xf94023b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9

Lme_31:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_OnPropertyChanged_string
BeaconTest_BaseViewModel_OnPropertyChanged_string:
.loc 7 42 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1216]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 7 43 0
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400f20
.word 0xaa0003f8
.loc 7 44 0
.word 0xf9401bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800000
.word 0xeb1f031f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x340000c0
.loc 7 45 0
.word 0xf9401bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001f
.loc 7 47 0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xf94017a0
.word 0xf9002fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf9402fa1
.word 0xf9002ba0
bl _p_91
.word 0xf9401bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba2
.word 0xaa1803e0
.word 0xaa1903e1
.word 0xf9400f10
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.loc 7 48 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel__ctor
BeaconTest_BaseViewModel__ctor:
.loc 7 12 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1232]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0x3900835f
.loc 7 19 0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1240]
.word 0xf9400000
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemDetailViewModel_get_Item
BeaconTest_ItemDetailViewModel_get_Item:
.file 8 "/Users/admin/Desktop/FYP/BeaconTest/ViewModels/ItemDetailViewModel.cs"
.loc 8 7 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1248]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemDetailViewModel_set_Item_BeaconTest_Item
BeaconTest_ItemDetailViewModel_set_Item_BeaconTest_Item:
.loc 8 7 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1256]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemDetailViewModel__ctor_BeaconTest_Item
BeaconTest_ItemDetailViewModel__ctor_BeaconTest_Item:
.loc 8 8 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1264]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_80
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 9 0
.word 0xf94017b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 8 10 0
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xeb1f035f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000560
.loc 8 11 0
.word 0xf94017b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.loc 8 12 0
.word 0xf94017b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_92
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1903e0
bl _p_81
.word 0xf94017b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.loc 8 13 0
.word 0xf94017b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1a03e1
bl _p_93
.word 0xf94017b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.loc 8 14 0
.word 0xf94017b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.loc 8 15 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_36:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_get_Items
BeaconTest_ItemsViewModel_get_Items:
.file 9 "/Users/admin/Desktop/FYP/BeaconTest/ViewModels/ItemsViewModel.cs"
.loc 9 10 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1272]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_37:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_set_Items_System_Collections_ObjectModel_ObservableCollection_1_BeaconTest_Item
BeaconTest_ItemsViewModel_set_Items_System_Collections_ObjectModel_ObservableCollection_1_BeaconTest_Item:
.loc 9 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1280]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_38:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_get_LoadItemsCommand
BeaconTest_ItemsViewModel_get_LoadItemsCommand:
.loc 9 11 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1288]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_39:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_set_LoadItemsCommand_BeaconTest_Command
BeaconTest_ItemsViewModel_set_LoadItemsCommand_BeaconTest_Command:
.loc 9 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1296]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3a:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_get_AddItemCommand
BeaconTest_ItemsViewModel_get_AddItemCommand:
.loc 9 12 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1304]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_3b:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_set_AddItemCommand_BeaconTest_Command
BeaconTest_ItemsViewModel_set_AddItemCommand_BeaconTest_Command:
.loc 9 12 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1312]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3c:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__ctor
BeaconTest_ItemsViewModel__ctor:
.loc 9 14 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1320]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_80
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.loc 9 15 0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 9 16 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1328]
.word 0xaa1a03e0
bl _p_81
.word 0xf9400fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 9 17 0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1336]
.word 0xd2800701
.word 0xd2800701
bl _p_2
.word 0xf9002ba0
bl _p_94
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa1a03e0
bl _p_95
.word 0xf9400fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 18 0
.word 0xf9400fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540011e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xeb1f035f
.word 0x10000011
.word 0x54001060
.word 0xf900101a
.word 0x91008001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1344]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1352]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1360]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf90027a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1072]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf94027a1
.word 0xf90023a0
bl _p_82
.word 0xf9400fb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1a03e0
bl _p_96
.word 0xf9400fb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 19 0
.word 0xf9400fb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000960

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1368]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xeb1f035f
.word 0x10000011
.word 0x540007e0
.word 0xf900101a
.word 0x91008001
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1376]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1384]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1392]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf9001fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1400]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_97
.word 0xf9400fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa1a03e0
bl _p_98
.word 0xf9400fb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 20 0
.word 0xf9400fb1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_3d:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_ExecuteLoadItemsCommand
BeaconTest_ItemsViewModel_ExecuteLoadItemsCommand:
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1408]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9003fbf
.word 0x910183a0
.word 0xd2800000
.word 0xf90033a0
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1416]
.word 0xd2800d01
.word 0xd2800d01
bl _p_2
.word 0xf9004ba0
bl _p_99
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf9003fa0
.word 0xf9403fa1
.word 0xf9400ba0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9403fa0
.word 0xf90047a0
.word 0x910123a0
.word 0xaa0003e8
bl _p_100
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0x910123a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf94027a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9402fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9403fa0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900601e
.word 0xf9403fa0
.word 0x91004000
.word 0x9100c3a1
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400401
.word 0xf9001fa1
.word 0xf9400800
.word 0xf90023a0
.word 0x9100c3a0
.word 0x910183a0
.word 0xf9401ba0
.word 0xf90033a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0x910183a0
.word 0x9101e3a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1424]
bl _p_101
.word 0xf9400fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_102
.word 0xf90043a0
.word 0xf9400fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9400fb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_3e:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel_AddItem_BeaconTest_Item
BeaconTest_ItemsViewModel_AddItem_BeaconTest_Item:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1432]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1440]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf90053a0
bl _p_103
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xf9004fa0
.word 0x910143a0
.word 0xaa0003e8
bl _p_100
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1448]
bl _p_104
.word 0xf94013b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_102
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_3f:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel___ctorb__12_0
BeaconTest_ItemsViewModel___ctorb__12_0:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1456]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9004bbf
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9400fb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1464]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf90057a0
bl _p_105
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf9004ba0
.word 0xf9404ba1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404ba0
.word 0xf90053a0
.word 0x910143a0
.word 0xaa0003e8
bl _p_106
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94033a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94037a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9404ba0
.word 0x91004000
.word 0x9100c3a1
.word 0xf9400001
.word 0xf9001ba1
.word 0xf9400401
.word 0xf9001fa1
.word 0xf9400801
.word 0xf90023a1
.word 0xf9400c00
.word 0xf90027a0
.word 0x9100c3a0
.word 0x9101c3a0
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401fa0
.word 0xf9003fa0
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94027a0
.word 0xf90047a0
.word 0x9101c3a0
.word 0x910243a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1472]
bl _p_107
.word 0xf9400fb1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_40:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel___ctorb__12_1_BeaconTest_Item
BeaconTest_ItemsViewModel___ctorb__12_1_BeaconTest_Item:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1480]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf9004fbf
.word 0x9101e3a0
.word 0xd2800000
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1488]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90057a0
bl _p_108
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf9004fa0
.word 0xf9404fa1
.word 0xf9400ba0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404fa1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404fa0
.word 0xf90053a0
.word 0x910163a0
.word 0xaa0003e8
bl _p_106
.word 0xf94013b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x910163a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402fa1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94033a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94037a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9403ba0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9404fa0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900481e
.word 0xf9404fa0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400801
.word 0xf90027a1
.word 0xf9400c00
.word 0xf9002ba0
.word 0x9100e3a0
.word 0x9101e3a0
.word 0xf9401fa0
.word 0xf9003fa0
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94027a0
.word 0xf90047a0
.word 0xf9402ba0
.word 0xf9004ba0
.word 0x9101e3a0
.word 0x910263a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1496]
bl _p_109
.word 0xf94013b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_41:
.text
	.align 4
	.no_dead_strip BeaconTest_App_Initialize
BeaconTest_App_Initialize:
.file 10 "/Users/admin/Desktop/FYP/BeaconTest/App.cs"
.loc 10 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1504]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xd280001a
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 10 12 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1512]
.word 0x39400000
.word 0x53001c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x340002c0
.loc 10 13 0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
bl _p_83
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1520]
.word 0xf940001e
bl _p_110
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000015
.loc 10 15 0
.word 0xf9400fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
bl _p_83
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1528]
.word 0xf940001e
bl _p_111
.word 0xf9400fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.loc 10 16 0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_42:
.text
	.align 4
	.no_dead_strip BeaconTest_App__ctor
BeaconTest_App__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1536]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_43:
.text
	.align 4
	.no_dead_strip BeaconTest_App__cctor
BeaconTest_App__cctor:
.loc 10 7 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1544]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1512]
.word 0xd280003e
.word 0x3900001e
.loc 10 8 0
.word 0xf9400bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1552]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #640]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_44:
.text
	.align 4
	.no_dead_strip BeaconTest_DataAccess__ctor
BeaconTest_DataAccess__ctor:
.file 11 "/Users/admin/Desktop/FYP/BeaconTest/DataAccess.cs"
.loc 11 6 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 11 7 0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 11 8 0
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_45:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_get_ViewModel
BeaconTest_iOS_BrowseItemDetailViewController_get_ViewModel:
.file 12 "/Users/admin/Desktop/FYP/iOS/ViewControllers/DetailViewControllers/BrowseItemDetailViewController.cs"
.loc 12 8 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1568]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_46:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_set_ViewModel_BeaconTest_ItemDetailViewModel
BeaconTest_iOS_BrowseItemDetailViewController_set_ViewModel_BeaconTest_ItemDetailViewModel:
.loc 12 8 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1576]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_47:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController__ctor_intptr
BeaconTest_iOS_BrowseItemDetailViewController__ctor_intptr:
.loc 12 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1584]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_112
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_48:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_ViewDidLoad
BeaconTest_iOS_BrowseItemDetailViewController_ViewDidLoad:
.loc 12 12 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 12 13 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 12 15 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_114
.word 0xf9003fa0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_115
.word 0xf9003ba0
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf9412450
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.loc 12 16 0
.word 0xf9400fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_116
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_114
.word 0xf90037a0
.word 0xf9400fb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_117
.word 0xf90033a0
.word 0xf9400fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_92
.word 0xf9002ba0
.word 0xf9400fb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.loc 12 17 0
.word 0xf9400fb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_118
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_114
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_117
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_119
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xf9401fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.loc 12 18 0
.word 0xf9400fb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_49:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_get_ItemDescriptionLabel
BeaconTest_iOS_BrowseItemDetailViewController_get_ItemDescriptionLabel:
.file 13 "/Users/admin/Desktop/FYP/iOS/ViewControllers/DetailViewControllers/BrowseItemDetailViewController.designer.cs"
.loc 13 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1600]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4a:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_set_ItemDescriptionLabel_UIKit_UILabel
BeaconTest_iOS_BrowseItemDetailViewController_set_ItemDescriptionLabel_UIKit_UILabel:
.loc 13 19 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1608]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4b:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_get_ItemNameLabel
BeaconTest_iOS_BrowseItemDetailViewController_get_ItemNameLabel:
.loc 13 23 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1616]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4c:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_set_ItemNameLabel_UIKit_UILabel
BeaconTest_iOS_BrowseItemDetailViewController_set_ItemNameLabel_UIKit_UILabel:
.loc 13 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1624]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_4d:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseItemDetailViewController_ReleaseDesignerOutlets
BeaconTest_iOS_BrowseItemDetailViewController_ReleaseDesignerOutlets:
.loc 13 26 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1632]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 13 27 0
.word 0xf94017b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_118
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000540
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.loc 13 28 0
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_118
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf94017b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.loc 13 29 0
.word 0xf94017b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_121
.word 0xf94017b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.loc 13 30 0
.word 0xf94017b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.loc 13 32 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_116
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000540
.word 0xf94017b1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.loc 13 33 0
.word 0xf94017b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_116
.word 0xf90023a0
.word 0xf94017b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf94017b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.loc 13 34 0
.word 0xf94017b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_122
.word 0xf94017b1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.loc 13 35 0
.word 0xf94017b1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.loc 13 36 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_4e:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_get_ViewModel
BeaconTest_iOS_AboutViewController_get_ViewModel:
.file 14 "/Users/admin/Desktop/FYP/iOS/ViewControllers/AboutViewController.cs"
.loc 14 8 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1640]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_4f:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_set_ViewModel_BeaconTest_AboutViewModel
BeaconTest_iOS_AboutViewController_set_ViewModel_BeaconTest_AboutViewModel:
.loc 14 8 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1648]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_50:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController__ctor_intptr
BeaconTest_iOS_AboutViewController__ctor_intptr:
.loc 14 9 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1656]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xaa1903e0
bl _p_112
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 14 10 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 14 11 0
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1664]
.word 0xd2800601
.word 0xd2800601
bl _p_2
.word 0xf90023a0
bl _p_123
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa1903e0
bl _p_124
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.loc 14 12 0
.word 0xf94013b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_51:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_ViewDidLoad
BeaconTest_iOS_AboutViewController_ViewDidLoad:
.loc 14 15 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1672]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 14 16 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 14 18 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_125
.word 0xf9002ba0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_115
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf9412450
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.loc 14 20 0
.word 0xf9400fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_126
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1680]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.loc 14 21 0
.word 0xf9400fb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_127
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1688]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.loc 14 22 0
.word 0xf9400fb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_128
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1696]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf942cc50
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.loc 14 23 0
.word 0xf9400fb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_52:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_get_AboutImageView
BeaconTest_iOS_AboutViewController_get_AboutImageView:
.file 15 "/Users/admin/Desktop/FYP/iOS/ViewControllers/AboutViewController.designer.cs"
.loc 15 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1704]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_53:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_set_AboutImageView_UIKit_UIImageView
BeaconTest_iOS_AboutViewController_set_AboutImageView_UIKit_UIImageView:
.loc 15 19 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1712]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_54:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_get_AboutTextView
BeaconTest_iOS_AboutViewController_get_AboutTextView:
.loc 15 23 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1720]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_55:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_set_AboutTextView_UIKit_UITextView
BeaconTest_iOS_AboutViewController_set_AboutTextView_UIKit_UITextView:
.loc 15 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1728]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_56:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_get_AppNameLabel
BeaconTest_iOS_AboutViewController_get_AppNameLabel:
.loc 15 27 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1736]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_57:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_set_AppNameLabel_UIKit_UILabel
BeaconTest_iOS_AboutViewController_set_AppNameLabel_UIKit_UILabel:
.loc 15 27 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1744]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_58:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_get_VersionLabel
BeaconTest_iOS_AboutViewController_get_VersionLabel:
.loc 15 31 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1752]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_59:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_set_VersionLabel_UIKit_UILabel
BeaconTest_iOS_AboutViewController_set_VersionLabel_UIKit_UILabel:
.loc 15 31 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1760]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5a:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_ReadMoreButton_TouchUpInside_UIKit_UIButton
BeaconTest_iOS_AboutViewController_ReadMoreButton_TouchUpInside_UIKit_UIButton:
.loc 14 25 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1768]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_125
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_129
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1776]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_5b:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AboutViewController_ReleaseDesignerOutlets
BeaconTest_iOS_AboutViewController_ReleaseDesignerOutlets:
.loc 15 38 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1784]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xf9401fb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.loc 15 39 0
.word 0xf9401fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_130
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000540
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.loc 15 40 0
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_130
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.loc 15 41 0
.word 0xf9401fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_131
.word 0xf9401fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.loc 15 42 0
.word 0xf9401fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.loc 15 44 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_128
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000540
.word 0xf9401fb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.loc 15 45 0
.word 0xf9401fb1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_128
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401fb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.loc 15 46 0
.word 0xf9401fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_132
.word 0xf9401fb1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.loc 15 47 0
.word 0xf9401fb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
.loc 15 49 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_126
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000540
.word 0xf9401fb1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.loc 15 50 0
.word 0xf9401fb1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_126
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401fb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.loc 15 51 0
.word 0xf9401fb1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_133
.word 0xf9401fb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.loc 15 52 0
.word 0xf9401fb1
.word 0xf9436a31
.word 0xb4000051
.word 0xd63f0220
.loc 15 54 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_127
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f6
.word 0xaa1603e0
.word 0x34000540
.word 0xf9401fb1
.word 0xf943da31
.word 0xb4000051
.word 0xd63f0220
.loc 15 55 0
.word 0xf9401fb1
.word 0xf943ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_127
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9440a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401fb1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.loc 15 56 0
.word 0xf9401fb1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_134
.word 0xf9401fb1
.word 0xf9445e31
.word 0xb4000051
.word 0xd63f0220
.loc 15 57 0
.word 0xf9401fb1
.word 0xf9446e31
.word 0xb4000051
.word 0xd63f0220
.loc 15 58 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9449e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_5c:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_get_ViewModel
BeaconTest_iOS_BrowseViewController_get_ViewModel:
.file 16 "/Users/admin/Desktop/FYP/iOS/ViewControllers/BrowseViewController.cs"
.loc 16 13 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1792]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_5d:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_set_ViewModel_BeaconTest_ItemsViewModel
BeaconTest_iOS_BrowseViewController_set_ViewModel_BeaconTest_ItemsViewModel:
.loc 16 13 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1800]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5e:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController__ctor_intptr
BeaconTest_iOS_BrowseViewController__ctor_intptr:
.loc 16 15 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1808]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_135
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.loc 16 16 0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 16 17 0
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_5f:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_ViewDidLoad
BeaconTest_iOS_BrowseViewController_ViewDidLoad:
.loc 16 20 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1816]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 16 21 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 16 23 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1824]
.word 0xd2800801
.word 0xd2800801
bl _p_2
.word 0xf90047a0
bl _p_136
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a1
.word 0xaa1a03e0
bl _p_137
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.loc 16 26 0
.word 0xf9400fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1832]
bl _p_138
.word 0xf90043a0
bl _p_139
.word 0xf9400fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9001b40
.word 0x9100c341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 16 27 0
.word 0xf9400fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54002500

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1840]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9403fa2
.word 0xeb1f035f
.word 0x10000011
.word 0x54002340
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1848]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1864]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_140
.word 0xf9400fb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.loc 16 28 0
.word 0xf9400fb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9418830
.word 0xd63f0200
.word 0xf9003ba0
.word 0xf9400fb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba2
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0203e0
.word 0xf940005e
bl _p_141
.word 0xf9400fb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.loc 16 29 0
.word 0xf9400fb1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9418830
.word 0xd63f0200
.word 0xf90033a0
.word 0xf9400fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf90037a0
.word 0xf9400fb1
.word 0xf942f231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1872]
bl _p_138
.word 0xf94037a1
.word 0xf9002fa0
bl _p_143
.word 0xf9400fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xf94033a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_144
.word 0xf9400fb1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.loc 16 31 0
.word 0xf9400fb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf9002ba0
.word 0xf9400fb1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_115
.word 0xf90027a0
.word 0xf9400fb1
.word 0xf9439a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf9412450
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf943be31
.word 0xb4000051
.word 0xd63f0220
.loc 16 33 0
.word 0xf9400fb1
.word 0xf943ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf943ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54001100

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1880]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94023a2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000f40
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1888]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1896]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1904]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_145
.word 0xf9400fb1
.word 0xf944ba31
.word 0xb4000051
.word 0xd63f0220
.loc 16 34 0
.word 0xf9400fb1
.word 0xf944ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf944ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_146
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9450e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54000800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1912]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000640
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1928]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940c850
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf945de31
.word 0xb4000051
.word 0xd63f0220
.loc 16 35 0
.word 0xf9400fb1
.word 0xf945ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf945fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_60:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_ViewDidAppear_bool
BeaconTest_iOS_BrowseViewController_ViewDidAppear_bool:
.loc 16 38 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1944]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 39 0
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x394083a1
.word 0xaa1903e0
bl _p_147
.word 0xf94017b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 41 0
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_142
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_146
.word 0xf90027a0
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_148
.word 0x93407c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000400
.loc 16 42 0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_142
.word 0xf90027a0
.word 0xf94017b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_149
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_150
.word 0xf94017b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.loc 16 43 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_61:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_PrepareForSegue_UIKit_UIStoryboardSegue_Foundation_NSObject
BeaconTest_iOS_BrowseViewController_PrepareForSegue_UIKit_UIStoryboardSegue_Foundation_NSObject:
.loc 16 46 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xf90023b9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90027a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1952]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 47 0
.word 0xf9402bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d030
.word 0xd63f0200
.word 0xf90057a0
.word 0xf9402bb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1960]
bl _p_151
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34001320
.loc 16 48 0
.word 0xf9402bb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.loc 16 49 0
.word 0xf9402bb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d430
.word 0xd63f0200
.word 0xaa0003f6
.word 0xf9402bb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90047b6
.word 0xeb1f02df
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1968]
.word 0xeb01001f
.word 0x54000040
.word 0xf90047bf
.word 0xf94047a0
.word 0xf90037a0
.loc 16 50 0
.word 0xf9402bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400301
.word 0xf9418830
.word 0xd63f0200
.word 0xf9004ba0
.word 0xf9402bb1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b5
.word 0xf9004fb5
.word 0xeb1f02bf
.word 0x54000160
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1976]
.word 0xeb01001f
.word 0x54000040
.word 0xf9004fbf
.word 0xf9404fa1
.word 0xf9404ba0
.word 0xf9404ba2
.word 0xf9400042
.word 0xf941d050
.word 0xd63f0200
.word 0xf9006fa0
.word 0xf9402bb1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa0
.word 0xf9003ba0
.loc 16 51 0
.word 0xf9402bb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_142
.word 0xf9006ba0
.word 0xf9402bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_146
.word 0xf90067a0
.word 0xf9402bb1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_152
.word 0x93407c00
.word 0xf90063a0
.word 0xf9402bb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xf94067a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_153
.word 0xf9005fa0
.word 0xf9402bb1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xf9003fa0
.loc 16 53 0
.word 0xf9402bb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf90057a0
.word 0xf9403fa0
.word 0xf9005ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1984]
.word 0xd2800601
.word 0xd2800601
bl _p_2
.word 0xf9405ba1
.word 0xf90053a0
bl _p_154
.word 0xf9402bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xf94057a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_155
.word 0xf9402bb1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.loc 16 54 0
.word 0xf9402bb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400003d
.loc 16 56 0
.word 0xf9402bb1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.loc 16 57 0
.word 0xf9402bb1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940d430
.word 0xd63f0200
.word 0xaa0003f4
.word 0xf9402bb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90043b4
.word 0xeb1f029f
.word 0x54000160
.word 0xf9400280
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1992]
.word 0xeb01001f
.word 0x54000040
.word 0xf90043bf
.word 0xf94043a0
.word 0xaa0003f3
.loc 16 58 0
.word 0xf9402bb1
.word 0xf943ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf90057a0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_142
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf9441231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xf94057a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_156
.word 0xf9402bb1
.word 0xf9443631
.word 0xb4000051
.word 0xd63f0220
.loc 16 59 0
.word 0xf9402bb1
.word 0xf9444631
.word 0xb4000051
.word 0xd63f0220
.loc 16 60 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9447631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xf94023b9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_62:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_RefreshControl_ValueChanged_object_System_EventArgs
BeaconTest_iOS_BrowseViewController_RefreshControl_ValueChanged_object_System_EventArgs:
.loc 16 63 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2000]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 16 64 0
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_157
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x35000200
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419430
.word 0xd63f0200
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f8
.word 0x14000003
.word 0xd2800000
.word 0xd2800018
.word 0xaa1803e0
.word 0x53001f00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000400
.loc 16 65 0
.word 0xf9401fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf9002fa0
.word 0xf9401fb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_149
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba2
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_150
.word 0xf9401fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.loc 16 66 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_63:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_IsBusy_PropertyChanged_object_System_ComponentModel_PropertyChangedEventArgs
BeaconTest_iOS_BrowseViewController_IsBusy_PropertyChanged_object_System_ComponentModel_PropertyChangedEventArgs:
.loc 16 69 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2008]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800018
.word 0xd2800017
.word 0xf9401fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.loc 16 70 0
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9403030
.word 0xd63f0200
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xf9002fa0
.word 0xaa0003f8
.loc 16 71 0
.word 0xf9401fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0xaa0003e1
.word 0xaa0003f7
.word 0xaa0003e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1128]
bl _p_151
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000860
.loc 16 74 0
.word 0xf9401fb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 75 0
.word 0xf9401fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xeb1f033f
.word 0x10000011
.word 0x54000940

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xeb1f033f
.word 0x10000011
.word 0x540007a0
.word 0xf9001039
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2016]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2024]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2032]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa1903e0
bl _p_158
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.loc 16 82 0
.word 0xf9401fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.loc 16 83 0
.word 0xf9401fb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.loc 16 85 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_64:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_Items_CollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs
BeaconTest_iOS_BrowseViewController_Items_CollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs:
.loc 16 88 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2040]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.loc 16 89 0
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540007a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1040]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xeb1f035f
.word 0x10000011
.word 0x54000600
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2048]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2056]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2064]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa1a03e0
bl _p_158
.word 0xf94017b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.loc 16 90 0
.word 0xf94017b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_65:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_get_btnAddItem
BeaconTest_iOS_BrowseViewController_get_btnAddItem:
.file 17 "/Users/admin/Desktop/FYP/iOS/ViewControllers/BrowseViewController.designer.cs"
.loc 17 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2072]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_66:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_set_btnAddItem_UIKit_UIButton
BeaconTest_iOS_BrowseViewController_set_btnAddItem_UIKit_UIButton:
.loc 17 19 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2080]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_67:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController_ReleaseDesignerOutlets
BeaconTest_iOS_BrowseViewController_ReleaseDesignerOutlets:
.loc 17 22 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2088]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 17 23 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_159
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000540
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 17 24 0
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_159
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 17 25 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_160
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.loc 17 26 0
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.loc 17 27 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_68:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController__IsBusy_PropertyChangedb__10_0
BeaconTest_iOS_BrowseViewController__IsBusy_PropertyChangedb__10_0:
.loc 16 76 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2096]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 16 77 0
.word 0xf9401bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_157
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000260
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419430
.word 0xd63f0200
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xaa0003f7
.word 0x14000003
.word 0xd2800000
.word 0xd2800017
.word 0xaa1703e0
.word 0x53001ee0
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000200
.loc 16 78 0
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419c30
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400002d
.loc 16 79 0
.word 0xf9401bb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_142
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_157
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340001e0
.loc 16 80 0
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419830
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.loc 16 81 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_69:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BrowseViewController__Items_CollectionChangedb__11_0
BeaconTest_iOS_BrowseViewController__Items_CollectionChangedb__11_0:
.loc 16 89 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2104]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9418830
.word 0xd63f0200
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941c830
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6a:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemsDataSource__ctor_BeaconTest_ItemsViewModel
BeaconTest_iOS_ItemsDataSource__ctor_BeaconTest_ItemsViewModel:
.loc 16 99 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2112]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_161
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.loc 16 100 0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 16 101 0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9001720
.word 0x9100a321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 16 102 0
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6b:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemsDataSource_RowsInSection_UIKit_UITableView_System_nint
BeaconTest_iOS_ItemsDataSource_RowsInSection_UIKit_UITableView_System_nint:
.loc 16 104 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2120]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf940003e
bl _p_146
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_148
.word 0x93407c00
.word 0xf90027a0
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0x93407c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_6c:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemsDataSource_NumberOfSections_UIKit_UITableView
BeaconTest_iOS_ItemsDataSource_NumberOfSections_UIKit_UITableView:
.loc 16 105 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2128]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x93407c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_6d:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemsDataSource_GetCell_UIKit_UITableView_Foundation_NSIndexPath
BeaconTest_iOS_ItemsDataSource_GetCell_UIKit_UITableView_Foundation_NSIndexPath:
.loc 16 108 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xf90013b7
.word 0xf90017ba
.word 0xf9001ba0
.word 0xf9001fa1
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2136]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xf94023b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.loc 16 109 0
.word 0xf94023b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa3

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9400001
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1a03e2
.word 0xf9400063
.word 0xf941e870
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf94023b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xaa0003f7
.loc 16 111 0
.word 0xf94023b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf940003e
bl _p_146
.word 0xf9005ba0
.word 0xf94023b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_152
.word 0x93407c00
.word 0xf90057a0
.word 0xf94023b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a1
.word 0xf9405ba2
.word 0xaa0203e0
.word 0xf940005e
bl _p_153
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f6
.loc 16 112 0
.word 0xf94023b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419430
.word 0xd63f0200
.word 0xf9004fa0
.word 0xf94023b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_92
.word 0xf9004ba0
.word 0xf94023b1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf94023b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.loc 16 113 0
.word 0xf94023b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419830
.word 0xd63f0200
.word 0xf90047a0
.word 0xf94023b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf940003e
bl _p_119
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf94023b1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.loc 16 114 0
.word 0xf94023b1
.word 0xf9427231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2152]
.word 0x910163a2
.word 0xf9400002
.word 0xf9002fa2
.word 0xf9400402
.word 0xf90033a2
.word 0xf9400802
.word 0xf90037a2
.word 0xf9400c00
.word 0xf9003ba0
.word 0xaa0103e0
.word 0x910163a2
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd4037a2
.word 0xfd403ba3
.word 0xf9400021
.word 0xf9414c30
.word 0xd63f0200
.word 0xf94023b1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.loc 16 116 0
.word 0xf94023b1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa0003f5
.loc 16 117 0
.word 0xf94023b1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xaa1503e0
.word 0xf94023b1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xf94013b7
.word 0xf94017ba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_6e:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemsDataSource__cctor
BeaconTest_iOS_ItemsDataSource__cctor:
.loc 16 95 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2160]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2168]
.word 0xf9001fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2176]
bl _p_138
.word 0xf9401fa1
.word 0xf9001ba0
bl _p_162
.word 0xf9400bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2144]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_6f:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_get_ViewModel
BeaconTest_iOS_ItemNewViewController_get_ViewModel:
.file 18 "/Users/admin/Desktop/FYP/iOS/ViewControllers/ItemNewViewController.cs"
.loc 18 9 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2184]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_70:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_set_ViewModel_BeaconTest_ItemsViewModel
BeaconTest_iOS_ItemNewViewController_set_ViewModel_BeaconTest_ItemsViewModel:
.loc 18 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2192]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_71:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController__ctor_intptr
BeaconTest_iOS_ItemNewViewController__ctor_intptr:
.loc 18 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2200]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_112
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.loc 18 12 0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 18 13 0
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_72:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_ViewDidLoad
BeaconTest_iOS_ItemNewViewController_ViewDidLoad:
.loc 18 16 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2208]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 18 17 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 18 19 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_163
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540007e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1840]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000620
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2216]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2224]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2232]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_164
.word 0xf9400fb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.loc 18 29 0
.word 0xf9400fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_73:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_get_btnSaveItem
BeaconTest_iOS_ItemNewViewController_get_btnSaveItem:
.file 19 "/Users/admin/Desktop/FYP/iOS/ViewControllers/ItemNewViewController.designer.cs"
.loc 19 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2240]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_74:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_set_btnSaveItem_UIKit_UIButton
BeaconTest_iOS_ItemNewViewController_set_btnSaveItem_UIKit_UIButton:
.loc 19 19 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2248]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_75:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_get_txtDesc
BeaconTest_iOS_ItemNewViewController_get_txtDesc:
.loc 19 23 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2256]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_76:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_set_txtDesc_UIKit_UITextField
BeaconTest_iOS_ItemNewViewController_set_txtDesc_UIKit_UITextField:
.loc 19 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2264]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_77:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_get_txtTitle
BeaconTest_iOS_ItemNewViewController_get_txtTitle:
.loc 19 27 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2272]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_78:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_set_txtTitle_UIKit_UITextField
BeaconTest_iOS_ItemNewViewController_set_txtTitle_UIKit_UITextField:
.loc 19 27 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2280]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_79:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController_ReleaseDesignerOutlets
BeaconTest_iOS_ItemNewViewController_ReleaseDesignerOutlets:
.loc 19 30 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2288]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 19 31 0
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_163
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000540
.word 0xf9401bb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.loc 19 32 0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_163
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401bb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.loc 19 33 0
.word 0xf9401bb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_165
.word 0xf9401bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.loc 19 34 0
.word 0xf9401bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.loc 19 36 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_166
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000540
.word 0xf9401bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.loc 19 37 0
.word 0xf9401bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_166
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401bb1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.loc 19 38 0
.word 0xf9401bb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_167
.word 0xf9401bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.loc 19 39 0
.word 0xf9401bb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.loc 19 41 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_168
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000540
.word 0xf9401bb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.loc 19 42 0
.word 0xf9401bb1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_168
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf9401bb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.loc 19 43 0
.word 0xf9401bb1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_169
.word 0xf9401bb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.loc 19 44 0
.word 0xf9401bb1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220
.loc 19 45 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_7a:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ItemNewViewController__ViewDidLoadb__5_0_object_System_EventArgs
BeaconTest_iOS_ItemNewViewController__ViewDidLoadb__5_0_object_System_EventArgs:
.loc 18 20 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9001ba1
.word 0xf9001fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2296]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800019
.word 0xf94023b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 18 21 0
.word 0xf94023b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #816]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9005fa0
bl _p_58
.word 0xf94023b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xf9004fa0
.word 0xaa1803e0
.word 0xf90057a0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_168
.word 0xf9005ba0
.word 0xf94023b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf942c030
.word 0xd63f0200
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xf94057a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_62
.word 0xf94023b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf9003fa0
.word 0xaa1703e0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_166
.word 0xf9004ba0
.word 0xf94023b1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf942c030
.word 0xd63f0200
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_63
.word 0xf94023b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xaa0003f9
.loc 18 26 0
.word 0xf94023b1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_170
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_171
.word 0xf90037a0
.word 0xf94023b1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a2
.word 0xaa1903e1
.word 0xaa0203e0
.word 0xf940005e
bl _p_150
.word 0xf94023b1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.loc 18 27 0
.word 0xf94023b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9413830
.word 0xd63f0200
.word 0xf90033a0
.word 0xf94023b1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a2
.word 0xd2800020
.word 0xaa0203e0
.word 0xd2800021
.word 0xf9400042
.word 0xf9418450
.word 0xd63f0200
.word 0xf94023b1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.loc 18 28 0
.word 0xf94023b1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_7b:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_TabBarController__ctor_intptr
BeaconTest_iOS_TabBarController__ctor_intptr:
.file 20 "/Users/admin/Desktop/FYP/iOS/ViewControllers/TabBarController.cs"
.loc 20 8 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2304]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa1
.word 0xaa1903e0
bl _p_172
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 20 9 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 20 10 0
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9418030
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941a830
.word 0xd63f0200
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000889
.word 0xf9401002

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1328]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940dc50
.word 0xd63f0200
.word 0xf94013b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.loc 20 11 0
.word 0xf94013b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf9418030
.word 0xd63f0200
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf941a830
.word 0xd63f0200
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800021
.word 0xb9801801
.word 0xd280003e
.word 0xeb1e003f
.word 0x10000011
.word 0x54000329
.word 0xf9401402

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1016]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940dc50
.word 0xd63f0200
.word 0xf94013b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.loc 20 12 0
.word 0xf94013b1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_7c:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_TabBarController_ReleaseDesignerOutlets
BeaconTest_iOS_TabBarController_ReleaseDesignerOutlets:
.file 21 "/Users/admin/Desktop/FYP/iOS/ViewControllers/TabBarController.designer.cs"
.loc 21 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2312]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 21 19 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7d:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_get_Window
BeaconTest_iOS_AppDelegate_get_Window:
.file 22 "/Users/admin/Desktop/FYP/iOS/AppDelegate.cs"
.loc 22 15 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2320]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_7e:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_set_Window_UIKit_UIWindow
BeaconTest_iOS_AppDelegate_set_Window_UIKit_UIWindow:
.loc 22 16 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2328]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_7f:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary
BeaconTest_iOS_AppDelegate_FinishedLaunching_UIKit_UIApplication_Foundation_NSDictionary:
.loc 22 20 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003fa
.word 0xf9001ba1
.word 0xf9001fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2336]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.loc 22 21 0
.word 0xf94023b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
bl _p_173
.word 0xf94023b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.loc 22 23 0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
bl _p_174
.word 0xf9005ba0
.word 0xf94023b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940dc30
.word 0xd63f0200
.word 0xf9403fbe
.word 0xfd0003c0
.word 0xfd0007c1
.word 0xfd000bc2
.word 0xfd000fc3
.word 0xf94023b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2344]
bl _p_138
.word 0xf90057a0
.word 0x910163a1
.word 0xfd402fa0
.word 0xfd4033a1
.word 0xfd4037a2
.word 0xfd403ba3
bl _p_175
.word 0xf94023b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a1
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf940d050
.word 0xd63f0200
.word 0xf94023b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.loc 22 26 0
.word 0xf94023b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2352]
bl _p_138
.word 0xf90053a0
bl _p_176
.word 0xf94023b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f9
.loc 22 29 0
.word 0xf94023b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9004fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2360]
bl _p_138
.word 0xf9404fa1
.word 0xf9004ba0
bl _p_177
.word 0xf94023b1
.word 0xf941e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xaa0003f8
.loc 22 30 0
.word 0xf94023b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940d430
.word 0xd63f0200
.word 0xf90047a0
.word 0xf94023b1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a2
.word 0xaa1803e1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419450
.word 0xd63f0200
.word 0xf94023b1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.loc 22 33 0
.word 0xf94023b1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940d430
.word 0xd63f0200
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9419c30
.word 0xd63f0200
.word 0xf94023b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.loc 22 35 0
.word 0xf94023b1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f7
.loc 22 36 0
.word 0xf94023b1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1703e0
.word 0xf94023b1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_80:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication
BeaconTest_iOS_AppDelegate_OnResignActivation_UIKit_UIApplication:
.loc 22 39 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2368]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 22 44 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_81:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication
BeaconTest_iOS_AppDelegate_DidEnterBackground_UIKit_UIApplication:
.loc 22 47 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2376]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 22 50 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_82:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication
BeaconTest_iOS_AppDelegate_WillEnterForeground_UIKit_UIApplication:
.loc 22 53 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2384]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 22 56 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_83:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_OnActivated_UIKit_UIApplication
BeaconTest_iOS_AppDelegate_OnActivated_UIKit_UIApplication:
.loc 22 59 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2392]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 22 62 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_84:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate_WillTerminate_UIKit_UIApplication
BeaconTest_iOS_AppDelegate_WillTerminate_UIKit_UIApplication:
.loc 22 65 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2400]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 22 67 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_85:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_AppDelegate__ctor
BeaconTest_iOS_AppDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2408]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_178
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_86:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_Application_Main_string__
BeaconTest_iOS_Application_Main_string__:
.file 23 "/Users/admin/Desktop/FYP/iOS/Main.cs"
.loc 23 9 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2416]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 23 12 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xd2800001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #2424]
.word 0xd2800001
bl _p_179
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 23 13 0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_87:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_Application__ctor
BeaconTest_iOS_Application__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2432]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_88:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconViewController__ctor
BeaconTest_iOS_BeaconViewController__ctor:
.file 24 "/Users/admin/Desktop/FYP/iOS/ViewControllers/BeaconViewController.cs"
.loc 24 17 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2440]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2448]
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800002
bl _p_180
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.loc 24 18 0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 24 19 0
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2456]
bl _p_138
.word 0xf90027a0
bl _p_181
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9001b40
.word 0x9100c341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 24 20 0
.word 0xf9400fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xf9001fa0
bl _p_182
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2464]
bl _p_138
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf9001ba0
bl _p_183
.word 0xf9400fb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9001f40
.word 0x9100e341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 24 21 0
.word 0xf9400fb1
.word 0xf941b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_89:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconViewController_DidReceiveMemoryWarning
BeaconTest_iOS_BeaconViewController_DidReceiveMemoryWarning:
.loc 24 24 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2472]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 24 26 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_184
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 24 29 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8a:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconViewController_ViewDidLoad
BeaconTest_iOS_BeaconViewController_ViewDidLoad:
.loc 24 39 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2480]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 24 40 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_113
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 24 41 0
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2488]
bl _p_138
.word 0xf90023a0
bl _p_185
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003f9
.loc 24 42 0
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9400321
.word 0xf940e830
.word 0xd63f0200
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.loc 24 43 0
.word 0xf94013b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_8b:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconViewController_ViewDidAppear_bool
BeaconTest_iOS_BeaconViewController_ViewDidAppear_bool:
.loc 24 46 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f9
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2496]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800018
.word 0xd2800017
.word 0xf9401bb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 24 47 0
.word 0xf9401bb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x3940a3a1
.word 0xaa1903e0
bl _p_147
.word 0xf9401bb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 24 50 0
.word 0xf9401bb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2504]
.word 0xf90047a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2512]
bl _p_138
.word 0xf94047a1
.word 0xf90043a0
bl _p_186
.word 0xf9401bb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9002320
.word 0x91010321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 24 51 0
.word 0xf9401bb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9402320
.word 0xf9003ba0
.word 0xd2815860
.word 0xd28000a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2520]
.word 0xf9003fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2528]
bl _p_138
.word 0xf9403ba1
.word 0xf9403fa4
.word 0xf90037a0
.word 0xd2815862
.word 0xd28000a3
bl _p_187
.word 0xf9401bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9002720
.word 0x91012321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 24 56 0
.word 0xf9401bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0x92800740
.word 0xf2bfffe0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2536]
bl _p_138
.word 0xf90033a0
.word 0x92800741
.word 0xf2bfffe1
bl _p_188
.word 0xf9401bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.loc 24 58 0
.word 0xf9401bb1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9402722
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9400042
.word 0xf940e450
.word 0xd63f0200
.word 0xf9002fa0
.word 0xf9401bb1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0xaa0003f7
.loc 24 59 0
.word 0xf9401bb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2456]
bl _p_138
.word 0xf9002ba0
bl _p_181
.word 0xf9401bb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9001b20
.word 0x9100c321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 24 60 0
.word 0xf9401bb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401f22
.word 0xaa1703e1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940d850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.loc 24 61 0
.word 0xf9401bb1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_8c:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__ctor
BeaconTest_iOS_BeaconRangingController__ctor:
.file 25 "/Users/admin/Desktop/FYP/iOS/BeaconRangingController.cs"
.loc 25 26 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2544]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2552]
.word 0xd2800002
.word 0xd2800002
bl _p_180
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 25 27 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 25 29 0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8d:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_DetectBeacon
BeaconTest_iOS_BeaconRangingController_DetectBeacon:
.loc 25 32 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 25 33 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xd284e201
.word 0xd284e201
bl _p_189
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1
.word 0xaa0103e0
.word 0xf940003e
bl _p_190
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.loc 25 34 0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_8e:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_DetectBeaconOn_int
BeaconTest_iOS_BeaconRangingController_DetectBeaconOn_int:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2568]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90043bf
.word 0x9101a3a0
.word 0xd2800000
.word 0xf90037a0
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf94013b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2576]
.word 0xd2800801
.word 0xd2800801
bl _p_2
.word 0xf90053a0
bl _p_191
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90043a0
.word 0xf94043a1
.word 0xf9400ba0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0xb9801ba1
.word 0xb9003c01
.word 0xf94043a0
.word 0xf9004fa0
.word 0x910143a0
.word 0xaa0003e8
bl _p_100
.word 0xf94013b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910143a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402ba1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9402fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94043a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900381e
.word 0xf94043a0
.word 0x91004000
.word 0x9100e3a1
.word 0xf9400001
.word 0xf9001fa1
.word 0xf9400401
.word 0xf90023a1
.word 0xf9400800
.word 0xf90027a0
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0x9101a3a0
.word 0x910203a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2584]
bl _p_192
.word 0xf94013b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_102
.word 0xf9004ba0
.word 0xf94013b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94013b1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_8f:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_ViewDidLoad
BeaconTest_iOS_BeaconRangingController_ViewDidLoad:
.loc 25 44 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 25 45 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_113
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 25 48 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2488]
bl _p_138
.word 0xf9002ba0
bl _p_185
.word 0xf9400fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9001b40
.word 0x9100c341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 25 49 0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xf90027a0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54001f60

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2600]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94027a2
.word 0xeb1f035f
.word 0x10000011
.word 0x54001da0
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2608]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2616]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2624]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_193
.word 0xf9400fb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.loc 25 50 0
.word 0xf9400fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xf90023a0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x54001820

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2632]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94023a2
.word 0xeb1f035f
.word 0x10000011
.word 0x54001660
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2640]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2648]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2656]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_194
.word 0xf9400fb1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.loc 25 51 0
.word 0xf9400fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xf9001fa0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540010e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2632]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9401fa2
.word 0xeb1f035f
.word 0x10000011
.word 0x54000f20
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2664]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2672]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2680]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_195
.word 0xf9400fb1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.loc 25 52 0
.word 0xf9400fb1
.word 0xf943ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b40
.word 0xf9001ba0
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540009a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2688]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9401ba2
.word 0xeb1f035f
.word 0x10000011
.word 0x540007e0
.word 0xf900103a
.word 0x91008020
.word 0xd349fc00
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030000
.word 0xd280003e
.word 0x3900001e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2696]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2704]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2712]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_196
.word 0xf9400fb1
.word 0xf9449231
.word 0xb4000051
.word 0xd63f0220
.loc 25 53 0
.word 0xf9400fb1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401b41
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940ec30
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf944ca31
.word 0xb4000051
.word 0xd63f0220
.loc 25 55 0
.word 0xf9400fb1
.word 0xf944da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf944ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_90:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_LocationManager_RegionLeft_object_CoreLocation_CLRegionEventArgs
BeaconTest_iOS_BeaconRangingController_LocationManager_RegionLeft_object_CoreLocation_CLRegionEventArgs:
.loc 25 58 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2720]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 25 59 0
.word 0xf9401bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2728]
bl _p_138
.word 0xf9002fa0
bl _p_197
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0xaa0003fa
.loc 25 60 0
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2736]
.word 0xaa1a03e0
.word 0xf9400342
.word 0xf940d850
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.loc 25 61 0
.word 0xf9401bb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
bl _p_198
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba2
.word 0xaa1a03e1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940e450
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.loc 25 62 0
.word 0xf9401bb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_91:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_LocationManager_RegionEntered_object_CoreLocation_CLRegionEventArgs
BeaconTest_iOS_BeaconRangingController_LocationManager_RegionEntered_object_CoreLocation_CLRegionEventArgs:
.loc 25 65 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2744]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 25 69 0
.word 0xf94017b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2752]
bl _p_199
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 25 70 0
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_200
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf90027a0
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
bl _p_199
.word 0xf94017b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.loc 25 71 0
.word 0xf94017b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_201
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2752]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf94017b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.loc 25 72 0
.word 0xf94017b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_92:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_LocationManager_DidRangeBeacons_object_CoreLocation_CLRegionBeaconsRangedEventArgs
BeaconTest_iOS_BeaconRangingController_LocationManager_DidRangeBeacons_object_CoreLocation_CLRegionBeaconsRangedEventArgs:
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2760]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf90053bf
.word 0x910203a0
.word 0xd2800000
.word 0xf90043a0
.word 0xf90047a0
.word 0xf9004ba0
.word 0xf9004fa0
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2768]
.word 0xd2800b01
.word 0xd2800b01
bl _p_2
.word 0xf9005fa0
bl _p_202
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xf90053a0
.word 0xf94053a1
.word 0xf9400ba0
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94053a1
.word 0xf9400fa0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94053a1
.word 0xf94013a0
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94053a0
.word 0xf9005ba0
.word 0x910183a0
.word 0xaa0003e8
bl _p_106
.word 0xf94017b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x910183a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf94033a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94037a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9403ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf9403fa0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94053a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94053a0
.word 0x91004000
.word 0x910103a1
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400401
.word 0xf90027a1
.word 0xf9400801
.word 0xf9002ba1
.word 0xf9400c00
.word 0xf9002fa0
.word 0x910103a0
.word 0x910203a0
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94027a0
.word 0xf90047a0
.word 0xf9402ba0
.word 0xf9004ba0
.word 0xf9402fa0
.word 0xf9004fa0
.word 0x910203a0
.word 0x910283a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2776]
bl _p_203
.word 0xf94017b1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_93:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_LocationManager_AuthorizationChanged_object_CoreLocation_CLAuthorizationChangedEventArgs
BeaconTest_iOS_BeaconRangingController_LocationManager_AuthorizationChanged_object_CoreLocation_CLAuthorizationChangedEventArgs:
.loc 25 86 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xaa0003f9
.word 0xf9001ba1
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2784]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800018
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.loc 25 87 0
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2792]
.word 0xf9002fa0
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2800]
.word 0xd2800021
bl _p_204
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xf90033a0
.word 0xaa1703e0
.word 0xf9003ba0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_205
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2808]
.word 0xd2800281
.word 0xd2800281
bl _p_2
.word 0xaa0003e2
.word 0xf94037a0
.word 0xf9403ba3
.word 0xb9001040
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf9402fa0
.word 0xf94033a1
bl _p_206
.word 0xf9401fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.loc 25 88 0
.word 0xf9401fb1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf940035e
bl _p_205
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800061
.word 0xd280007e
.word 0x6b1e001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34000e60
.word 0xf9401fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.loc 25 89 0
.word 0xf9401fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2504]
.word 0xf9003ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2512]
bl _p_138
.word 0xf9403ba1
.word 0xf90037a0
bl _p_186
.word 0xf9401fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9002320
.word 0x91010321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 25 91 0
.word 0xf9401fb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9402320
.word 0xf9002fa0
.word 0xd2815860
.word 0xd28000a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2520]
.word 0xf90033a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2528]
bl _p_138
.word 0xf9402fa1
.word 0xf94033a4
.word 0xf9002ba0
.word 0xd2815862
.word 0xd28000a3
bl _p_187
.word 0xf9401fb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9001f20
.word 0x9100e321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 25 92 0
.word 0xf9401fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401b22
.word 0xaa1903e0
.word 0xf9401f21
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940e450
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.loc 25 93 0
.word 0xf9401fb1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9401b22
.word 0xaa1903e0
.word 0xf9401f21
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940e050
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.loc 25 95 0
.word 0xf9401fb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.loc 25 96 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_94:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_ViewDidAppear_bool
BeaconTest_iOS_BeaconRangingController_ViewDidAppear_bool:
.loc 25 99 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2816]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 25 100 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x394063a1
bl _p_147
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 25 104 0
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_95:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_DidReceiveMemoryWarning
BeaconTest_iOS_BeaconRangingController_DidReceiveMemoryWarning:
.loc 25 107 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2824]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 25 108 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_184
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 25 110 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_96:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_get_NearestBeacon
BeaconTest_iOS_BeaconRangingController_get_NearestBeacon:
.file 26 "/Users/admin/Desktop/FYP/iOS/BeaconRangingController.designer.cs"
.loc 26 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2832]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_97:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_set_NearestBeacon_UIKit_UILabel
BeaconTest_iOS_BeaconRangingController_set_NearestBeacon_UIKit_UILabel:
.loc 26 19 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2840]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_98:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController_ReleaseDesignerOutlets
BeaconTest_iOS_BeaconRangingController_ReleaseDesignerOutlets:
.loc 26 22 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2848]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.loc 26 23 0
.word 0xf94013b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_201
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000540
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 26 24 0
.word 0xf94013b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_201
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_120
.word 0xf94013b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 26 25 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xaa1a03e0
.word 0xd2800001
bl _p_207
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.loc 26 26 0
.word 0xf94013b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.loc 26 27 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_99:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_MainViewController__ctor
BeaconTest_iOS_MainViewController__ctor:
.file 27 "/Users/admin/Desktop/FYP/iOS/MainViewController.cs"
.loc 27 19 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2856]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2864]
.word 0xd2800002
.word 0xd2800002
bl _p_180
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.loc 27 20 0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 27 21 0
.word 0xf9400fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9a:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_MainViewController_ViewDidLoad
BeaconTest_iOS_MainViewController_ViewDidLoad:
.loc 27 24 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2872]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 27 25 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_113
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 27 27 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9b:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_MainViewController_DidReceiveMemoryWarning
BeaconTest_iOS_MainViewController_DidReceiveMemoryWarning:
.loc 27 30 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2880]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 27 31 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_184
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 27 33 0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9c:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_MainViewController_MonitorButton_TouchUpInside_UIKit_UIButton
BeaconTest_iOS_MainViewController_MonitorButton_TouchUpInside_UIKit_UIButton:
.loc 27 15 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2888]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 27 16 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2801ec0
.word 0xf2a04000
.word 0xd2801ec0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_8
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9d:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_MainViewController_TransmitButton_TouchUpInside_UIKit_UIButton
BeaconTest_iOS_MainViewController_TransmitButton_TouchUpInside_UIKit_UIButton:
.loc 27 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2896]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.loc 27 11 0
.word 0xf94013b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2801ec0
.word 0xf2a04000
.word 0xd2801ec0
.word 0xf2a04000
bl _mono_create_corlib_exception_0
bl _p_8
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9e:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_MainViewController_ReleaseDesignerOutlets
BeaconTest_iOS_MainViewController_ReleaseDesignerOutlets:
.file 28 "/Users/admin/Desktop/FYP/iOS/MainViewController.designer.cs"
.loc 28 26 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2904]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 28 27 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_9f:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass__ctor
BeaconTest_iOS_EmptyClass__ctor:
.file 29 "/Users/admin/Desktop/FYP/iOS/EmptyClass.cs"
.loc 29 14 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2912]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_208
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.loc 29 15 0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 29 16 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_209
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2920]
bl _p_138
.word 0xf9401fa2
.word 0xf9001ba0
.word 0xaa1a03e1
bl _p_210
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9001740
.word 0x9100a341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 29 17 0
.word 0xf9400fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_a0:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass_UpdatedState_CoreBluetooth_CBCentralManager
BeaconTest_iOS_EmptyClass_UpdatedState_CoreBluetooth_CBCentralManager:
.loc 29 20 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001ba0
.word 0xf9001fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2928]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xf94023b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 29 21 0
.word 0xf94023b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940e030
.word 0xd63f0200
.word 0xf90033a0
.word 0xf94023b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f8
.word 0xaa0003e1
.word 0xaa0003f7
.word 0xaa0003e1
.word 0xaa0003e1
.word 0xd28000a1
.word 0xaa0003f6
.word 0xd28000be
.word 0xeb1e001f
.word 0x54000069
.word 0xaa1603e0
.word 0x1400008b
.word 0xaa1603e0
.word 0xaa1603f5
.word 0xd28000de
.word 0x6b1e02bf
.word 0x540010c2
.word 0xd37df2a0
.word 0x2a0003e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2936]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 29 23 0
.word 0xf94023b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2944]
bl _p_211
.word 0xf94023b1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.loc 29 24 0
.word 0xf94023b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400006d
.loc 29 26 0
.word 0xf94023b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2952]
bl _p_211
.word 0xf94023b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.loc 29 27 0
.word 0xf94023b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0x1400005c
.loc 29 30 0
.word 0xf94023b1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2960]
bl _p_211
.word 0xf94023b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.loc 29 31 0
.word 0xf94023b1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xd284e201

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #2968]
.word 0xd284e201
bl _p_212
.word 0xf90033a0
.word 0xf94023b1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_190
.word 0xf94023b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.loc 29 32 0
.word 0xf94023b1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000033
.loc 29 34 0
.word 0xf94023b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2976]
bl _p_211
.word 0xf94023b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.loc 29 35 0
.word 0xf94023b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000022
.loc 29 37 0
.word 0xf94023b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2984]
bl _p_211
.word 0xf94023b1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.loc 29 38 0
.word 0xf94023b1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000011
.loc 29 40 0
.word 0xf94023b1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2992]
bl _p_211
.word 0xf94023b1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.loc 29 41 0
.word 0xf94023b1
.word 0xf942f631
.word 0xb4000051
.word 0xd63f0220
.loc 29 43 0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_a1:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass_DiscoveredPeripheral_CoreBluetooth_CBCentralManager_CoreBluetooth_CBPeripheral_Foundation_NSDictionary_Foundation_NSNumber
BeaconTest_iOS_EmptyClass_DiscoveredPeripheral_CoreBluetooth_CBCentralManager_CoreBluetooth_CBPeripheral_Foundation_NSDictionary_Foundation_NSNumber:
.loc 29 45 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3000]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.loc 29 46 0
.word 0xf9401fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d430
.word 0xd63f0200
.word 0xf9002ba0
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_213
.word 0xf9401fb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.loc 29 47 0
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_a2:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass_Scan_int_string
BeaconTest_iOS_EmptyClass_Scan_int_string:
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3008]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf90047bf
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf90043a0
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3016]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf90053a0
bl _p_214
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90047a0
.word 0xf94047a1
.word 0xf9400ba0
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94047a0
.word 0xb9801ba1
.word 0xb9004401
.word 0xf94047a1
.word 0xf94013a0
.word 0xf9001420
.word 0x9100a021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94047a0
.word 0xf9004fa0
.word 0x910163a0
.word 0xaa0003e8
bl _p_100
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0x910163a1
.word 0x91004002
.word 0xaa0203e0
.word 0xf9402fa1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94033a1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94037a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94047a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94047a0
.word 0x91004000
.word 0x910103a1
.word 0xf9400001
.word 0xf90023a1
.word 0xf9400401
.word 0xf90027a1
.word 0xf9400800
.word 0xf9002ba0
.word 0x910103a0
.word 0x9101c3a0
.word 0xf94023a0
.word 0xf9003ba0
.word 0xf94027a0
.word 0xf9003fa0
.word 0xf9402ba0
.word 0xf90043a0
.word 0x9101c3a0
.word 0x910223a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3024]
bl _p_215
.word 0xf94017b1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_102
.word 0xf9004ba0
.word 0xf94017b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94017b1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_a3:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ViewControllers_BeaconViewController_ReleaseDesignerOutlets
BeaconTest_iOS_ViewControllers_BeaconViewController_ReleaseDesignerOutlets:
.file 30 "/Users/admin/Desktop/FYP/iOS/ViewControllers/BeaconViewController.designer.cs"
.loc 30 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3032]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.loc 30 19 0
.word 0xf9400fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a4:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_ViewControllers_BeaconViewController__ctor
BeaconTest_iOS_ViewControllers_BeaconViewController__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3040]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a5:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass0_0_T_REF__ctor
BeaconTest_Command_1__c__DisplayClass0_0_T_REF__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3048]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a6:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass0_0_T_REF___ctorb__0_object
BeaconTest_Command_1__c__DisplayClass0_0_T_REF___ctorb__0_object:
.loc 1 8 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3056]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf90027a0
.word 0xf9400fa0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_216
.word 0xaa0003e2
.word 0xf9400441
.word 0xf9401fa0
bl _p_34
.word 0xaa0003e1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a7:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass1_0_T_REF__ctor
BeaconTest_Command_1__c__DisplayClass1_0_T_REF__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3064]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_a8:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass1_0_T_REF___ctorb__0_object
BeaconTest_Command_1__c__DisplayClass1_0_T_REF___ctorb__0_object:
.loc 1 14 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3072]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800
.word 0xf90027a0
.word 0xf9400fa0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_217
.word 0xaa0003e2
.word 0xf9400441
.word 0xf9401fa0
bl _p_34
.word 0xaa0003e1
.word 0xf94027a2
.word 0xaa0203e0
.word 0xf90023a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_a9:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass1_0_T_REF___ctorb__1_object
BeaconTest_Command_1__c__DisplayClass1_0_T_REF___ctorb__1_object:
.loc 1 14 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3080]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c00
.word 0xf9002ba0
.word 0xf9400fa0
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_218
.word 0xaa0003e2
.word 0xf9400441
.word 0xf9401fa0
bl _p_34
.word 0xaa0003e1
.word 0xf9402ba2
.word 0xaa0203e0
.word 0xf90027a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94027a1
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_aa:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__c__DisplayClass3_0__ctor
BeaconTest_Command__c__DisplayClass3_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3088]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ab:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__c__DisplayClass3_0___ctorb__0_object
BeaconTest_Command__c__DisplayClass3_0___ctorb__0_object:
.loc 1 36 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3096]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf90023a1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_ac:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__c__DisplayClass5_0__ctor
BeaconTest_Command__c__DisplayClass5_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3104]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ad:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__c__DisplayClass5_0___ctorb__0_object
BeaconTest_Command__c__DisplayClass5_0___ctorb__0_object:
.loc 1 50 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3112]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf90023a1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_ae:
.text
	.align 4
	.no_dead_strip BeaconTest_Command__c__DisplayClass5_0___ctorb__1_object
BeaconTest_Command__c__DisplayClass5_0___ctorb__1_object:
.loc 1 50 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3120]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400c01
.word 0xaa0103e0
.word 0xf90027a1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf94027a1
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_af:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__4_2_TContract_REF_TService_REF__cctor
BeaconTest_ServiceLocator__c__4_2_TContract_REF_TService_REF__cctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf90017af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3128]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_219
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xf9001ba0
bl _p_220
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_221
.word 0xf9401ba1
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b0:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__4_2_TContract_REF_TService_REF__ctor
BeaconTest_ServiceLocator__c__4_2_TContract_REF_TService_REF__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3136]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b1:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__4_2_TContract_REF_TService_REF__Registerb__4_0
BeaconTest_ServiceLocator__c__4_2_TContract_REF_TService_REF__Registerb__4_0:
.loc 2 16 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3144]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400000
bl _p_222
bl _p_223
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b2:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__cctor
BeaconTest_ServiceLocator__c__cctor:
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3152]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3160]
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xf9001ba0
bl _p_224
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #512]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b3:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__ctor
BeaconTest_ServiceLocator__c__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3168]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b4:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c___cctorb__7_0
BeaconTest_ServiceLocator__c___cctorb__7_0:
.loc 2 8 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3176]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3184]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf9001ba0
bl _p_225
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b5:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__c__DisplayClass3_0__ctor
BeaconTest_CloudDataStore__c__DisplayClass3_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3192]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b6:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__c__DisplayClass3_0__GetItemsAsyncb__0
BeaconTest_CloudDataStore__c__DisplayClass3_0__GetItemsAsyncb__0:
.loc 4 31 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3200]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3208]
bl _p_226
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_b7:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__GetItemsAsyncd__3__ctor
BeaconTest_CloudDataStore__GetItemsAsyncd__3__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3216]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_b8:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__GetItemsAsyncd__3_MoveNext
BeaconTest_CloudDataStore__GetItemsAsyncd__3_MoveNext:
.loc 4 0 0 prologue_end
.word 0xa9ae7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3224]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0x9102a3a0
.word 0xf90057bf
.word 0xf9005bbf
.word 0x910283a0
.word 0xf90053bf
.word 0xf9005fbf
.word 0xf9402fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb9806800
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400011a
.word 0x14000001
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x6b1e035f
.word 0x54000060
.word 0x14000003
.word 0x140000c3
.word 0x140001b2
.loc 4 27 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.loc 4 28 0
.word 0xf9402fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x3941b000
.word 0x34000340
bl _p_227
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3232]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa0003f4
.word 0x14000003
.word 0xd2800000
.word 0xd2800014
.word 0xaa1403e0
.word 0x53001e80
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x34003be0
.word 0xf9402ba0
.word 0xf90087a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3240]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf90083a0
bl _p_228
.word 0xf9402fb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xf94087a1
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 29 0
.word 0xf9402fb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.loc 4 30 0
.word 0xf9402fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402ba0
.word 0xf9401800
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402400
.word 0xf9400800
.word 0xf9402ba0
.word 0xf9401400
.word 0xf9400802

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3248]
.word 0xaa0203e0
.word 0xf940005e
bl _p_229
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9426a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0x910263a0
.word 0xf90063a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_230
.word 0xf94063be
.word 0xf90003c0
.word 0xf9402fb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910263a0
.word 0x9102a3a0
.word 0xf9404fa0
.word 0xf90057a0
.word 0x9102a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3256]
bl _p_231
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35000ae0
.word 0xf9402ba0
.word 0xd2800001
.word 0xd2800013
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900681f
.word 0xf9402fb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x9102a3a1
.word 0x910223a1
.word 0xf94057a1
.word 0xf90047a1
.word 0x910223a1
.word 0x91014002
.word 0xaa0203e1
.word 0xf94047a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9005ba0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54003580
.word 0x91004000
.word 0x9102a3a1
.word 0x9102c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3264]
bl _p_232
.word 0xf9402fb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000195
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91014000
.word 0x910203a1
.word 0xf9400000
.word 0xf90043a0
.word 0x910203a0
.word 0x9102a3a0
.word 0xf94043a0
.word 0xf90057a0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54003160
.word 0x91014000
.word 0xf900001f
.word 0xf9402ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800017
.word 0xf2bffff7
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xf9008ba0
.word 0x9102a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3256]
bl _p_233
.word 0xf90087a0
.word 0xf9402fb1
.word 0xf9446631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a0
.word 0xf9408ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402401
.word 0xf9402ba0
.word 0xf9401c00
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xd2800001
.word 0xf900241f
.word 0xf9402ba0
.word 0xd2800001
.word 0xf9001c1f
.loc 4 31 0
.word 0xf9402fb1
.word 0xf9450631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402ba0
.word 0xf9401400
.word 0xf9002c20
.word 0x91016021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402c00
.word 0xf9400c00
.word 0xf9402ba0
.word 0xf9401800
.word 0xf90083a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002640

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3272]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf94083a1
.word 0xeb1f003f
.word 0x10000011
.word 0x540024a0
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3280]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3288]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3296]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3304]
bl _p_234
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9462631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0x910243a0
.word 0xf90063a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_235
.word 0xf94063be
.word 0xf90003c0
.word 0xf9402fb1
.word 0xf9465631
.word 0xb4000051
.word 0xd63f0220
.word 0x910243a0
.word 0x910283a0
.word 0xf9404ba0
.word 0xf90053a0
.word 0x910283a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3312]
bl _p_236
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9469231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35000b00
.word 0xf9402ba0
.word 0xd2800021
.word 0xd2800036
.word 0xd2800021
.word 0xd2800021
.word 0xd280003a
.word 0xd280003e
.word 0xb900681e
.word 0xf9402fb1
.word 0xf946ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x910283a1
.word 0x9101e3a1
.word 0xf94053a1
.word 0xf9003fa1
.word 0x9101e3a1
.word 0x91018002
.word 0xaa0203e1
.word 0xf9403fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9005ba0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001780
.word 0x91004000
.word 0x910283a1
.word 0x9102c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3320]
bl _p_237
.word 0xf9402fb1
.word 0xf9475e31
.word 0xb4000051
.word 0xd63f0220
.word 0x140000a5
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9478231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91018000
.word 0x9101c3a1
.word 0xf9400000
.word 0xf9003ba0
.word 0x9101c3a0
.word 0x910283a0
.word 0xf9403ba0
.word 0xf90053a0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001360
.word 0x91018000
.word 0xf900001f
.word 0xf9402ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800015
.word 0xf2bffff5
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xf9007fa0
.word 0x910283a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3312]
bl _p_238
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9482631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf9407fa1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402c01
.word 0xf9402ba0
.word 0xf9402000
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xd2800001
.word 0xf9002c1f
.word 0xf9402ba0
.word 0xd2800001
.word 0xf900201f
.loc 4 32 0
.word 0xf9402fb1
.word 0xf948c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xd2800001
.word 0xf900181f
.loc 4 34 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf948f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401400
.word 0xf9400c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf90067a0
.word 0xf94067a0
.word 0xf9005fa0
.word 0xf9402ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000740
.word 0x91004000
.word 0xf9405fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
bl _p_239
.word 0xf9402fb1
.word 0xf9496231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90077a0
.word 0xf94077a0
.word 0xb4000060
.word 0xf94077a0
bl _p_8
.word 0x1400001e
.loc 4 35 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9499e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002e0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
.word 0xaa1903e1
bl _p_241
.word 0xf9402fb1
.word 0xf949f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf94a0231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d27bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_b9:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__GetItemsAsyncd__3_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_CloudDataStore__GetItemsAsyncd__3_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3328]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ba:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__c__DisplayClass4_0__ctor
BeaconTest_CloudDataStore__c__DisplayClass4_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3336]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_bb:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__c__DisplayClass4_0__GetItemAsyncb__0
BeaconTest_CloudDataStore__c__DisplayClass4_0__GetItemAsyncb__0:
.loc 4 42 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3344]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3352]
bl _p_242
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_bc:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__GetItemAsyncd__4__ctor
BeaconTest_CloudDataStore__GetItemAsyncd__4__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3360]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_bd:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__GetItemAsyncd__4_MoveNext
BeaconTest_CloudDataStore__GetItemAsyncd__4_MoveNext:
.loc 4 0 0 prologue_end
.word 0xa9ae7bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9002ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3368]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0x9102a3a0
.word 0xf90057bf
.word 0xf9005bbf
.word 0x910283a0
.word 0xf90053bf
.word 0xf9005fbf
.word 0xf9402fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb9806800
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400011a
.word 0x14000001
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x6b1e035f
.word 0x54000060
.word 0x14000003
.word 0x140000ce
.word 0x140001ab
.loc 4 38 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.loc 4 39 0
.word 0xf9402fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401400
.word 0xb4000340
bl _p_227
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3232]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa0003f4
.word 0x14000003
.word 0xd2800000
.word 0xd2800014
.word 0xaa1403e0
.word 0x53001e80
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340037e0
.word 0xf9402ba0
.word 0xf9008fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3376]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf9008ba0
bl _p_243
.word 0xf9402fb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
.word 0xf9408fa1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 40 0
.word 0xf9402fb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.loc 4 41 0
.word 0xf9402fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xf9402ba0
.word 0xf9401c00
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402800
.word 0xf9400800
.word 0xf9402ba0
.word 0xf9401800
.word 0xf9400800
.word 0xf90087a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3384]
.word 0xf9402ba1
.word 0xf9401421
bl _p_38
.word 0xf90083a0
.word 0xf9402fb1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a1
.word 0xf94087a2
.word 0xaa0203e0
.word 0xf940005e
bl _p_229
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0x910263a0
.word 0xf90063a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_230
.word 0xf94063be
.word 0xf90003c0
.word 0xf9402fb1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910263a0
.word 0x9102a3a0
.word 0xf9404fa0
.word 0xf90057a0
.word 0x9102a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3256]
bl _p_231
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35000ae0
.word 0xf9402ba0
.word 0xd2800001
.word 0xd2800013
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900681f
.word 0xf9402fb1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x9102a3a1
.word 0x910223a1
.word 0xf94057a1
.word 0xf90047a1
.word 0x910223a1
.word 0x91016002
.word 0xaa0203e1
.word 0xf94047a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9005ba0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002fc0
.word 0x91004000
.word 0x9102a3a1
.word 0x9102c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3392]
bl _p_244
.word 0xf9402fb1
.word 0xf943ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000167
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf943ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91016000
.word 0x910203a1
.word 0xf9400000
.word 0xf90043a0
.word 0x910203a0
.word 0x9102a3a0
.word 0xf94043a0
.word 0xf90057a0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002ba0
.word 0x91016000
.word 0xf900001f
.word 0xf9402ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800017
.word 0xf2bffff7
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xf9008ba0
.word 0x9102a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3256]
bl _p_233
.word 0xf90087a0
.word 0xf9402fb1
.word 0xf9449231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a0
.word 0xf9408ba1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402801
.word 0xf9402ba0
.word 0xf9402000
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xd2800001
.word 0xf900281f
.word 0xf9402ba0
.word 0xd2800001
.word 0xf900201f
.loc 4 42 0
.word 0xf9402fb1
.word 0xf9453231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401c00
.word 0xf90083a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540022c0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3400]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf94083a1
.word 0xeb1f003f
.word 0x10000011
.word 0x54002120
.word 0xf9001001
.word 0x91008002
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3408]
.word 0xf9001401

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3416]
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #3424]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3432]
bl _p_245
.word 0xf9007fa0
.word 0xf9402fb1
.word 0xf9460a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0x910243a0
.word 0xf90063a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_246
.word 0xf94063be
.word 0xf90003c0
.word 0xf9402fb1
.word 0xf9463a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910243a0
.word 0x910283a0
.word 0xf9404ba0
.word 0xf90053a0
.word 0x910283a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3440]
bl _p_247
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9467631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x35000b00
.word 0xf9402ba0
.word 0xd2800021
.word 0xd2800036
.word 0xd2800021
.word 0xd2800021
.word 0xd280003a
.word 0xd280003e
.word 0xb900681e
.word 0xf9402fb1
.word 0xf946ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x910283a1
.word 0x9101e3a1
.word 0xf94053a1
.word 0xf9003fa1
.word 0x9101e3a1
.word 0x91018002
.word 0xaa0203e1
.word 0xf9403fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9005ba0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001400
.word 0x91004000
.word 0x910283a1
.word 0x9102c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3448]
bl _p_248
.word 0xf9402fb1
.word 0xf9474231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000089
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9476631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x91018000
.word 0x9101c3a1
.word 0xf9400000
.word 0xf9003ba0
.word 0x9101c3a0
.word 0x910283a0
.word 0xf9403ba0
.word 0xf90053a0
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000fe0
.word 0x91018000
.word 0xf900001f
.word 0xf9402ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800015
.word 0xf2bffff5
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xf9007fa0
.word 0x910283a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3440]
bl _p_249
.word 0xf9007ba0
.word 0xf9402fb1
.word 0xf9480a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf9407fa1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402ba0
.word 0xf9402400
.word 0xaa0003f9
.word 0x14000029
.loc 4 45 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9487231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0x1400001f
.word 0xf90067a0
.word 0xf94067a0
.word 0xf9005fa0
.word 0xf9402ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000740
.word 0x91004000
.word 0xf9405fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
bl _p_250
.word 0xf9402fb1
.word 0xf948d631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90077a0
.word 0xf94077a0
.word 0xb4000060
.word 0xf94077a0
bl _p_8
.word 0x1400001e
.loc 4 46 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9491231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf9402ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002e0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
.word 0xaa1903e1
bl _p_251
.word 0xf9402fb1
.word 0xf9496631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9497631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d27bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_be:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__GetItemAsyncd__4_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_CloudDataStore__GetItemAsyncd__4_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3456]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_bf:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__AddItemAsyncd__5__ctor
BeaconTest_CloudDataStore__AddItemAsyncd__5__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3464]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c0:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__AddItemAsyncd__5_MoveNext
BeaconTest_CloudDataStore__AddItemAsyncd__5_MoveNext:
.loc 4 0 0 prologue_end
.word 0xa9af7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3472]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0x9101e3a0
.word 0xf9003fbf
.word 0xf90043bf
.word 0xf90047bf
.word 0xf94027b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xb9805800
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x140000e0
.loc 4 49 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 4 50 0
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401400
.word 0xb40003a0
bl _p_227
.word 0xf90067a0
.word 0xf94027b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3232]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xaa0003f6
.word 0x14000003
.word 0xd2800020
.word 0xd2800036
.word 0xaa1603e0
.word 0x53001ec0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340001a0
.loc 4 51 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f9
.word 0x14000124
.loc 4 53 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf90087a0
.word 0xf94023a0
.word 0xf9401400
bl _p_252
.word 0xf90083a0
.word 0xf94027b1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xf94087a1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 55 0
.word 0xf94027b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401800
.word 0xf9400800
.word 0xf90073a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3248]
.word 0xf9006ba0
.word 0xf94023a0
.word 0xf9401c00
.word 0xf90077a0
bl _p_253
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3480]
.word 0xf9007fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3488]
.word 0xd2800701
.word 0xd2800701
bl _p_2
.word 0xf94077a1
.word 0xf9407ba2
.word 0xf9407fa3
.word 0xf9006fa0
bl _p_254
.word 0xf94027b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xf9406fa2
.word 0xf94073a3
.word 0xaa0303e0
.word 0xf940007e
bl _p_255
.word 0xf90067a0
.word 0xf94027b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0x9101c3a0
.word 0xf9004ba0
.word 0xaa0103e0
.word 0xf940003e
bl _p_256
.word 0xf9404bbe
.word 0xf90003c0
.word 0xf94027b1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x9101e3a0
.word 0xf9403ba0
.word 0xf9003fa0
.word 0x9101e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3496]
bl _p_257
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9432631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x35000ae0
.word 0xf94023a0
.word 0xd2800001
.word 0xd2800015
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900581f
.word 0xf94027b1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x9101e3a1
.word 0x9101a3a1
.word 0xf9403fa1
.word 0xf90037a1
.word 0x9101a3a1
.word 0x91014002
.word 0xaa0203e1
.word 0xf94037a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540016c0
.word 0x91004000
.word 0x9101e3a1
.word 0x910203a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3504]
bl _p_258
.word 0xf94027b1
.word 0xf943ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x140000a0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9441231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x91014000
.word 0x910183a1
.word 0xf9400000
.word 0xf90033a0
.word 0x910183a0
.word 0x9101e3a0
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540012a0
.word 0x91014000
.word 0xf900001f
.word 0xf94023a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800017
.word 0xf2bffff7
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900581e
.word 0xf94023a0
.word 0xf9006ba0
.word 0x9101e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3496]
bl _p_259
.word 0xf90067a0
.word 0xf94027b1
.word 0xf944b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf9406ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a1
.word 0xf94023a0
.word 0xf9402400
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xd2800001
.word 0xf900241f
.loc 4 57 0
.word 0xf94027b1
.word 0xf9454631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9402001
.word 0xaa0103e0
.word 0xf940003e
bl _p_260
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9457231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x53001c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90047a0
.word 0xf94023a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900581e
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000720
.word 0x91004000
.word 0xf94047a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_261
.word 0xf94027b1
.word 0xf945de31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x1400001e
.loc 4 58 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9461a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900581e
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002c0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0xaa1903e1
bl _p_262
.word 0xf94027b1
.word 0xf9466e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9467e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8d17bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_c1:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__AddItemAsyncd__5_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_CloudDataStore__AddItemAsyncd__5_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3512]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_c2:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__UpdateItemAsyncd__6__ctor
BeaconTest_CloudDataStore__UpdateItemAsyncd__6__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3520]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c3:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__UpdateItemAsyncd__6_MoveNext
BeaconTest_CloudDataStore__UpdateItemAsyncd__6_MoveNext:
.loc 4 0 0 prologue_end
.word 0xa9ac7bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3528]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0x9101e3a0
.word 0xf9003fbf
.word 0xf90043bf
.word 0xf90047bf
.word 0xf94027b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xb9806800
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400013a
.loc 4 61 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 4 62 0
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401400
.word 0xb4000520
.word 0xf94023a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf940003e
bl _p_263
.word 0xf90063a0
.word 0xf94027b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xb40003a0
bl _p_227
.word 0xf90067a0
.word 0xf94027b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3232]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xaa0003f6
.word 0x14000003
.word 0xd2800020
.word 0xd2800036
.word 0xaa1603e0
.word 0x53001ec0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340001a0
.loc 4 63 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f9
.word 0x14000172
.loc 4 65 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9009ba0
.word 0xf94023a0
.word 0xf9401400
bl _p_252
.word 0xf90097a0
.word 0xf94027b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94097a0
.word 0xf9409ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 66 0
.word 0xf94027b1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9008fa0
bl _p_253
.word 0xf90093a0
.word 0xf94027b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94093a2
.word 0xf94023a0
.word 0xf9401c01
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9408050
.word 0xd63f0200
.word 0xf9008ba0
.word 0xf94027b1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
.word 0xf9408fa1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 67 0
.word 0xf94027b1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf90083a0
.word 0xf94023a0
.word 0xf9402000
.word 0xf90087a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3536]
.word 0xd2800701
.word 0xd2800701
bl _p_2
.word 0xf94087a1
.word 0xf9007fa0
bl _p_264
.word 0xf94027b1
.word 0xf9430e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
.word 0xf94083a1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 4 69 0
.word 0xf94027b1
.word 0xf9435631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401800
.word 0xf9400800
.word 0xf9006fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3384]
.word 0xf90077a0
.word 0xf94023a0
.word 0xf9401401
.word 0xaa0103e0
.word 0xf940003e
bl _p_263
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
.word 0xf9407ba1
bl _p_38
.word 0xf90073a0
.word 0xf94027b1
.word 0xf943be31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #648]
.word 0xd2800901
.word 0xd2800901
bl _p_2
.word 0xf94073a1
.word 0xf9006ba0
bl _p_39
.word 0xf94027b1
.word 0xf943f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xf9406fa3
.word 0xf94023a0
.word 0xf9402402
.word 0xaa0303e0
.word 0xf940007e
bl _p_265
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9442231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0x9101c3a0
.word 0xf9004ba0
.word 0xaa0103e0
.word 0xf940003e
bl _p_256
.word 0xf9404bbe
.word 0xf90003c0
.word 0xf94027b1
.word 0xf9445231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x9101e3a0
.word 0xf9403ba0
.word 0xf9003fa0
.word 0x9101e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3496]
bl _p_257
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x35000ae0
.word 0xf94023a0
.word 0xd2800001
.word 0xd2800015
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900681f
.word 0xf94027b1
.word 0xf944c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x9101e3a1
.word 0x9101a3a1
.word 0xf9403fa1
.word 0xf90037a1
.word 0x9101a3a1
.word 0x91018002
.word 0xaa0203e1
.word 0xf94037a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540016c0
.word 0x91004000
.word 0x9101e3a1
.word 0x910203a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3544]
bl _p_266
.word 0xf94027b1
.word 0xf9455631
.word 0xb4000051
.word 0xd63f0220
.word 0x140000a0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9457a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x91018000
.word 0x910183a1
.word 0xf9400000
.word 0xf90033a0
.word 0x910183a0
.word 0x9101e3a0
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540012a0
.word 0x91018000
.word 0xf900001f
.word 0xf94023a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800017
.word 0xf2bffff7
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf94023a0
.word 0xf9006ba0
.word 0x9101e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3496]
bl _p_259
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9461e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf9406ba1
.word 0xf9002c20
.word 0x91016021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a1
.word 0xf94023a0
.word 0xf9402c00
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xd2800001
.word 0xf9002c1f
.loc 4 71 0
.word 0xf94027b1
.word 0xf946ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9402801
.word 0xaa0103e0
.word 0xf940003e
bl _p_260
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf946da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x53001c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90047a0
.word 0xf94023a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000720
.word 0x91004000
.word 0xf94047a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_261
.word 0xf94027b1
.word 0xf9474631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x1400001e
.loc 4 72 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9478231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900681e
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002c0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0xaa1903e1
bl _p_262
.word 0xf94027b1
.word 0xf947d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf947e631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8d47bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_c4:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__UpdateItemAsyncd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_CloudDataStore__UpdateItemAsyncd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3552]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_c5:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__DeleteItemAsyncd__7__ctor
BeaconTest_CloudDataStore__DeleteItemAsyncd__7__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3560]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c6:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__DeleteItemAsyncd__7_MoveNext
BeaconTest_CloudDataStore__DeleteItemAsyncd__7_MoveNext:
.loc 4 0 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf90023a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3568]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0x9101e3a0
.word 0xf9003fbf
.word 0xf90043bf
.word 0xf90047bf
.word 0xf94027b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xb9805000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x140000b6
.loc 4 75 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.loc 4 76 0
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401400
bl _p_267
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x340003a0
bl _p_227
.word 0xf90067a0
.word 0xf94027b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3232]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0xaa0003f6
.word 0x14000003
.word 0xd2800000
.word 0xd2800016
.word 0xaa1603e0
.word 0x53001ec0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0x340001a0
.loc 4 77 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f9
.word 0x140000f2
.loc 4 79 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401800
.word 0xf9400800
.word 0xf9006fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3384]
.word 0xf94023a1
.word 0xf9401421
bl _p_38
.word 0xf9006ba0
.word 0xf94027b1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba1
.word 0xf9406fa2
.word 0xaa0203e0
.word 0xf940005e
bl _p_268
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a1
.word 0x9101c3a0
.word 0xf9004ba0
.word 0xaa0103e0
.word 0xf940003e
bl _p_256
.word 0xf9404bbe
.word 0xf90003c0
.word 0xf94027b1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x9101e3a0
.word 0xf9403ba0
.word 0xf9003fa0
.word 0x9101e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3496]
bl _p_257
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9427e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x35000ae0
.word 0xf94023a0
.word 0xd2800001
.word 0xd2800015
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900501f
.word 0xf94027b1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x9101e3a1
.word 0x9101a3a1
.word 0xf9403fa1
.word 0xf90037a1
.word 0x9101a3a1
.word 0x91012002
.word 0xaa0203e1
.word 0xf94037a0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xf90043a0
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540016c0
.word 0x91004000
.word 0x9101e3a1
.word 0x910203a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3576]
bl _p_269
.word 0xf94027b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0x140000a0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9436a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x91012000
.word 0x910183a1
.word 0xf9400000
.word 0xf90033a0
.word 0x910183a0
.word 0x9101e3a0
.word 0xf94033a0
.word 0xf9003fa0
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540012a0
.word 0x91012000
.word 0xf900001f
.word 0xf94023a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800017
.word 0xf2bffff7
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94023a0
.word 0xf9006ba0
.word 0x9101e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3496]
bl _p_259
.word 0xf90067a0
.word 0xf94027b1
.word 0xf9440e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf9406ba1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a1
.word 0xf94023a0
.word 0xf9402000
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94023a0
.word 0xd2800001
.word 0xf900201f
.loc 4 81 0
.word 0xf94027b1
.word 0xf9449e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_260
.word 0x53001c00
.word 0xf90063a0
.word 0xf94027b1
.word 0xf944ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x53001c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90047a0
.word 0xf94023a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000720
.word 0x91004000
.word 0xf94047a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_261
.word 0xf94027b1
.word 0xf9453631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x1400001e
.loc 4 82 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9457231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf94023a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002c0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0xaa1903e1
bl _p_262
.word 0xf94027b1
.word 0xf945c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf945d631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_c7:
.text
	.align 4
	.no_dead_strip BeaconTest_CloudDataStore__DeleteItemAsyncd__7_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_CloudDataStore__DeleteItemAsyncd__7_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3584]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_c8:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__AddItemAsyncd__2__ctor
BeaconTest_MockDataStore__AddItemAsyncd__2__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3592]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c9:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__AddItemAsyncd__2_MoveNext
BeaconTest_MockDataStore__AddItemAsyncd__2_MoveNext:
.loc 5 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3600]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0xd2800019
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xb9804000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x14000076
.loc 5 32 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 33 0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400802
.word 0xf9401ba0
.word 0xf9401401
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.loc 5 35 0
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0xd2800020
bl _p_270
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910183a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_271
.word 0xf94043be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_272
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf9401ba0
.word 0xd2800001
.word 0xd2800017
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900401f
.word 0xf9401fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9101a3a1
.word 0x910163a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001160
.word 0x91004000
.word 0x9101a3a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3624]
bl _p_273
.word 0xf9401fb1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000076
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9100e000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000d40
.word 0x9100e000
.word 0xf900001f
.word 0xf9401ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9401ba0
.word 0xf9005ba0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_274
.word 0xf9005fa0
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9430a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
.word 0x39011001
.word 0xf9401ba0
.word 0x39411000
.word 0x53001c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000700
.word 0x91004000
.word 0xf9403fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_261
.word 0xf9401fb1
.word 0xf9438631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_8
.word 0x1400001e
.loc 5 36 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002a0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0xaa1903e1
bl _p_262
.word 0xf9401fb1
.word 0xf9441631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9442631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_ca:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__AddItemAsyncd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_MockDataStore__AddItemAsyncd__2_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3632]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_cb:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__c__DisplayClass3_0__ctor
BeaconTest_MockDataStore__c__DisplayClass3_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3640]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_cc:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__c__DisplayClass3_0__UpdateItemAsyncb__0_BeaconTest_Item
BeaconTest_MockDataStore__c__DisplayClass3_0__UpdateItemAsyncb__0_BeaconTest_Item:
.loc 5 40 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3648]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_263
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400801
.word 0xaa0103e0
.word 0xf940003e
bl _p_263
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9402ba1
bl _p_151
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_cd:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__UpdateItemAsyncd__3__ctor
BeaconTest_MockDataStore__UpdateItemAsyncd__3__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3656]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ce:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__UpdateItemAsyncd__3_MoveNext
BeaconTest_MockDataStore__UpdateItemAsyncd__3_MoveNext:
.loc 5 0 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3664]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0xd2800019
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xb9805000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400010a
.word 0xf9401ba0
.word 0xf9007ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3672]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf90077a0
bl _p_275
.word 0xf9401fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
.word 0xf9407ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9401c01
.word 0xf9401ba0
.word 0xf9401400
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 5 39 0
.word 0xf9401fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 40 0
.word 0xf9401fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf90067a0
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400800
.word 0xf9006fa0
.word 0xf9401ba0
.word 0xf9401c00
.word 0xf90073a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002960

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3680]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9406fa0
.word 0xf94073a2
.word 0xeb1f005f
.word 0x10000011
.word 0x54002780
.word 0xf9001022
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3688]
.word 0xf9001422

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3696]
.word 0xf9002022

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3704]
.word 0xf9401443
.word 0xf9000c23
.word 0xf9401042
.word 0xf9000822
.word 0xd2800002
.word 0x3901803f

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3712]
bl _p_276
.word 0xf9006ba0
.word 0xf9401fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3720]
bl _p_277
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xf94067a1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 5 41 0
.word 0xf9401fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400802
.word 0xf9401ba0
.word 0xf9402001
.word 0xaa0203e0
.word 0xf940005e
bl _p_278
.word 0x53001c00
.word 0xf9401fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.loc 5 42 0
.word 0xf9401fb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400802
.word 0xf9401ba0
.word 0xf9401c00
.word 0xf9400801
.word 0xaa0203e0
.word 0xf940005e
bl _p_64
.word 0xf9401fb1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 44 0
.word 0xf9401fb1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0xd2800020
bl _p_270
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910183a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_271
.word 0xf94043be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_272
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf943c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf9401ba0
.word 0xd2800001
.word 0xd2800017
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900501f
.word 0xf9401fb1
.word 0xf943fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9101a3a1
.word 0x910163a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x91012002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001160
.word 0x91004000
.word 0x9101a3a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3728]
bl _p_279
.word 0xf9401fb1
.word 0xf9448e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000076
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x91012000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000d40
.word 0x91012000
.word 0xf900001f
.word 0xf9401ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xf9005ba0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_274
.word 0xf9005fa0
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9455a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
.word 0x39015001
.word 0xf9401ba0
.word 0x39415000
.word 0x53001c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000700
.word 0x91004000
.word 0xf9403fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_261
.word 0xf9401fb1
.word 0xf945d631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_8
.word 0x1400001e
.loc 5 45 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9461231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002a0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0xaa1903e1
bl _p_262
.word 0xf9401fb1
.word 0xf9466631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9467631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_cf:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__UpdateItemAsyncd__3_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_MockDataStore__UpdateItemAsyncd__3_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3736]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_d0:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__c__DisplayClass4_0__ctor
BeaconTest_MockDataStore__c__DisplayClass4_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3744]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d1:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__c__DisplayClass4_0__DeleteItemAsyncb__0_BeaconTest_Item
BeaconTest_MockDataStore__c__DisplayClass4_0__DeleteItemAsyncb__0_BeaconTest_Item:
.loc 5 49 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3752]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_263
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9400ba1
.word 0xf9400821
bl _p_151
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_d2:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__DeleteItemAsyncd__4__ctor
BeaconTest_MockDataStore__DeleteItemAsyncd__4__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3760]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d3:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__DeleteItemAsyncd__4_MoveNext
BeaconTest_MockDataStore__DeleteItemAsyncd__4_MoveNext:
.loc 5 0 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3768]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0xd2800019
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xb9805000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x140000f9
.word 0xf9401ba0
.word 0xf9007ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3776]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf90077a0
bl _p_280
.word 0xf9401fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94077a0
.word 0xf9407ba1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9401c01
.word 0xf9401ba0
.word 0xf9401400
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 5 48 0
.word 0xf9401fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 49 0
.word 0xf9401fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf90067a0
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400800
.word 0xf9006fa0
.word 0xf9401ba0
.word 0xf9401c00
.word 0xf90073a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002740

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3680]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9406fa0
.word 0xf94073a2
.word 0xeb1f005f
.word 0x10000011
.word 0x54002560
.word 0xf9001022
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3784]
.word 0xf9001422

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3792]
.word 0xf9002022

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3800]
.word 0xf9401443
.word 0xf9000c23
.word 0xf9401042
.word 0xf9000822
.word 0xd2800002
.word 0x3901803f

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3712]
bl _p_276
.word 0xf9006ba0
.word 0xf9401fb1
.word 0xf9423631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3720]
bl _p_277
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xf94067a1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 5 50 0
.word 0xf9401fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400802
.word 0xf9401ba0
.word 0xf9402001
.word 0xaa0203e0
.word 0xf940005e
bl _p_278
.word 0x53001c00
.word 0xf9401fb1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.loc 5 52 0
.word 0xf9401fb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3608]
.word 0xd2800020
bl _p_270
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910183a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_271
.word 0xf94043be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_272
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf9401ba0
.word 0xd2800001
.word 0xd2800017
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900501f
.word 0xf9401fb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9101a3a1
.word 0x910163a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x91012002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001160
.word 0x91004000
.word 0x9101a3a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3808]
bl _p_281
.word 0xf9401fb1
.word 0xf9444a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000076
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9446e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x91012000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000d40
.word 0x91012000
.word 0xf900001f
.word 0xf9401ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xf9005ba0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_274
.word 0xf9005fa0
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9451631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
.word 0x39015001
.word 0xf9401ba0
.word 0x39415000
.word 0x53001c00
.word 0xaa0003f9
.word 0x1400001f
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000700
.word 0x91004000
.word 0xf9403fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
bl _p_261
.word 0xf9401fb1
.word 0xf9459231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_8
.word 0x1400001e
.loc 5 53 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002a0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #744]
.word 0xaa1903e1
bl _p_262
.word 0xf9401fb1
.word 0xf9462231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9463231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_d4:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__DeleteItemAsyncd__4_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_MockDataStore__DeleteItemAsyncd__4_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3816]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_d5:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__c__DisplayClass5_0__ctor
BeaconTest_MockDataStore__c__DisplayClass5_0__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3824]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d6:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__c__DisplayClass5_0__GetItemAsyncb__0_BeaconTest_Item
BeaconTest_MockDataStore__c__DisplayClass5_0__GetItemAsyncb__0_BeaconTest_Item:
.loc 5 57 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3832]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_263
.word 0xf90027a0
.word 0xf94013b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027a0
.word 0xf9400ba1
.word 0xf9400821
bl _p_151
.word 0x53001c00
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_d7:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__GetItemAsyncd__5__ctor
BeaconTest_MockDataStore__GetItemAsyncd__5__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3840]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_d8:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__GetItemAsyncd__5_MoveNext
BeaconTest_MockDataStore__GetItemAsyncd__5_MoveNext:
.loc 5 0 0 prologue_end
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3848]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0xd2800019
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xb9805000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x140000c9
.word 0xf9401ba0
.word 0xf90073a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3856]
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xf9006fa0
bl _p_282
.word 0xf9401fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa0
.word 0xf94073a1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9401c01
.word 0xf9401ba0
.word 0xf9401400
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 5 56 0
.word 0xf9401fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 57 0
.word 0xf9401fb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401800
.word 0xf9400800
.word 0xf90067a0
.word 0xf9401ba0
.word 0xf9401c00
.word 0xf9006ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540022a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3680]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94067a0
.word 0xf9406ba2
.word 0xeb1f005f
.word 0x10000011
.word 0x540020c0
.word 0xf9001022
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3864]
.word 0xf9001422

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3872]
.word 0xf9002022

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #3880]
.word 0xf9401443
.word 0xf9000c23
.word 0xf9401042
.word 0xf9000822
.word 0xd2800002
.word 0x3901803f

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3888]
bl _p_283
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf9422e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3896]
bl _p_284
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf9425631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910183a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_246
.word 0xf94043be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3440]
bl _p_247
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf9401ba0
.word 0xd2800001
.word 0xd2800017
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900501f
.word 0xf9401fb1
.word 0xf942f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9101a3a1
.word 0x910163a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x91012002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001280
.word 0x91004000
.word 0x9101a3a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3904]
bl _p_285
.word 0xf9401fb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400007f
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x91012000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000e60
.word 0x91012000
.word 0xf900001f
.word 0xf9401ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xf9005fa0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3440]
bl _p_249
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9445231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9402000
.word 0xaa0003f9
.word 0x1400001f
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000700
.word 0x91004000
.word 0xf9403fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
bl _p_250
.word 0xf9401fb1
.word 0xf944f631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_8
.word 0x1400001e
.loc 5 58 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9453231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002a0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #712]
.word 0xaa1903e1
bl _p_251
.word 0xf9401fb1
.word 0xf9458631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9459631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_d9:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__GetItemAsyncd__5_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_MockDataStore__GetItemAsyncd__5_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3912]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_da:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__GetItemsAsyncd__6__ctor
BeaconTest_MockDataStore__GetItemsAsyncd__6__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3920]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_db:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__GetItemsAsyncd__6_MoveNext
BeaconTest_MockDataStore__GetItemsAsyncd__6_MoveNext:
.loc 5 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3928]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0xd2800019
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xb9804000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x14000067
.loc 5 61 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 5 62 0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401400
.word 0xf9400800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3936]
bl _p_286
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910183a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_287
.word 0xf94043be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3944]
bl _p_288
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf9401ba0
.word 0xd2800001
.word 0xd2800017
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900401f
.word 0xf9401fb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9101a3a1
.word 0x910163a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001280
.word 0x91004000
.word 0x9101a3a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3952]
bl _p_289
.word 0xf9401fb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400007f
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9100e000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000e60
.word 0x9100e000
.word 0xf900001f
.word 0xf9401ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9401ba0
.word 0xf9005fa0
.word 0x9101a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3944]
bl _p_290
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9401800
.word 0xaa0003f9
.word 0x1400001f
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000700
.word 0x91004000
.word 0xf9403fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
bl _p_239
.word 0xf9401fb1
.word 0xf9436e31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_8
.word 0x1400001e
.loc 5 63 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540002a0
.word 0x91004000
.word 0xaa1903e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #680]
.word 0xaa1903e1
bl _p_241
.word 0xf9401fb1
.word 0xf943fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9440e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_dc:
.text
	.align 4
	.no_dead_strip BeaconTest_MockDataStore__GetItemsAsyncd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_MockDataStore__GetItemsAsyncd__6_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3960]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_dd:
.text
	.align 4
	.no_dead_strip BeaconTest_AboutViewModel__c__cctor
BeaconTest_AboutViewModel__c__cctor:
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3968]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #3976]
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xf9001ba0
bl _p_291
.word 0xf9400bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1032]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_de:
.text
	.align 4
	.no_dead_strip BeaconTest_AboutViewModel__c__ctor
BeaconTest_AboutViewModel__c__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3984]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_df:
.text
	.align 4
	.no_dead_strip BeaconTest_AboutViewModel__c___ctorb__0_0
BeaconTest_AboutViewModel__c___ctorb__0_0:
.loc 6 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #3992]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
bl _p_292
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba3

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #4000]
.word 0xd2800000
.word 0xaa0303e0
.word 0xd2800002
.word 0xf9400063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4008]
.word 0x928006f0
.word 0xf2bffff0
.word 0xf8706870
.word 0xd63f0200
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e0:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__ExecuteLoadItemsCommandd__13__ctor
BeaconTest_ItemsViewModel__ExecuteLoadItemsCommandd__13__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #4016]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_e1:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__ExecuteLoadItemsCommandd__13_MoveNext
BeaconTest_ItemsViewModel__ExecuteLoadItemsCommandd__13_MoveNext:
.loc 9 0 0 prologue_end
.word 0xa9ae7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #4024]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xb9006bbf
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf9003bbf
.word 0xf9003fbf
.word 0xf9401bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9806000
.word 0xb9006ba0
.word 0xb9806ba0
.word 0x34000040
.word 0x14000002
.word 0x14000035
.loc 9 23 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 9 24 0
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
bl _p_157
.word 0x53001c00
.word 0xf90083a0
.word 0xf9401bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x53001c00
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x34000140
.loc 9 25 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0x1400021e
.loc 9 27 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
.word 0xd2800021
.word 0xd2800021
bl _p_293
.word 0xf9401bb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9806ba0
.word 0x34000040
.word 0x14000002
.word 0x1400008d
.loc 9 30 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.loc 9 31 0
.word 0xf9401bb1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
bl _p_146
.word 0xf9008fa0
.word 0xf9401bb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_294
.word 0xf9401bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.loc 9 32 0
.word 0xf9401bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
bl _p_295
.word 0xf9008ba0
.word 0xf9401bb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba2
.word 0xd2800020
.word 0xaa0203e0
.word 0xd2800021
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4032]
.word 0x928011f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf90087a0
.word 0xf9401bb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a1
.word 0x910163a0
.word 0xf9004ba0
.word 0xaa0103e0
.word 0xf940003e
bl _p_235
.word 0xf9404bbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3312]
bl _p_236
.word 0x53001c00
.word 0xf90083a0
.word 0xf9401bb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x35000ba0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xb9006bbf
.word 0xb900601f
.word 0xf9401bb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x91016002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x540035e0
.word 0x91004000
.word 0x910183a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4040]
bl _p_296
.word 0xf9401bb1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.word 0xf90047bf
.word 0x94000145
.word 0xf94047a0
.word 0xb4000040
bl _p_68
.word 0x14000195
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x91016000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54003120
.word 0x91016000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0xb9006bbe
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900601e
.word 0xf94017a0
.word 0xf9008fa0
.word 0x910183a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3312]
bl _p_238
.word 0xf9008ba0
.word 0xf9401bb1
.word 0xf9444631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9408ba0
.word 0xf9408fa1
.word 0xf9001c20
.word 0x9100e021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a1
.word 0xf94017a0
.word 0xf9401c00
.word 0xf9001820
.word 0x9100c021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xd2800001
.word 0xf9001c1f
.loc 9 33 0
.word 0xf9401bb1
.word 0xf944d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf944e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90087a0
.word 0xf94017a0
.word 0xf9401801
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4048]
.word 0x928012f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90083a0
.word 0xf9401bb1
.word 0xf9452e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xf94087a1
.word 0xf9002020
.word 0x91010021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0x1400004a
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9458a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9008ba0
.word 0xf94017a0
.word 0xf9402001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4056]
.word 0x928005f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf90087a0
.word 0xf9401bb1
.word 0xf945d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a0
.word 0xf9408ba1
.word 0xf9002420
.word 0x91012021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 9 34 0
.word 0xf9401bb1
.word 0xf9461a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 35 0
.word 0xf9401bb1
.word 0xf9462a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
bl _p_146
.word 0xf90083a0
.word 0xf9401bb1
.word 0xf9464a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a2
.word 0xf94017a0
.word 0xf9402401
.word 0xaa0203e0
.word 0xf940005e
bl _p_297
.word 0xf9401bb1
.word 0xf9467231
.word 0xb4000051
.word 0xd63f0220
.loc 9 36 0
.word 0xf9401bb1
.word 0xf9468231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xd2800001
.word 0xf900241f
.loc 9 33 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf946ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9402001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4064]
.word 0x92800ef0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf90083a0
.word 0xf9401bb1
.word 0xf946f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x35fff3a0
.word 0xf90043bf
.word 0x94000005
.word 0xf94043a0
.word 0xb4000040
bl _p_68
.word 0x1400001a
.word 0xf90067be
.word 0xb9806ba0
.word 0xd2800001
.word 0x6b1f001f
.word 0x5400026a
.word 0xf94017a0
.word 0xf9402000
.word 0xb4000200
.word 0xf94017a0
.word 0xf9402001
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #4072]
.word 0x928004f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9476e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067be
.word 0xd61f03c0
.word 0xf94017a0
.word 0xd2800001
.word 0xf900201f
.loc 9 37 0
.word 0xf9401bb1
.word 0xf9479231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xd2800001
.word 0xf900181f
.word 0x14000032
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90083a0
.loc 9 38 0
.word 0xf9401bb1
.word 0xf947be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xf9003fa0
.word 0xf94017a1
.word 0xf9403fa0
.word 0xf9002820
.word 0x91014021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 9 39 0
.word 0xf9401bb1
.word 0xf9480e31
.word 0xb4000051
.word 0xd63f0220
.loc 9 40 0
.word 0xf9401bb1
.word 0xf9481e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9402800
bl _p_298
.word 0xf9401bb1
.word 0xf9483a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 41 0
.word 0xf9401bb1
.word 0xf9484a31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9007ba0
.word 0xf9407ba0
.word 0xb4000060
.word 0xf9407ba0
bl _p_8
.word 0x14000001
.word 0xf90047bf
.word 0x94000005
.word 0xf94047a0
.word 0xb4000040
bl _p_68
.word 0x14000021
.word 0xf90073be
.word 0xb9806ba0
.word 0xd2800001
.word 0x6b1f001f
.word 0x5400034a
.loc 9 43 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf948b231
.word 0xb4000051
.word 0xd63f0220
.loc 9 44 0
.word 0xf9401bb1
.word 0xf948c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
.word 0xd2800001
.word 0xd2800001
bl _p_293
.word 0xf9401bb1
.word 0xf948e631
.word 0xb4000051
.word 0xd63f0220
.loc 9 45 0
.word 0xf9401bb1
.word 0xf948f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073be
.word 0xd61f03c0
.word 0x1400001c
.word 0xf90053a0
.word 0xf94053a0
.word 0xf9003fa0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900601e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000600
.word 0x91004000
.word 0xf9403fa1
bl _p_299
.word 0xf9401bb1
.word 0xf9495231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9007fa0
.word 0xf9407fa0
.word 0xb4000060
.word 0xf9407fa0
bl _p_8
.word 0x14000019
.loc 9 46 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9498e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900601e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_300
.word 0xf9401bb1
.word 0xf949ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf949de31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8d27bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_e2:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__ExecuteLoadItemsCommandd__13_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_ItemsViewModel__ExecuteLoadItemsCommandd__13_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #4080]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e3:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__AddItemd__14__ctor
BeaconTest_ItemsViewModel__AddItemd__14__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #4088]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_e4:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__AddItemd__14_MoveNext
BeaconTest_ItemsViewModel__AddItemd__14_MoveNext:
.loc 9 0 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #0]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9804000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400008a
.loc 9 49 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 9 50 0
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401800
bl _p_146
.word 0xf90067a0
.word 0xf9401bb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a2
.word 0xf94017a0
.word 0xf9401401
.word 0xaa0203e0
.word 0xf940005e
bl _p_297
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.loc 9 51 0
.word 0xf9401bb1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401800
bl _p_295
.word 0xf90063a0
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a2
.word 0xf94017a0
.word 0xf9401401
.word 0xaa0203e0
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #8]
.word 0x928000f0
.word 0xf2bffff0
.word 0xf8706850
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf9401bb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_271
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_272
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900401f
.word 0xf9401bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000f20
.word 0x91004000
.word 0x910183a1
.word 0x9101a3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #16]
bl _p_301
.word 0xf9401bb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000064
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x9100e000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000b00
.word 0x9100e000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0x910183a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #3616]
bl _p_274
.word 0x53001c00
.word 0xf9401bb1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000600
.word 0x91004000
.word 0xf9403ba1
bl _p_299
.word 0xf9401bb1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_8
.word 0x14000019
.loc 9 52 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf943da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_300
.word 0xf9401bb1
.word 0xf9441a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_e5:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel__AddItemd__14_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_ItemsViewModel__AddItemd__14_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #24]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e6:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel____ctorb__12_0d__ctor
BeaconTest_ItemsViewModel____ctorb__12_0d__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #32]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_e7:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel____ctorb__12_0d_MoveNext
BeaconTest_ItemsViewModel____ctorb__12_0d_MoveNext:
.loc 9 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #40]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9804000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400005c
.loc 9 18 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401800
bl _p_302
.word 0xf9005fa0
.word 0xf9401bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_303
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0
bl _p_304
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900401f
.word 0xf9401bb1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000da0
.word 0x91004000
.word 0x910183a1
.word 0x9101a3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #48]
bl _p_305
.word 0xf9401bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000058
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x9100e000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000980
.word 0x9100e000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0x910183a0
bl _p_306
.word 0xf9401bb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000500
.word 0x91004000
.word 0xf9403ba1
bl _p_307
.word 0xf9401bb1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_8
.word 0x14000011
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_308
.word 0xf9401bb1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_e8:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel____ctorb__12_0d_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_ItemsViewModel____ctorb__12_0d_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #56]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_e9:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel____ctorb__12_1d__ctor
BeaconTest_ItemsViewModel____ctorb__12_1d__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #64]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ea:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel____ctorb__12_1d_MoveNext
BeaconTest_ItemsViewModel____ctorb__12_1d_MoveNext:
.loc 9 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #72]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9804800
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400005e
.loc 9 19 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401c00
.word 0xf94017a1
.word 0xf9401821
bl _p_309
.word 0xf9005fa0
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_303
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0
bl _p_304
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900481f
.word 0xf9401bb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x91010002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000da0
.word 0x91004000
.word 0x910183a1
.word 0x9101a3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #80]
bl _p_310
.word 0xf9401bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000058
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x91010000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000980
.word 0x91010000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900481e
.word 0x910183a0
bl _p_306
.word 0xf9401bb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900481e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000500
.word 0x91004000
.word 0xf9403ba1
bl _p_307
.word 0xf9401bb1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_8
.word 0x14000011
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900481e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_308
.word 0xf9401bb1
.word 0xf9433a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_eb:
.text
	.align 4
	.no_dead_strip BeaconTest_ItemsViewModel____ctorb__12_1d_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_ItemsViewModel____ctorb__12_1d_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #88]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_ec:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconViewController_BTPeripheralDelegate_StateUpdated_CoreBluetooth_CBPeripheralManager
BeaconTest_iOS_BeaconViewController_BTPeripheralDelegate_StateUpdated_CoreBluetooth_CBPeripheralManager:
.loc 24 66 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #96]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.loc 24 67 0
.word 0xf94017b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940dc30
.word 0xd63f0200
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xd28000a1
.word 0xd28000be
.word 0xeb1e001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x340002a0
.loc 24 68 0
.word 0xf94017b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.loc 24 69 0
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #104]
bl _p_211
.word 0xf94017b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.loc 24 70 0
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.loc 24 71 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_ed:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconViewController_BTPeripheralDelegate__ctor
BeaconTest_iOS_BeaconViewController_BTPeripheralDelegate__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #112]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_311
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ee:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9__ctor
BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #120]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_ef:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_MoveNext
BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_MoveNext:
.loc 25 0 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #128]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9803800
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x140000b0
.loc 25 37 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 25 38 0
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
.word 0xf9401802
.word 0xf94017a0
.word 0xf9401400
.word 0xf9401c01
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940e050
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.loc 25 39 0
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401400
.word 0xf9401800
.word 0xf90067a0
.word 0xf94017a0
.word 0xf9401400
.word 0xf90063a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001e60

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2688]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94063a0
.word 0xf94067a2
.word 0xeb1f001f
.word 0x10000011
.word 0x54001c80
.word 0xf9001020
.word 0x91008023
.word 0xd349fc63
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2696]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2704]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2712]
.word 0xf9401403
.word 0xf9000c23
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa0203e0
.word 0xf940005e
bl _p_196
.word 0xf9401bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.loc 25 40 0
.word 0xf9401bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9803c00
bl _p_312
.word 0xf9005fa0
.word 0xf9401bb1
.word 0xf941fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_303
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0
bl _p_304
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900381f
.word 0xf9401bb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x9100c002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000ea0
.word 0x91004000
.word 0x910183a1
.word 0x9101a3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #136]
bl _p_313
.word 0xf9401bb1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000060
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x9100c000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000a80
.word 0x9100c000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900381e
.word 0x910183a0
bl _p_306
.word 0xf9401bb1
.word 0xf943d231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900381e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000600
.word 0x91004000
.word 0xf9403ba1
bl _p_299
.word 0xf9401bb1
.word 0xf9442631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_8
.word 0x14000019
.loc 25 41 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9446231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900381e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_300
.word 0xf9401bb1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf944b231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_f0:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #144]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_f1:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__LocationManager_DidRangeBeaconsd__13__ctor
BeaconTest_iOS_BeaconRangingController__LocationManager_DidRangeBeaconsd__13__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #152]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f2:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__LocationManager_DidRangeBeaconsd__13_MoveNext
BeaconTest_iOS_BeaconRangingController__LocationManager_DidRangeBeaconsd__13_MoveNext:
.loc 25 0 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9001ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #160]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd280001a
.word 0x9101a3a0
.word 0xf90037bf
.word 0xf9003bbf
.word 0xd2800019
.word 0xf9003fbf
.word 0xf9401fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xb9805000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x14000060
.loc 25 75 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.loc 25 76 0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
bl _p_312
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910183a0
.word 0xf90043a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_303
.word 0xf94043be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0x9101a3a0
.word 0xf94033a0
.word 0xf90037a0
.word 0x9101a3a0
bl _p_304
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf9401ba0
.word 0xd2800001
.word 0xd2800017
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900501f
.word 0xf9401fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x9101a3a1
.word 0x910163a1
.word 0xf94037a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x91012002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001c00
.word 0x91004000
.word 0x9101a3a1
.word 0x9101c3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #168]
bl _p_314
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0x140000cb
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x91012000
.word 0x910143a1
.word 0xf9400000
.word 0xf9002ba0
.word 0x910143a0
.word 0x9101a3a0
.word 0xf9402ba0
.word 0xf90037a0
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540017e0
.word 0x91012000
.word 0xf900001f
.word 0xf9401ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800018
.word 0xf2bffff8
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900501e
.word 0x9101a3a0
bl _p_306
.word 0xf9401fb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.loc 25 77 0
.word 0xf9401fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_315
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xb9801800
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f97e0
.word 0x53001c00
.word 0xaa0003f9
.word 0xaa1903e0
.word 0x34000aa0
.loc 25 78 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.loc 25 79 0
.word 0xf9401fb1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2752]
bl _p_199
.word 0xf9401fb1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220
.loc 25 80 0
.word 0xf9401fb1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9401c01
.word 0xaa0103e0
.word 0xf940003e
bl _p_315
.word 0xf90063a0
.word 0xf9401fb1
.word 0xf9437a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54000da9
.word 0xf9401001
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf9401fb1
.word 0xf943ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
bl _p_298
.word 0xf9401fb1
.word 0xf943d231
.word 0xb4000051
.word 0xd63f0220
.loc 25 81 0
.word 0xf9401fb1
.word 0xf943e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9402000
bl _p_201
.word 0xf9005ba0
.word 0xf9401fb1
.word 0xf9440231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2752]
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9419c50
.word 0xd63f0200
.word 0xf9401fb1
.word 0xf9443231
.word 0xb4000051
.word 0xd63f0220
.loc 25 82 0
.word 0xf9401fb1
.word 0xf9444231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90047a0
.word 0xf94047a0
.word 0xf9003fa0
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000600
.word 0x91004000
.word 0xf9403fa1
bl _p_307
.word 0xf9401fb1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90057a0
.word 0xf94057a0
.word 0xb4000060
.word 0xf94057a0
bl _p_8
.word 0x14000019
.loc 25 83 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900501e
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_308
.word 0xf9401fb1
.word 0xf9451231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9452231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_f3:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_BeaconRangingController__LocationManager_DidRangeBeaconsd__13_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_iOS_BeaconRangingController__LocationManager_DidRangeBeaconsd__13_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #176]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_f4:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass__Scand__4__ctor
BeaconTest_iOS_EmptyClass__Scand__4__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #184]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_f5:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass__Scand__4_MoveNext
BeaconTest_iOS_EmptyClass__Scand__4_MoveNext:
.loc 29 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90017a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #192]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd280001a
.word 0x910183a0
.word 0xf90033bf
.word 0xf90037bf
.word 0xf9003bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9804000
.word 0xaa0003fa
.word 0xaa1a03e0
.word 0x3400005a
.word 0x14000002
.word 0x1400007c
.loc 29 49 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.loc 29 50 0
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #200]
bl _p_199
.word 0xf9401bb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.loc 29 54 0
.word 0xf9401bb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401800
.word 0xf9401402
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_316
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.loc 29 56 0
.word 0xf9401bb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb9804400
bl _p_312
.word 0xf9005fa0
.word 0xf9401bb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa1
.word 0x910163a0
.word 0xf9003fa0
.word 0xaa0103e0
.word 0xf940003e
bl _p_303
.word 0xf9403fbe
.word 0xf90003c0
.word 0xf9401bb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x910183a0
.word 0xf9402fa0
.word 0xf90033a0
.word 0x910183a0
bl _p_304
.word 0x53001c00
.word 0xf9005ba0
.word 0xf9401bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0x35000ae0
.word 0xf94017a0
.word 0xd2800001
.word 0xd2800018
.word 0xd2800001
.word 0xd2800001
.word 0xd280001a
.word 0xb900401f
.word 0xf9401bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x910183a1
.word 0x910143a1
.word 0xf94033a1
.word 0xf9002ba1
.word 0x910143a1
.word 0x9100e002
.word 0xaa0203e1
.word 0xf9402ba0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf90037a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001080
.word 0x91004000
.word 0x910183a1
.word 0x9101a3a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #208]
bl _p_317
.word 0xf9401bb1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400006f
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x9100e000
.word 0x910123a1
.word 0xf9400000
.word 0xf90027a0
.word 0x910123a0
.word 0x910183a0
.word 0xf94027a0
.word 0xf90033a0
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000c60
.word 0x9100e000
.word 0xf900001f
.word 0xf94017a0
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800019
.word 0xf2bffff9
.word 0x92800001
.word 0xf2bfffe1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001a
.word 0xf2bffffa
.word 0x9280001e
.word 0xf2bffffe
.word 0xb900401e
.word 0x910183a0
bl _p_306
.word 0xf9401bb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.loc 29 57 0
.word 0xf9401bb1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401800
.word 0xf9401401
.word 0xaa0103e0
.word 0xf9400021
.word 0xf940d830
.word 0xd63f0200
.word 0xf9401bb1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001c
.word 0xf90043a0
.word 0xf94043a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000600
.word 0x91004000
.word 0xf9403ba1
bl _p_299
.word 0xf9401bb1
.word 0xf9439231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90053a0
.word 0xf94053a0
.word 0xb4000060
.word 0xf94053a0
bl _p_8
.word 0x14000019
.loc 29 58 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf943ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900401e
.word 0xf94017a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000200
.word 0x91004000
bl _p_300
.word 0xf9401bb1
.word 0xf9440e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9441e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_f6:
.text
	.align 4
	.no_dead_strip BeaconTest_iOS_EmptyClass__Scand__4_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
BeaconTest_iOS_EmptyClass__Scand__4_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #216]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_f7:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1_T_GSHAREDVT__ctor_System_Action_1_T_GSHAREDVT
BeaconTest_Command_1_T_GSHAREDVT__ctor_System_Action_1_T_GSHAREDVT:
.loc 1 0 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xf90017a0
.word 0xf9001ba1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #224]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf94017a0
.word 0xf9400000
bl _p_318
.word 0xaa0003f9
.word 0xb9800320
.word 0xd2800000
.word 0xf9002bbf
.word 0xd2800018
.word 0xd2800017
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9400000
bl _p_319
bl _p_320
.word 0xf90047a0
.word 0xf94017a0
.word 0xf9400000
bl _p_321
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a0
.word 0xd63f0020
.word 0xf9401fb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f8
.word 0xaa1803e1
.word 0xf9401ba0
.word 0xf9400722
.word 0xd1000442
.word 0x8b020021
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 1 8 0
.word 0xf9401fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90033a0
.word 0xaa1803e0
.word 0xf9003fa0
.word 0xeb1f031f
.word 0x10000011
.word 0x54000d40

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000b80
.word 0xf9001020
.word 0xf9003ba1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94017a0
.word 0xf9400000
bl _p_322
.word 0xaa0003e1
.word 0xf9403ba0
.word 0xf9001401
.word 0xf90037a0
.word 0xf94017a0
.word 0xf9400000
bl _p_323
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9002022

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #216]
.word 0xf9401443
.word 0xf9000c23
.word 0xf9401042
.word 0xf9000822
.word 0xd2800002
.word 0x3901803f
bl _p_6
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.loc 1 9 0
.word 0xf9401fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.loc 1 10 0
.word 0xf9401fb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf9400721
.word 0xd1000421
.word 0x8b010000
.word 0xf9400000
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000240
.loc 1 11 0
.word 0xf9401fb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 12 0
.word 0xf9401fb1
.word 0xf9428a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_f9:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1_T_GSHAREDVT__ctor_System_Action_1_T_GSHAREDVT_System_Func_2_T_GSHAREDVT_bool
BeaconTest_Command_1_T_GSHAREDVT__ctor_System_Action_1_T_GSHAREDVT_System_Func_2_T_GSHAREDVT_bool:
.loc 1 0 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xa90263b7
.word 0xf9001ba0
.word 0xf9001fa1
.word 0xf90023a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #232]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf9401ba0
.word 0xf9400000
bl _p_324
.word 0xaa0003f8
.word 0xb9800300
.word 0xd2800000
.word 0xf90033bf
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xf94027b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400000
bl _p_325
bl _p_320
.word 0xf9005fa0
.word 0xf9401ba0
.word 0xf9400000
bl _p_326
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9005ba0
.word 0xd63f0020
.word 0xf94027b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xaa0003f7
.word 0xaa1703e1
.word 0xf9401fa0
.word 0xf9400702
.word 0xd1000442
.word 0x8b020021
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xaa1703e0
.word 0xf94023a0
.word 0xf9400b01
.word 0xd1000421
.word 0x8b0102e1
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 1 14 0
.word 0xf94027b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9003ba0
.word 0xaa1703e0
.word 0xf90057a0
.word 0xeb1f02ff
.word 0x10000011
.word 0x54001800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #208]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94057a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001640
.word 0xf9001020
.word 0xf90053a1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9400000
bl _p_327
.word 0xaa0003e1
.word 0xf94053a0
.word 0xf9001401
.word 0xf9004fa0
.word 0xf9401ba0
.word 0xf9400000
bl _p_328
.word 0xaa0003e1
.word 0xf9404fa0
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #216]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xf9003fa0
.word 0xaa1703e0
.word 0xf9004ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001180

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000fc0
.word 0xf9001020
.word 0xf90047a1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9401ba0
.word 0xf9400000
bl _p_329
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf9001401
.word 0xf90043a0
.word 0xf9401ba0
.word 0xf9400000
bl _p_330
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043a2
.word 0xf9002043

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #240]
.word 0xf9401464
.word 0xf9000c44
.word 0xf9401063
.word 0xf9000843
.word 0xd2800003
.word 0x3901805f
bl _p_16
.word 0xf94027b1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.loc 1 15 0
.word 0xf94027b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.loc 1 16 0
.word 0xf94027b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400701
.word 0xd1000421
.word 0x8b010000
.word 0xf9400000
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f6
.word 0xaa1603e0
.word 0x34000240
.loc 1 17 0
.word 0xf94027b1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800021
.word 0xd2800021
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 18 0
.word 0xf94027b1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9400b00
.word 0xd1000400
.word 0x8b0002e0
.word 0xf9400000
.word 0xd2800001
.word 0xeb1f001f
.word 0x9a9f17e0
.word 0x53001c00
.word 0xaa0003f5
.word 0xaa1503e0
.word 0x34000240
.loc 1 19 0
.word 0xf94027b1
.word 0xf943e631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #0]
.word 0xd2800221
.word 0xd2800221
bl _p_7
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 1 20 0
.word 0xf94027b1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xa94263b7
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_fa:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator_Register_TContract_GSHAREDVT_TService_GSHAREDVT
BeaconTest_ServiceLocator_Register_TContract_GSHAREDVT_TService_GSHAREDVT:
.loc 2 14 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xf9001bb8
.word 0xf9001fba
.word 0xf9002faf
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #240]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xf9402fa0
bl _p_331
.word 0xf90033a0
.word 0xf94033a0
.word 0xb9800000
.word 0xd2800000
.word 0xf90037bf
.word 0xf94023b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.loc 2 15 0
.word 0xf94023b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf90043a0
.word 0xf9402fa0
bl _p_332
.word 0xf9003fa0
.word 0xf9402fa0
bl _p_333
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402fa0
bl _p_334
.word 0xf9003ba0
.word 0xf9402fa0
bl _p_335
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043a2
.word 0xd1000463
.word 0x8b030000
.word 0xf9400000
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e3
.word 0xaa0203f7
.word 0xaa0103f6
.word 0xaa0003f5
.word 0xb5000b58
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1503e0
.word 0xf9402fa0
bl _p_333
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402fa0
bl _p_334
.word 0xf90053a0
.word 0xf9402fa0
bl _p_336
.word 0xaa0003e1
.word 0xf94053a0
.word 0xd1000421
.word 0x8b010000
.word 0xf9400000
.word 0xf9004fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000f00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #456]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9404fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000d40
.word 0xf9001020
.word 0xf9004ba1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9402fa0
bl _p_337
.word 0xaa0003e1
.word 0xf9404ba0
.word 0xf9001401
.word 0xf90047a0
.word 0xf9402fa0
bl _p_338
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf9002001

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #464]
.word 0xf9401422
.word 0xf9000c02
.word 0xf9401021
.word 0xf9000801
.word 0xd2800001
.word 0x3901801f
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf9003ba0
.word 0xaa1403e0
.word 0xf90043a0
.word 0xf9402fa0
bl _p_333
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402fa0
bl _p_334
.word 0xf9003fa0
.word 0xf9402fa0
bl _p_335
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043a2
.word 0xd1000463
.word 0x8b030021
.word 0xf9000022
.word 0xaa0003f5
.word 0xaa1703e0
.word 0xaa1603e0
.word 0xaa1503e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0x3980b410
.word 0xb5000050
bl _p_24

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9003ba0
.word 0xaa1503e1
bl _p_28
.word 0xf94023b1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
bl _p_339
.word 0xaa0003e3
.word 0xf9403ba2
.word 0xaa1703e0
.word 0xaa1603e1
.word 0xd63f0060
.word 0xf94023b1
.word 0xf942f631
.word 0xb4000051
.word 0xd63f0220
.loc 2 17 0
.word 0xf94023b1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xf9401bb8
.word 0xf9401fba
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_fb:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator_Get_T_GSHAREDVT
BeaconTest_ServiceLocator_Get_T_GSHAREDVT:
.loc 2 20 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90027a8
.word 0xf90037af
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #248]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf94037a0
bl _p_340
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xf9003bbf
.word 0xd2800017
.word 0xb9803b20
.word 0xaa1803e1
.word 0x8b000300
.word 0xf9401321
.word 0xf9401722
.word 0xd63f0040
.word 0xb9804321
.word 0xaa1803e0
.word 0x8b010000
.word 0xf9401321
.word 0xf9401722
.word 0xd63f0040
.word 0xf9402bb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.loc 2 22 0
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf90047a0
.word 0xf94037a0
bl _p_341
.word 0xf9004ba0
.word 0x9101c3a0
.word 0xf9004fa0
.word 0xaa1a03e0
.word 0xf9400340
bl _p_342
.word 0xaa0003e3
.word 0xf94047a0
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd63f0060
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f7
.word 0xaa1703e0
.word 0x34000940
.loc 2 23 0
.word 0xf9402bb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.loc 2 24 0
.word 0xf9402bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf90047a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #472]
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xaa1a03e0
.word 0xf9400340
bl _p_343
.word 0xaa0003e1
.word 0xf94047a0
.word 0xd63f0020
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9400721
bl _p_344
.word 0xaa0003f6
.word 0xf9400b35
.word 0xd280005e
.word 0xeb1e02bf
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02bf
.word 0x54000100
.word 0x910042d4
.word 0x14000010
.word 0xb9804b20
.word 0xaa1803e1
.word 0x8b000314
.word 0xf9000296
.word 0x1400000b
.word 0xf9400f21
.word 0xb9805320
.word 0xaa1803e2
.word 0x8b000300
.word 0xaa0003e8
.word 0xaa1603e0
.word 0xd63f0020
.word 0xb9805320
.word 0xaa1803e1
.word 0x8b000314
.word 0xaa1403e0
.word 0xb9805b20
.word 0xaa1803e1
.word 0x8b000300
.word 0xf9401322
.word 0xf9401b23
.word 0xaa1403e1
.word 0xd63f0060
.word 0xb9805b20
.word 0xaa1803e1
.word 0x8b000301
.word 0xb9803b20
.word 0xaa1803e2
.word 0x8b000300
.word 0xf9401322
.word 0xf9401b23
.word 0xd63f0060
.word 0x1400001d
.loc 2 27 0
.word 0xf9402bb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9804320
.word 0xaa1803e1
.word 0x8b000300
.word 0xf9401321
.word 0xf9401722
.word 0xd63f0040
.word 0xb9804320
.word 0xaa1803e1
.word 0x8b000301
.word 0xb9806320
.word 0xaa1803e2
.word 0x8b000300
.word 0xf9401322
.word 0xf9401b23
.word 0xd63f0060
.word 0xb9806320
.word 0xaa1803e1
.word 0x8b000301
.word 0xb9803b20
.word 0xaa1803e2
.word 0x8b000300
.word 0xf9401322
.word 0xf9401b23
.word 0xd63f0060
.loc 2 28 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9431a31
.word 0xb4000051
.word 0xd63f0220
.word 0xb9803b20
.word 0xaa1803e1
.word 0x8b000301
.word 0xb9806b20
.word 0xaa1803e2
.word 0x8b000300
.word 0xf9401322
.word 0xf9401b23
.word 0xd63f0060
.word 0xf94027a0
.word 0xb9806b21
.word 0xaa1803e2
.word 0x8b010301
.word 0xf90047a1
.word 0xf90043a0
.word 0xf9401320
.word 0xf9401b20
.word 0xf94037a0
bl _p_345
.word 0xaa0003e2
.word 0xf94043a0
.word 0xf94047a1
bl _mono_gsharedvt_value_copy
.word 0xf9402bb1
.word 0xf9438631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_fc:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_SetProperty_T_GSHAREDVT_T_GSHAREDVT__T_GSHAREDVT_string_System_Action
BeaconTest_BaseViewModel_SetProperty_T_GSHAREDVT_T_GSHAREDVT__T_GSHAREDVT_string_System_Action:
.loc 7 29 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xf9001bb8
.word 0xf9001fba
.word 0xf9003baf
.word 0xf90023a0
.word 0xaa0103f8
.word 0xf90027a2
.word 0xf9002ba3
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #256]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9403ba0
bl _p_346
.word 0xaa0003f6
.word 0xb98002c0
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f5
.word 0xd2800014
.word 0xd2800013
.word 0xf9402fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.loc 7 30 0
.word 0xf9402fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_347
.word 0xf9004ba0
.word 0xf9403ba0
bl _p_348
.word 0xf9404baf
.word 0xd63f0000
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xb9801ac1
.word 0xaa1503e0
.word 0x8b010000
.word 0xf94006c2
.word 0xf9400ac3
.word 0xaa1803e1
.word 0xd63f0060
.word 0xf94027a1
.word 0xb98022c2
.word 0xaa1503e0
.word 0x8b020000
.word 0xf94006c2
.word 0xf9400ac3
.word 0xd63f0060
.word 0xf9403ba0
bl _p_349
.word 0xaa0003e3
.word 0xf94047a0
.word 0xb9801ac2
.word 0xaa1503e1
.word 0x8b020021
.word 0xb98022c4
.word 0xaa1503e2
.word 0x8b040042
.word 0xd63f0060
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402fb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f4
.word 0xaa1403e0
.word 0x34000120
.loc 7 31 0
.word 0xf9402fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f3
.word 0x1400003e
.loc 7 33 0
.word 0xf9402fb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94027a1
.word 0xb9802ac0
.word 0xaa1503e2
.word 0x8b0002a0
.word 0xf94006c2
.word 0xf9400ac3
.word 0xd63f0060
.word 0xb9802ac0
.word 0xaa1503e1
.word 0x8b0002a0
.word 0xf90043a0
.word 0xaa1803e0
.word 0xf94006c0
.word 0xf9400ac0
.word 0xf9403ba0
bl _p_350
.word 0xaa0003e2
.word 0xf94043a1
.word 0xaa1803e0
bl _mono_gsharedvt_value_copy
.loc 7 34 0
.word 0xf9402fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400013a
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400f50
.word 0xd63f0200
.word 0xf9402fb1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 35 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9402ba1
bl _p_90
.word 0xf9402fb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.loc 7 36 0
.word 0xf9402fb1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f3
.loc 7 37 0
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402fb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xf9401bb8
.word 0xf9401fba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_102:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass0_0_T_GSHAREDVT__ctor
BeaconTest_Command_1__c__DisplayClass0_0_T_GSHAREDVT__ctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #264]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400ba0
.word 0xf9400000
bl _p_351
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xb9800000
.word 0xd2800000
.word 0xf9001fbf
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_103:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass0_0_T_GSHAREDVT___ctorb__0_object
BeaconTest_Command_1__c__DisplayClass0_0_T_GSHAREDVT___ctorb__0_object:
.loc 1 8 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023a0
.word 0xf90027a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #272]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf94023a0
.word 0xf9400000
bl _p_352
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xf9402bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400721
.word 0xd1000421
.word 0x8b010000
.word 0xf9400017
.word 0xf94027a0
.word 0xf9400b21
bl _p_344
.word 0xaa0003f6
.word 0xf9400f35
.word 0xd280005e
.word 0xeb1e02bf
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02bf
.word 0x54000100
.word 0x910042d4
.word 0x14000010
.word 0xb9803b20
.word 0xaa1803e1
.word 0x8b000314
.word 0xf9000296
.word 0x1400000b
.word 0xf9401321
.word 0xb9804320
.word 0xaa1803e2
.word 0x8b000300
.word 0xaa0003e8
.word 0xaa1603e0
.word 0xd63f0020
.word 0xb9804320
.word 0xaa1803e1
.word 0x8b000314
.word 0xaa1403e0
.word 0xb9804b20
.word 0xaa1803e1
.word 0x8b000300
.word 0xf9401722
.word 0xf9401b23
.word 0xaa1403e1
.word 0xd63f0060
.word 0xf94023a0
.word 0xf9400000
bl _p_353
.word 0xaa0003e2
.word 0xaa1703e0
.word 0xb9804b21
.word 0xaa1803e3
.word 0x8b010301
.word 0xd63f0040
.word 0xf9402bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_104:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass1_0_T_GSHAREDVT__ctor
BeaconTest_Command_1__c__DisplayClass1_0_T_GSHAREDVT__ctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #280]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400ba0
.word 0xf9400000
bl _p_354
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xb9800000
.word 0xd2800000
.word 0xf9001fbf
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_105:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass1_0_T_GSHAREDVT___ctorb__0_object
BeaconTest_Command_1__c__DisplayClass1_0_T_GSHAREDVT___ctorb__0_object:
.loc 1 14 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023a0
.word 0xf90027a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #288]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf94023a0
.word 0xf9400000
bl _p_355
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xf9402bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400721
.word 0xd1000421
.word 0x8b010000
.word 0xf9400017
.word 0xf94027a0
.word 0xf9400b21
bl _p_344
.word 0xaa0003f6
.word 0xf9400f35
.word 0xd280005e
.word 0xeb1e02bf
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02bf
.word 0x54000100
.word 0x910042d4
.word 0x14000010
.word 0xb9803b20
.word 0xaa1803e1
.word 0x8b000314
.word 0xf9000296
.word 0x1400000b
.word 0xf9401321
.word 0xb9804320
.word 0xaa1803e2
.word 0x8b000300
.word 0xaa0003e8
.word 0xaa1603e0
.word 0xd63f0020
.word 0xb9804320
.word 0xaa1803e1
.word 0x8b000314
.word 0xaa1403e0
.word 0xb9804b20
.word 0xaa1803e1
.word 0x8b000300
.word 0xf9401722
.word 0xf9401b23
.word 0xaa1403e1
.word 0xd63f0060
.word 0xf94023a0
.word 0xf9400000
bl _p_356
.word 0xaa0003e2
.word 0xaa1703e0
.word 0xb9804b21
.word 0xaa1803e3
.word 0x8b010301
.word 0xd63f0040
.word 0xf9402bb1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_106:
.text
	.align 4
	.no_dead_strip BeaconTest_Command_1__c__DisplayClass1_0_T_GSHAREDVT___ctorb__1_object
BeaconTest_Command_1__c__DisplayClass1_0_T_GSHAREDVT___ctorb__1_object:
.loc 1 14 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023a0
.word 0xf90027a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #296]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf94023a0
.word 0xf9400000
bl _p_357
.word 0xaa0003f9
.word 0xb9800320
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f8
.word 0xf9402bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400721
.word 0xd1000421
.word 0x8b010000
.word 0xf9400017
.word 0xf94027a0
.word 0xf9400b21
bl _p_344
.word 0xaa0003f6
.word 0xf9400f35
.word 0xd280005e
.word 0xeb1e02bf
.word 0x540000c0
.word 0xd280007e
.word 0xeb1e02bf
.word 0x54000100
.word 0x910042d4
.word 0x14000010
.word 0xb9803b20
.word 0xaa1803e1
.word 0x8b000314
.word 0xf9000296
.word 0x1400000b
.word 0xf9401321
.word 0xb9804320
.word 0xaa1803e2
.word 0x8b000300
.word 0xaa0003e8
.word 0xaa1603e0
.word 0xd63f0020
.word 0xb9804320
.word 0xaa1803e1
.word 0x8b000314
.word 0xaa1403e0
.word 0xb9804b20
.word 0xaa1803e1
.word 0x8b000300
.word 0xf9401722
.word 0xf9401b23
.word 0xaa1403e1
.word 0xd63f0060
.word 0xf94023a0
.word 0xf9400000
bl _p_358
.word 0xaa0003e2
.word 0xaa1703e0
.word 0xb9804b21
.word 0xaa1803e3
.word 0x8b010301
.word 0xd63f0040
.word 0x53001c00
.word 0xf9003ba0
.word 0xf9402bb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_107:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__4_2_TContract_GSHAREDVT_TService_GSHAREDVT__cctor
BeaconTest_ServiceLocator__c__4_2_TContract_GSHAREDVT_TService_GSHAREDVT__cctor:
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf90017af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #304]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf94017a0
bl _p_359
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xb9800000
.word 0xd2800000
.word 0xf9001fbf
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_360
bl _p_320
.word 0xf9002ba0
.word 0xf94017a0
bl _p_361
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf90027a0
.word 0xd63f0020
.word 0xf9400bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_362
.word 0xf90023a0
.word 0xf94017a0
bl _p_363
.word 0xaa0003e2
.word 0xf94023a0
.word 0xf94027a1
.word 0xd1000442
.word 0x8b020000
.word 0xf9000001
.word 0xf9400bb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_108:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__4_2_TContract_GSHAREDVT_TService_GSHAREDVT__ctor
BeaconTest_ServiceLocator__c__4_2_TContract_GSHAREDVT_TService_GSHAREDVT__ctor:
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #312]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400ba0
.word 0xf9400000
bl _p_364
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xb9800000
.word 0xd2800000
.word 0xf9001fbf
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_109:
.text
	.align 4
	.no_dead_strip BeaconTest_ServiceLocator__c__4_2_TContract_GSHAREDVT_TService_GSHAREDVT__Registerb__4_0
BeaconTest_ServiceLocator__c__4_2_TContract_GSHAREDVT_TService_GSHAREDVT__Registerb__4_0:
.loc 2 16 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #320]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400ba0
.word 0xf9400000
bl _p_365
.word 0xf9001ba0
.word 0xf9401ba0
.word 0xb9800000
.word 0xd2800000
.word 0xf9001fbf
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400000
bl _p_366
bl _p_223
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_10a:
.text
	.align 4
	.no_dead_strip BeaconTest_BaseViewModel_SetProperty_T_BOOL_T_BOOL__T_BOOL_string_System_Action
BeaconTest_BaseViewModel_SetProperty_T_BOOL_T_BOOL__T_BOOL_string_System_Action:
.loc 7 29 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa90263b7
.word 0xf9001bba
.word 0xf90033af
.word 0xf9001fa0
.word 0xaa0103f7
.word 0xaa0203f8
.word 0xf90023a3
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #328]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800015
.word 0xd2800014
.word 0xf94027b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.loc 7 30 0
.word 0xf94027b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_367
.word 0xf90043a0
.word 0xf94033a0
bl _p_368
.word 0xf94043af
.word 0xd63f0000
.word 0xf9003fa0
.word 0xf94027b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa3
.word 0xaa1703e0
.word 0x394002e1
.word 0xaa1803e0
.word 0xaa0303e0
.word 0xaa1803e2
.word 0xf9400063
.word 0xf9404c70
.word 0xd63f0200
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x53001c00
.word 0xaa0003f5
.word 0xaa1503e0
.word 0x34000120
.loc 7 31 0
.word 0xf94027b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f4
.word 0x1400002c
.loc 7 33 0
.word 0xf94027b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0x390002f8
.loc 7 34 0
.word 0xf94027b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400013a
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400f50
.word 0xd63f0200
.word 0xf94027b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.loc 7 35 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa0
.word 0xf94023a1
bl _p_90
.word 0xf94027b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.loc 7 36 0
.word 0xf94027b1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f4
.loc 7 37 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf94027b1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa94263b7
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_10b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_object_invoke_void_T_object
wrapper_delegate_invoke_System_Action_1_object_invoke_void_T_object:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #336]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000030
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000024
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffc4b
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_10c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_bool_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_bool_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #352]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000480
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb4000200
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000038
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x1400002b
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbab
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_111:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_BeaconTest_ServiceLocator_invoke_TResult
wrapper_delegate_invoke_System_Func_1_BeaconTest_ServiceLocator_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #360]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_112:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_object_invoke_TResult
wrapper_delegate_invoke_System_Func_1_object_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #368]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_113:
.text
ut_277:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_277
	.long LDIFF_SYM3
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST__ctor_System_Array
System_Array_InternalEnumerator_1_T_INST__ctor_System_Array:
.file 31 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/corlib/System/Array.cs"
.loc 31 215 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #376]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9000320
.word 0xaa1903e1
.word 0xd349ff21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 31 216 0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.loc 31 217 0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_115:
.text
ut_278:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_Dispose
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_Dispose
System_Array_InternalEnumerator_1_T_INST_Dispose:
.loc 31 221 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #384]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.loc 31 222 0
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_116:
.text
ut_279:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_MoveNext
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_MoveNext
System_Array_InternalEnumerator_1_T_INST_MoveNext:
.loc 31 226 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf9001faf
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #392]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xd2800019
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000201
.loc 31 227 0
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb9801800
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xb9000b40
.loc 31 229 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x54000260
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x51000400
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xb9000b40
.word 0xaa1903e0
.word 0x92800000
.word 0xf2bfffe0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e033f
.word 0x9a9f17e0
.word 0xd2800001
.word 0x6b1f001f
.word 0x9a9f17e0
.word 0x14000003
.word 0xd2800000
.word 0xd2800000
.word 0xf94013b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_117:
.text
ut_280:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_get_Current
System_Array_InternalEnumerator_1_T_INST_get_Current:
.loc 31 234 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9002baf
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #400]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540001e1
.loc 31 235 0
.word 0xf94017b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2865100
.word 0xd2865100
bl _p_370
.word 0xaa0003e1
.word 0xd2801d60
.word 0xf2a04000
.word 0xd2801d60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 236 0
.word 0xf94017b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9800b40
.word 0x92800001
.word 0xf2bfffe1
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e001f
.word 0x540001e1
.loc 31 237 0
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2865bc0
.word 0xd2865bc0
bl _p_370
.word 0xaa0003e1
.word 0xd2801d60
.word 0xf2a04000
.word 0xd2801d60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 239 0
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb9801800
.word 0xf90043a0
.word 0xf94017b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x51000400
.word 0xaa1a03e1
.word 0xb9800b41
.word 0x4b010000
.word 0xf90037a0
.word 0xf9402ba0
bl _p_371
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf940001e
.word 0xf940001e
.word 0xf90033a0
.word 0xf9402ba0
bl _p_372
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403baf
.word 0x910103a3
.word 0xf9002fa3
.word 0xd63f0040
.word 0xf9402fbe
.word 0xf90003c0
.word 0xf90007c1
.word 0xf94017b1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910063a0
.word 0xf94023a0
.word 0xf9000fa0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf94017b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0xf94013a1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_118:
.text
ut_281:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset
System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_Reset:
.loc 31 245 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #408]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800021
.word 0xf2bfffe1
.word 0x9280003e
.word 0xf2bffffe
.word 0xb900081e
.loc 31 246 0
.word 0xf9400fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_119:
.text
ut_282:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current
System_Array_InternalEnumerator_1_T_INST_System_Collections_IEnumerator_get_Current:
.loc 31 250 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #416]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90033a0
.word 0xf94023a0
bl _p_373
.word 0xaa0003e1
.word 0xf94033a0
.word 0xf9002fa1
.word 0xf940001e
.word 0xf9002ba0
.word 0xf94023a0
bl _p_374
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf9402faf
.word 0x9100c3a2
.word 0xf90027a2
.word 0xd63f0020
.word 0xf94027be
.word 0xf90003c0
.word 0xf90007c1
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
bl _p_375
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0x9100c3a1
.word 0x91004003
.word 0xaa0303e1
.word 0xf9401ba2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002022
.word 0xf9401fa1
.word 0xf9000041
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xf9400fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_11a:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST
System_Array_InternalArray__IEnumerable_GetEnumerator_T_INST:
.loc 31 71 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9002baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #424]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90037a0
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
.word 0xf90033a0
.word 0xf9402ba0
bl _p_376
.word 0xf9003ba0
.word 0xf9402ba0
bl _p_377
.word 0xaa0003e2
.word 0xf94033a0
.word 0xf94037a1
.word 0xf9403baf
.word 0xd63f0040
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_376
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0x9100c3a1
.word 0x91004003
.word 0xaa0303e1
.word 0xf9401ba2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_11b:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.loc 31 71 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9002baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #432]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf90037a0
.word 0x910103a0
.word 0xd2800000
.word 0xf90023a0
.word 0xf90027a0
.word 0x910103a0
.word 0xf90033a0
.word 0xf9402ba0
bl _p_378
.word 0xaa0003ef
.word 0xf94033a0
.word 0xf94037a1
bl _p_379
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf94027a0
.word 0xf9001fa0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_378
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0x9100c3a1
.word 0x91004003
.word 0xaa0303e1
.word 0xf9401ba2
.word 0xf9000062
.word 0xd349fc23
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0063

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x4, [x16, #16]
.word 0x8b040063
.word 0xd280003e
.word 0x3900007e
.word 0x91002021
.word 0xf9401fa2
.word 0xf9000022
.word 0xf9400fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_11c:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_Count
System_Array_InternalArray__ICollection_get_Count:
.loc 31 61 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #440]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xb9801800
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_11d:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_get_IsReadOnly
System_Array_InternalArray__ICollection_get_IsReadOnly:
.loc 31 66 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #448]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Clear
System_Array_InternalArray__ICollection_Clear:
.loc 31 76 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #456]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2856fc0
.word 0xd2856fc0
bl _p_370
.word 0xaa0003e1
.word 0xd2801ee0
.word 0xf2a04000
.word 0xd2801ee0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.word 0xf9400fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_11f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Add_T_REF_T_REF
System_Array_InternalArray__ICollection_Add_T_REF_T_REF:
.loc 31 81 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #464]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28575c0
.word 0xd28575c0
bl _p_370
.word 0xaa0003e1
.word 0xd2801ee0
.word 0xf2a04000
.word 0xd2801ee0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_120:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Remove_T_REF_T_REF
System_Array_InternalArray__ICollection_Remove_T_REF_T_REF:
.loc 31 86 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #472]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28575c0
.word 0xd28575c0
bl _p_370
.word 0xaa0003e1
.word 0xd2801ee0
.word 0xf2a04000
.word 0xd2801ee0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.word 0xf94013b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_121:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_Contains_T_REF_T_REF
System_Array_InternalArray__ICollection_Contains_T_REF_T_REF:
.loc 31 91 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90027af
.word 0xaa0003fa
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #480]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xd2800018
.word 0xf9002bbf
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0x3940b000
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ad
.loc 31 92 0
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2857d40
.word 0xd2857d40
bl _p_370
bl _p_380
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xd2802080
.word 0xf2a04000
.word 0xd2802080
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 94 0
.word 0xf9401bb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb9801b40
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xaa0003f9
.loc 31 95 0
.word 0xf9401bb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800018
.word 0x14000048
.loc 31 97 0
.word 0xf9401bb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0x910143a0
.word 0xf94027a0
bl _p_381
.word 0x93407f00
.word 0xd37df000
.word 0x8b000340
.word 0x91008000
.word 0xf9400000
.word 0xf9002ba0
.loc 31 98 0
.word 0xf9401bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xb50001c0
.loc 31 99 0
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000440
.loc 31 100 0
.word 0xf9401bb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000038
.loc 31 106 0
.word 0xf9401bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0xf9402ba1
.word 0xf94017a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000100
.loc 31 107 0
.word 0xf9401bb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x1400001e
.loc 31 95 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0x6b19031f
.word 0x54fff5cb
.loc 31 111 0
.word 0xf9401bb1
.word 0xf9429a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401bb1
.word 0xf942b231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_122:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int
System_Array_InternalArray__ICollection_CopyTo_T_REF_T_REF___int:
.loc 31 116 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa9015bb5
.word 0xf90013b8
.word 0xf9002faf
.word 0xaa0003f8
.word 0xf90017a1
.word 0xf9001ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #488]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9002bb8
.word 0xaa1803e0
.word 0xd2800000
.word 0xf9400b16
.word 0xeb1f02df
.word 0x54000060
.word 0xb98006d5
.word 0x14000002
.word 0xd2800015
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf90033a0
.word 0xb98033a0
.word 0xf90037a0
.word 0xaa1803e0
.word 0xb9801b00
.word 0xf9003ba0
.word 0xf9401fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a2
.word 0xf94037a3
.word 0xf9403ba4
.word 0xf9402ba0
.word 0xaa1503e1
bl _p_382
.loc 31 117 0
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415bb5
.word 0xf94013b8
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_123:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Predicate_1_BeaconTest_Item_invoke_bool_T_BeaconTest_Item
wrapper_delegate_invoke_System_Predicate_1_BeaconTest_Item_invoke_bool_T_BeaconTest_Item:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #496]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000480
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb4000200
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000038
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x1400002b
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbab
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_124:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Comparison_1_BeaconTest_Item_invoke_int_T_T_BeaconTest_Item_BeaconTest_Item
wrapper_delegate_invoke_System_Comparison_1_BeaconTest_Item_invoke_int_T_T_BeaconTest_Item_BeaconTest_Item:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #504]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xb9006bbf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_8
.word 0xf9403fa0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb5000500
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000240
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x93407c00
.word 0x1400003b
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x93407c00
.word 0x1400002c
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000589
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90047a3
.word 0xf9400c70
.word 0xd63f0200
.word 0x93407c00
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb9006ba0
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffb6b
.word 0xb9806ba0
.word 0xf9402bb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_125:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #512]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_126:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #520]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_127:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #528]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_128:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult
wrapper_delegate_invoke_System_Action_1_System_IAsyncResult_invoke_void_T_System_IAsyncResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #536]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000030
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000024
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffc4b
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_129:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object
wrapper_delegate_invoke_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_invoke_TResult_T1_T2_System_AsyncCallback_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #544]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf90037bf
.word 0xf9402bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf9003ba0
.word 0xf9403ba1
.word 0xf9403ba0
.word 0xf9003fa1
.word 0xb4000060
.word 0xf9403fa0
bl _p_8
.word 0xf9403fa0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb50004c0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x14000039
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x1400002b
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90047a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf90037a0
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffb8b
.word 0xf94037a0
.word 0xf9402bb1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_12a:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Threading_Tasks_Task_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #552]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_12b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Threading_Tasks_Task_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #560]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_12c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Threading_Tasks_Task_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #568]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_12d:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #576]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_12e:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Collections_Generic_IEnumerable_1_BeaconTest_Item_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #584]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_12f:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_BeaconTest_Item_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_BeaconTest_Item_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #592]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_130:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_BeaconTest_Item_invoke_TResult
wrapper_delegate_invoke_System_Func_1_BeaconTest_Item_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #600]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_131:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_BeaconTest_Item_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_BeaconTest_Item_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #608]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_132:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_BeaconTest_Item_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_BeaconTest_Item_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #616]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_133:
.text
ut_308:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_Create
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_Create
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_Create:
.file 32 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/runtime/compilerservices/AsyncMethodBuilder.cs"
.loc 32 444 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000ba8
.word 0xf90033af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #624]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0x910123a0
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0x910123a0
.word 0x9100c3a0
.word 0xf94027a0
.word 0xf9001ba0
.word 0xf9402ba0
.word 0xf9001fa0
.word 0xf9402fa0
.word 0xf90023a0
.word 0xf9400ba0
.word 0x9100c3a1
.word 0xaa0003e1
.word 0xaa0003e1
.word 0xf9401ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9401fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94023a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400fb1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_134:
.text
ut_309:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 32 485 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #632]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_383
.loc 32 486 0
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_135:
.text
ut_310:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_get_Task
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_get_Task
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_get_Task:
.loc 32 574 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90023af
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #640]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa0003f9
.loc 32 575 0
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000599
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf94023a0
bl _p_384
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf94023a0
bl _p_384
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9002fa0
.word 0xf94023a0
bl _p_385
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xd63f0020
.word 0xf94017b1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e1
.word 0xaa1803f9
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 576 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_136:
.text
ut_311:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetResult_TResult_BOOL
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetResult_TResult_BOOL
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetResult_TResult_BOOL:
.loc 32 590 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90023af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #648]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xaa0003f8
.loc 32 591 0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xb5000558
.loc 32 593 0
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94023a0
bl _p_386
.word 0xf9002fa0
.word 0xf940033e
.word 0xf94023a0
bl _p_387
.word 0xaa0003e2
.word 0xf9402faf
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 595 0
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000077
.loc 32 599 0
.word 0xf94017b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x340002a0
.loc 32 600 0
.word 0xf94017b1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf940031e
bl _p_389
.word 0x93407c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xd2800020
.word 0xd2800000
.word 0xd2800022
bl _p_390
.loc 32 603 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x34000220
.loc 32 605 0
.word 0xf94017b1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf940031e
bl _p_389
.word 0x93407c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
bl _p_391
.loc 32 608 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf94023a0
bl _p_392
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf940031e
.word 0xf94023a0
bl _p_393
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x350002e0
.loc 32 610 0
.word 0xf94017b1
.word 0xf942ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xd292a2e0
.word 0xf2a00020
.word 0xd292a2e0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf942da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba1
.word 0xd2801d60
.word 0xf2a04000
.word 0xd2801d60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 613 0
.word 0xf94017b1
.word 0xf9430631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9431631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_137:
.text
ut_312:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetResult_System_Threading_Tasks_Task_1_TResult_BOOL
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetResult_System_Threading_Tasks_Task_1_TResult_BOOL
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetResult_System_Threading_Tasks_Task_1_TResult_BOOL:
.loc 32 628 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90023af
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #664]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xf9002ba0
.loc 32 629 0
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000300
.loc 32 631 0
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013a0
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 632 0
.word 0xf94017b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.loc 32 636 0
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800018
.word 0xd2800000
.word 0xf94023a0
bl _p_395
.word 0xf9002ba0
.word 0xf940033e
.word 0xf94023a0
bl _p_396
.word 0xaa0003e2
.word 0xf9402baf
.word 0xaa1903e0
.word 0xd2800001
.word 0xd63f0040
.loc 32 638 0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_138:
.text
ut_313:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetException_System_Exception
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetException_System_Exception
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetException_System_Exception:
.loc 32 649 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90037af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #672]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800018
.word 0xd2800017
.word 0xf94027b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500023a
.word 0xf94027b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2926480
.word 0xf2a00020
.word 0xd2926480
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 653 0
.word 0xf94027b1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xaa0003f8
.loc 32 654 0
.word 0xf94027b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xb50002f8
.loc 32 657 0
.word 0xf94027b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94037a0
bl _p_397
.word 0xf90047a0
.word 0xf940033e
.word 0xf94037a0
bl _p_398
.word 0xaa0003e1
.word 0xf94047af
.word 0xaa1903e0
.word 0xd63f0020
.word 0xf90043a0
.word 0xf94027b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f8
.loc 32 661 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f6
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #680]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xaa1503e0
.word 0xaa1503f7
.loc 32 662 0
.word 0xf94027b1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000315
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf94037a0
bl _p_399
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf940031e
.word 0xf94037a0
bl _p_400
.word 0xaa0003e2
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0xf90043a0
.word 0xf94027b1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f4
.word 0x1400001f
.word 0xaa1803e0
.word 0xaa1703e0
.word 0x910183a0
.word 0xf9003ba0
.word 0xaa1703e0
.word 0xf94002fe
bl _p_401
.word 0xf9403bbe
.word 0xf90003c0
.word 0xf94027b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf94037a0
bl _p_399
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf940031e
.word 0xf94037a0
bl _p_402
.word 0xaa0003e3
.word 0xaa1803e0
.word 0x910183a1
.word 0xf94033a1
.word 0xaa1703e2
.word 0xd63f0060
.word 0x53001c00
.word 0xaa0003f4
.loc 32 673 0
.word 0xaa1403e0
.word 0xf94027b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0x350002f4
.loc 32 675 0
.word 0xf94027b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xd292a2e0
.word 0xf2a00020
.word 0xd292a2e0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90043a0
.word 0xf94027b1
.word 0xf942e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xd2801d60
.word 0xf2a04000
.word 0xd2801d60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 677 0
.word 0xf94027b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_139:
.text
ut_314:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetNotificationForWaitCompletion_bool
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetNotificationForWaitCompletion_bool
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_SetNotificationForWaitCompletion_bool:
.loc 32 693 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #688]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_403
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9002ba1
.word 0xf940001e
.word 0xf90027a0
.word 0xf9401fa0
bl _p_404
.word 0xaa0003e1
.word 0xf94027a0
.word 0xf9402baf
.word 0xd63f0020
.word 0xf90023a0
.word 0xf94013b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0x394063a1
.word 0xaa0203e0
.word 0xf940005e
bl _p_405
.loc 32 694 0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_13a:
.text
ut_315:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_get_ObjectIdForDebugger
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_get_ObjectIdForDebugger
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_get_ObjectIdForDebugger:
.loc 32 704 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #696]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9002fa0
.word 0xf9401ba0
bl _p_406
.word 0xaa0003e1
.word 0xf9402fa0
.word 0xf9002ba1
.word 0xf940001e
.word 0xf90027a0
.word 0xf9401ba0
bl _p_407
.word 0xaa0003e1
.word 0xf94027a0
.word 0xf9402baf
.word 0xd63f0020
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_13b:
.text
ut_316:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_GetTaskForResult_TResult_BOOL
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_GetTaskForResult_TResult_BOOL
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_GetTaskForResult_TResult_BOOL:
.loc 32 737 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xa9026bb9
.word 0xf9003baf
.word 0xf9001ba0
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #704]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0xf9401fb1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800019
.word 0xd2800000
.word 0x14000001
.loc 32 752 0
.word 0xf9401fb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #712]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x340007c0
.loc 32 754 0
.word 0xf9401fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540056a1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #720]
.word 0xeb02003f
.word 0x10000011
.word 0x540055a1
.word 0x91004001
.word 0x39404000
.word 0xf90043a0
.loc 32 755 0
.word 0xf9401fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x350000e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xf9400000
.word 0xaa0003f7
.word 0x14000006

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xf9400000
.word 0xaa0003f7
.loc 32 756 0
.word 0xaa1703e0
.word 0xf9401fb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_410
.word 0xaa0003ef
.word 0xaa1703e0
bl _p_411
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x1400027f
.loc 32 759 0
.word 0xf9401fb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #744]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf941f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000a40
.loc 32 764 0
.word 0xf9401fb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54004cc1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #752]
.word 0xeb02003f
.word 0x10000011
.word 0x54004bc1
.word 0x91004001
.word 0xb9801000
.word 0xaa0003f8
.loc 32 765 0
.word 0xf9401fb1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd2800120
.word 0xd280013e
.word 0x6b1e031f
.word 0x5400452a
.word 0xaa1803e0
.word 0x92800000
.word 0xf2bfffe0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e031f
.word 0x5400444b
.loc 32 768 0
.word 0xf9401fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #760]
.word 0xf9400000
.word 0xaa1803e1
.word 0x9280001e
.word 0xf2bffffe
.word 0x4b1e0301
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x540047a9
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400000
.word 0xf90047a0
.loc 32 769 0
.word 0xf9401fb1
.word 0xf9430e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_410
.word 0xaa0003ef
.word 0xf94047a0
bl _p_411
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x1400021c
.loc 32 773 0
.word 0xf9401fb1
.word 0xf9434e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #768]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540040e1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #776]
.word 0xeb02003f
.word 0x10000011
.word 0x54003fe1
.word 0x91004001
.word 0xb9401000
.word 0x340035e0
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #784]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9441231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54003c41
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #792]
.word 0xeb02003f
.word 0x10000011
.word 0x54003b41
.word 0x91004001
.word 0x39404000
.word 0x34003140
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #800]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf944a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540037a1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #808]
.word 0xeb02003f
.word 0x10000011
.word 0x540036a1
.word 0x91004001
.word 0x39804000
.word 0x34002ca0
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #816]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9453a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54003301
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #824]
.word 0xeb02003f
.word 0x10000011
.word 0x54003201
.word 0x91004001
.word 0x79402000
.word 0x34002800
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #832]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf945ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000740

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #840]
.word 0x910183a1
.word 0xb9800001
.word 0xb90063a1
.word 0xb9800401
.word 0xb90067a1
.word 0xb9800801
.word 0xb9006ba1
.word 0xb9800c00
.word 0xb9006fa0
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002ce1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #848]
.word 0xeb02003f
.word 0x10000011
.word 0x54002be1
.word 0x91004000
.word 0x910143a1
.word 0xb9800001
.word 0xb90053a1
.word 0xb9800401
.word 0xb90057a1
.word 0xb9800801
.word 0xb9005ba1
.word 0xb9800c00
.word 0xb9005fa0
.word 0x910183a0
.word 0xf94033a0
.word 0xf94037a1
.word 0x910143a2
.word 0xf9402ba2
.word 0xf9402fa3
bl _p_412
.word 0x53001c00
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf946b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x35001f20
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #856]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf946ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002581
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #864]
.word 0xeb02003f
.word 0x10000011
.word 0x54002481
.word 0x91004001
.word 0xf9400800
.word 0xb4001a80
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #872]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9477e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540020e1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #880]
.word 0xeb02003f
.word 0x10000011
.word 0x54001fe1
.word 0x91004001
.word 0xf9400800
.word 0xb40015e0
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #888]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9481231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001c41
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #896]
.word 0xeb02003f
.word 0x10000011
.word 0x54001b41
.word 0x91004001
.word 0x79802000
.word 0x34001140
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #904]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf948a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000300
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x3900401a
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540017a1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #912]
.word 0xeb02003f
.word 0x10000011
.word 0x540016a1
.word 0x91004001
.word 0x79402000
.word 0x34000ca0
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #920]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf9493a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x340004a0
.word 0xd2800000
.word 0x93407c00
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xaa0003e1
.word 0xf94047a0
.word 0x3900403a
.word 0xf9400022
.word 0x3940b043
.word 0xeb1f007f
.word 0x10000011
.word 0x54001261
.word 0xf9400042
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #928]
.word 0xeb03005f
.word 0x10000011
.word 0x54001161
.word 0x91004022
.word 0xf9400821
bl _p_413
.word 0x53001c00
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf949ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x35000660
.word 0xf9403ba0
bl _p_408

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #936]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf94a0231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x34000920
.word 0xd2800000
.word 0x2a0003e0
.word 0xf90047a0
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_409
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0xaa0003e1
.word 0xf94047a0
.word 0x3900403a
.word 0xf9400022
.word 0x3940b043
.word 0xeb1f007f
.word 0x10000011
.word 0x54000c21
.word 0xf9400042
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #944]
.word 0xeb03005f
.word 0x10000011
.word 0x54000b21
.word 0x91004022
.word 0xf9400821
bl _p_414
.word 0x53001c00
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf94a9231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x340004a0
.loc 32 786 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf94aba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_415
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9403ba0
bl _p_416
.word 0xf9400000
.word 0x14000034
.loc 32 789 0
.word 0xf9401fb1
.word 0xf94aee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x1400000e
.loc 32 791 0
.word 0xf9401fb1
.word 0xf94b0631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_415
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9403ba0
bl _p_416
.word 0xf9400000
.word 0x14000021
.loc 32 795 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf94b4a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9403ba0
bl _p_417
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9403ba0
bl _p_417
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90047a0
.word 0xf9403ba0
bl _p_418
.word 0xaa0003e2
.word 0xf94047a0
.word 0xf90043a0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0xf9401fb1
.word 0xf94ba631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9401fb1
.word 0xf94bba31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xa9426bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_13c:
.text
ut_317:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL__cctor
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL__cctor
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL__cctor:
.loc 32 427 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9001baf

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #952]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xd280001a
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd280001a
.word 0xd2800000
.word 0xf9401ba0
bl _p_419
.word 0xf90027a0
.word 0xf9401ba0
bl _p_420
.word 0xaa0003e1
.word 0xf94027af
.word 0xd2800000
.word 0xd63f0020
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_421
.word 0xf94023a1
.word 0xf9000001
.word 0xf9400fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_13d:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor
System_Threading_Tasks_Task_1_TResult_BOOL__ctor:
.file 33 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/Future.cs"
.loc 33 91 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #960]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_422
.loc 33 93 0
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_13e:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_object_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_object_System_Threading_Tasks_TaskCreationOptions:
.loc 33 97 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #968]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xb98023a2
.word 0xd2800023
.word 0xd2800023
bl _p_423
.loc 33 99 0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_13f:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_TResult_BOOL:
.loc 33 104 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #976]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910103a0
.word 0xf90023bf
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xd2800001
.word 0xd2800001
.word 0x910103a1
.word 0xf90023bf
.word 0x910103a1
.word 0x9100e3a1
.word 0xf94023a1
.word 0xf9001fa1
.word 0xd2800001
.word 0xd2800002
.word 0x9100e3a3
.word 0xf9401fa3
bl _p_424
.loc 33 106 0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x394063a1
.word 0x39012001
.loc 33 107 0
.word 0xf94013b1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_140:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_bool_TResult_BOOL_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_bool_TResult_BOOL_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken:
.loc 33 110 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb8
.word 0xf9000fa0
.word 0xaa0103f8
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #984]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xf94023b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xaa1803e1
.word 0xb9802ba2
.word 0x9100c3a1
.word 0x910163a1
.word 0xf9401ba1
.word 0xf9002fa1
.word 0xaa1803e1
.word 0x910163a3
.word 0xf9402fa3
bl _p_424
.loc 33 112 0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x35000118
.loc 33 114 0
.word 0xf94023b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x394083a1
.word 0x39012001
.loc 33 116 0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_141:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_2_object_TResult_BOOL_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_2_object_TResult_BOOL_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions:
.loc 33 322 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #992]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xb90063bf
.word 0xf94023b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9004ba0
.word 0xf94013a0
.word 0xf9003fa0
.word 0xf94017a0
.word 0xf90043a0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_425
.word 0xf90047a0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0x9100c3a1
.word 0x910163a1
.word 0xf9401ba1
.word 0xf9002fa1
.word 0xaa1a03e1
.word 0xd2800001
.word 0xd2800001
.word 0xf940001e
.word 0xf9003ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_426
.word 0xaa0003e9
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043a2
.word 0xf94047a3
.word 0x910163a4
.word 0xf9402fa4
.word 0xaa1a03e5
.word 0xd2800006
.word 0xd2800007
.word 0xd63f0120
.loc 33 325 0
.word 0xf94023b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xd280003e
.word 0xb90063be
.loc 33 326 0
.word 0xf94023b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x910183a1
bl _p_427
.loc 33 327 0
.word 0xf94023b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_142:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_1_TResult_BOOL_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_1_TResult_BOOL_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 333 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fa4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9002ba7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1000]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf90047a1
.word 0xf94013a1
.word 0xf9004ba1
.word 0x9100a3a1
.word 0x9101c3a1
.word 0xf94017a1
.word 0xf9003ba1
.word 0xb9803ba1
.word 0xf9004fa1
.word 0xb98043a1
.word 0xf90053a1
.word 0xf94027a1
.word 0xf90057a1
.word 0xf940001e
.word 0xf90043a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_428
.word 0xaa0003e7
.word 0xf94043a0
.word 0xf94047a1
.word 0xf9404ba2
.word 0xf9404fa4
.word 0xf94053a5
.word 0xf94057a6
.word 0x9101c3a3
.word 0xf9403ba3
.word 0xd63f00e0
.loc 33 336 0
.word 0xf9402fb1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9402ba1
bl _p_427
.loc 33 337 0
.word 0xf9402fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_143:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_1_TResult_BOOL_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_1_TResult_BOOL_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
.loc 33 352 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xaa0503f9
.word 0xf90027a6

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1008]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf9402bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
.word 0xd2800002
.word 0xf94017a3
.word 0x9100c3a2
.word 0x9101a3a2
.word 0xf9401ba2
.word 0xf90037a2
.word 0xb98043a5
.word 0xaa1903e2
.word 0xf94027a7
.word 0xd2800002
.word 0x9101a3a4
.word 0xf94037a4
.word 0xaa1903e6
bl _p_429
.loc 33 354 0
.word 0xf9402bb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd281001e
.word 0xa1e0320
.word 0x340003c0
.loc 33 356 0
.word 0xf9402bb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf9003ba0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf9003fa0
.word 0xf9402bb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 358 0
.word 0xf9402bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_144:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_2_object_TResult_BOOL_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Func_2_object_TResult_BOOL_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 363 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000bbc
.word 0x910303bc
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90027a5
.word 0xf9002ba6
.word 0xf9002fa7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1016]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf94033b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf90047a1
.word 0xf94017a1
.word 0xf9004ba1
.word 0xf9401ba1
.word 0xf9004fa1
.word 0x9100e3a1
.word 0x9101e3a1
.word 0xf9401fa1
.word 0xf9003fa1
.word 0xb9804ba1
.word 0xf90053a1
.word 0xb98053a1
.word 0xf90057a1
.word 0xf9402fa1
.word 0xf9005ba1
.word 0xf940001e
.word 0xf90043a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_430
.word 0xaa0003e9
.word 0xf94043a0
.word 0xf94047a1
.word 0xf9404ba2
.word 0xf9404fa3
.word 0xf94053a5
.word 0xf94057a6
.word 0xf9405ba7
.word 0x9101e3a4
.word 0xf9403fa4
.word 0xd63f0120
.loc 33 365 0
.word 0xf94033b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9400381
bl _p_427
.loc 33 366 0
.word 0xf94033b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bbc
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_145:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_TResult_BOOL__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
.loc 33 382 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90027a5
.word 0xaa0603f9
.word 0xf9002ba7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1024]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0x9100e3a4
.word 0x9101c3a4
.word 0xf9401fa4
.word 0xf9003ba4
.word 0xb9804ba5
.word 0xaa1903e4
.word 0xf9402ba7
.word 0x9101c3a4
.word 0xf9403ba4
.word 0xaa1903e6
bl _p_429
.loc 33 384 0
.word 0xf9402fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd281001e
.word 0xa1e0320
.word 0x340003c0
.loc 33 386 0
.word 0xf9402fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf90043a0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 388 0
.word 0xf9402fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_146:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_StartNew_System_Threading_Tasks_Task_System_Func_1_TResult_BOOL_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_TResult_BOOL_StartNew_System_Threading_Tasks_Task_System_Func_1_TResult_BOOL_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 395 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fb6
.word 0xa90267b8
.word 0xf9003faf
.word 0xf9001ba0
.word 0xaa0103f6
.word 0xf9001fa2
.word 0xf90027a3
.word 0xaa0403f8
.word 0xaa0503f9
.word 0xf9002ba6

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1032]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb5000236
.loc 33 397 0
.word 0xf9402fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b560
.word 0xf2a00020
.word 0xd291b560
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 399 0
.word 0xf9402fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000239
.loc 33 401 0
.word 0xf9402fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b7a0
.word 0xf2a00020
.word 0xd291b7a0
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 403 0
.word 0xf9402fb1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd281001e
.word 0xa1e0300
.word 0x340003c0
.loc 33 406 0
.word 0xf9402fb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf90043a0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 410 0
.word 0xf9402fb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xf9401ba0
.word 0xf9004fa0
.word 0x9100e3a0
.word 0x9101c3a0
.word 0xf9401fa0
.word 0xf9003ba0
.word 0xb9804ba0
.word 0xf90053a0
.word 0xaa1803e0
.word 0xd284001e
.word 0x2a1e0300
.word 0xf90057a0
.word 0xaa1903e0
.word 0xf9402ba0
.word 0xf9005ba0
.word 0xf9403fa0
bl _p_431
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9004ba0
.word 0xf9403fa0
bl _p_432
.word 0xaa0003e9
.word 0xf9404ba0
.word 0xf9404fa2
.word 0xf94053a4
.word 0xf94057a5
.word 0xf9405ba7
.word 0xf90047a0
.word 0xaa1603e1
.word 0x9101c3a3
.word 0xf9403ba3
.word 0xaa1903e6
.word 0xd63f0120
.loc 33 412 0
.word 0xf9402fb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90043a0
.word 0xaa1403e0
.word 0xd2800000
.word 0xaa1403e0
.word 0xd2800001
.word 0xf940029e
bl _p_433
.loc 33 413 0
.word 0xf9402fb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9402fb1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb4
.word 0xf9400fb6
.word 0xa94267b8
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_147:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_StartNew_System_Threading_Tasks_Task_System_Func_2_object_TResult_BOOL_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_TResult_BOOL_StartNew_System_Threading_Tasks_Task_System_Func_2_object_TResult_BOOL_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 420 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xd2800210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xf9000bb3
.word 0xf9000fb5
.word 0xa90267b8
.word 0xf90043af
.word 0xf9001ba0
.word 0xaa0103f5
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002ba4
.word 0xaa0503f8
.word 0xaa0603f9
.word 0xf9002fa7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1040]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf94033b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000235
.loc 33 422 0
.word 0xf94033b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b560
.word 0xf2a00020
.word 0xd291b560
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 424 0
.word 0xf94033b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000239
.loc 33 426 0
.word 0xf94033b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b7a0
.word 0xf2a00020
.word 0xd291b7a0
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 428 0
.word 0xf94033b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd281001e
.word 0xa1e0300
.word 0x340003c0
.loc 33 430 0
.word 0xf94033b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf9004ba0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf9004fa0
.word 0xf94033b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba1
.word 0xf9404fa2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 434 0
.word 0xf94033b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf9401fa0
.word 0xf90057a0
.word 0xf9401ba0
.word 0xf9005ba0
.word 0x910103a0
.word 0x9101e3a0
.word 0xf94023a0
.word 0xf9003fa0
.word 0xb98053a0
.word 0xf9005fa0
.word 0xaa1803e0
.word 0xd284001e
.word 0x2a1e0300
.word 0xf90063a0
.word 0xaa1903e0
.word 0xf9402fa0
.word 0xf90067a0
.word 0xf94043a0
bl _p_434
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90053a0
.word 0xf94043a0
bl _p_435
.word 0xaa0003e9
.word 0xf94053a0
.word 0xf94057a2
.word 0xf9405ba3
.word 0xf9405fa5
.word 0xf94063a6
.word 0xf94067aa
.word 0xf9004fa0
.word 0xaa1503e1
.word 0x9101e3a4
.word 0xf9403fa4
.word 0xaa1903e7
.word 0xf90003ea
.word 0xd63f0120
.loc 33 436 0
.word 0xf94033b1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404fa0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf9004ba0
.word 0xaa1303e0
.word 0xd2800000
.word 0xaa1303e0
.word 0xd2800001
.word 0xf940027e
bl _p_433
.loc 33 437 0
.word 0xf94033b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0xf94033b1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb3
.word 0xf9400fb5
.word 0xa94267b8
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_148:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_TrySetResult_TResult_BOOL
System_Threading_Tasks_Task_1_TResult_BOOL_TrySetResult_TResult_BOOL:
.loc 33 463 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1048]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_436
.word 0x53001c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x34000100
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000069
.loc 33 471 0
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800001
.word 0xf2a0ac01
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_437
.word 0x53001c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x340009a0
.loc 33 474 0
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x394083a1
.word 0x39012001
.loc 33 483 0
.word 0xf94017b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000980
.word 0x91011000
.word 0xf9002ba0
.word 0xf9400fa0
.word 0xb9804401
.word 0xd50330bf
.word 0xf9402ba0
.word 0xd280001e
.word 0xf2a0201e
.word 0x2a1e0021
.word 0x885f7c10
.word 0x8811fc01
.word 0x35ffffd1
.word 0xd50330bf
.word 0xaa1003e0
.word 0xf94017b1
.word 0xf9417e31
.word 0xb4000051
.word 0xd63f0220
.loc 33 485 0
.word 0xf94017b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9401c00
.word 0xf90027a0
.word 0xd50330bf
.word 0xf94027a0
.word 0xf90023a0
.word 0xaa0003f9
.loc 33 486 0
.word 0xf94017b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003e1
.word 0xb4000120
.word 0xf94017b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf940033e
bl _p_438
.loc 33 488 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_439
.loc 33 490 0
.word 0xf94017b1
.word 0xf9421e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000007
.loc 33 493 0
.word 0xf94017b1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf94017b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_149:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_DangerousSetResult_TResult_BOOL
System_Threading_Tasks_Task_1_TResult_BOOL_DangerousSetResult_TResult_BOOL:
.loc 33 507 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1056]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9401400
.word 0xb4000340
.loc 33 509 0
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xaa1a03e1
.word 0xf940001e
.word 0xf90023a0
.word 0xf9400fa0
.word 0xf9400000
bl _p_440
.word 0xaa0003e2
.word 0xf94023a0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0xf94013b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.loc 33 513 0
.word 0xf94013b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001d
.loc 33 516 0
.word 0xf94013b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xaa1a03e1
.word 0x3901201a
.loc 33 517 0
.word 0xf94013b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf90023a0
.word 0xf9400fa0
.word 0xb9804400
.word 0xf90027a0
.word 0xd50330bf
.word 0xf94027a0
.word 0xd280001e
.word 0xf2a0201e
.word 0x2a1e0001
.word 0xd50330bf
.word 0xf94023a0
.word 0xb9004401
.loc 33 519 0
.word 0xf94013b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_14a:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_get_Result
System_Threading_Tasks_Task_1_TResult_BOOL_get_Result:
.loc 33 532 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1064]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_441
.word 0x53001c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0x35000080
.word 0xf9400ba0
.word 0x39412000
.word 0x14000013
.word 0xf9400ba0
.word 0xd2800021
.word 0xf940001e
.word 0xf9001fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_442
.word 0xaa0003e2
.word 0xf9401fa0
.word 0xd2800021
.word 0xd63f0040
.word 0x53001c00
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_14b:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_get_ResultOnSuccess
System_Threading_Tasks_Task_1_TResult_BOOL_get_ResultOnSuccess:
.loc 33 548 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1072]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39412000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_14c:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_GetResultCore_bool
System_Threading_Tasks_Task_1_TResult_BOOL_GetResultCore_bool:
.loc 33 556 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1080]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910103a0
.word 0xf90023bf
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_436
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x35000300
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x92800001
.word 0xf2bfffe1
.word 0x910103a1
.word 0xf90023bf
.word 0x910103a1
.word 0x9100e3a1
.word 0xf94023a1
.word 0xf9001fa1
.word 0x92800001
.word 0xf2bfffe1
.word 0x9100e3a2
.word 0xf9401fa2
bl _p_443
.word 0x53001c00
.word 0xf94013b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.loc 33 559 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0x394063a0
.word 0x34000180
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_444
.word 0x53001c00
.word 0xf94013b1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.loc 33 562 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_445
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x35000120
.word 0xf94013b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xd2800021
.word 0xd2800021
bl _p_446
.loc 33 567 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x39412000
.word 0xf94013b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_14d:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_TrySetException_object
System_Threading_Tasks_Task_1_TResult_BOOL_TrySetException_object:
.loc 33 590 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1088]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f9
.loc 33 600 0
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xd2800021
.word 0xd2800021
bl _p_447
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.loc 33 601 0
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800001
.word 0xf2a0ac01
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_437
.word 0x53001c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x340002e0
.loc 33 604 0
.word 0xf94017b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
bl _p_448
.loc 33 605 0
.word 0xf94017b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xd2800001
.word 0xd2800001
bl _p_449
.loc 33 606 0
.word 0xf94017b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f9
.loc 33 609 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_14e:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_TrySetCanceled_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_TResult_BOOL_TrySetCanceled_System_Threading_CancellationToken:
.loc 33 618 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1096]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0xd2800001
.word 0xf940001e
.word 0xf9002fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_450
.word 0xaa0003e3
.word 0xf9402fa0
.word 0x910103a1
.word 0xf94023a1
.word 0xd2800002
.word 0xd63f0060
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_14f:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_TrySetCanceled_System_Threading_CancellationToken_object
System_Threading_Tasks_Task_1_TResult_BOOL_TrySetCanceled_System_Threading_CancellationToken_object:
.loc 33 637 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf9001ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1104]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xf9401fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f9
.loc 33 648 0
.word 0xf9401fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800001
.word 0xf2a0ac01
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_437
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x34000360
.loc 33 652 0
.word 0xf9401fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0x910083a1
.word 0x910143a1
.word 0xf94013a1
.word 0xf9002ba1
.word 0xf9401ba2
.word 0x910143a1
.word 0xf9402ba1
bl _p_451
.loc 33 653 0
.word 0xf9401fb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
bl _p_452
.loc 33 654 0
.word 0xf9401fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f9
.loc 33 657 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_150:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_get_Factory
System_Threading_Tasks_Task_1_TResult_BOOL_get_Factory:
.loc 33 668 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf90017af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1112]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_453
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf94017a0
bl _p_454
.word 0xf9400000
.word 0xf9400bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_151:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_InnerInvoke
System_Threading_Tasks_Task_1_TResult_BOOL_InnerInvoke:
.loc 33 677 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1120]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd280001a
.word 0xd2800019
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9400800
.word 0xf90023a0
.word 0xf94013a0
.word 0xf9400000
bl _p_455
.word 0xaa0003e2
.word 0xf9400441
.word 0xf94023a0
bl _p_456
.word 0xaa0003fa
.loc 33 678 0
.word 0xf94017b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb400033a
.loc 33 680 0
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9002ba0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400f50
.word 0xd63f0200
.word 0xf9002fa0
.word 0x53001c00
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9402fa1
.word 0x39012001
.loc 33 681 0
.word 0xf94017b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000034
.loc 33 683 0
.word 0xf94017b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9400800
.word 0xf90027a0
.word 0xf94013a0
.word 0xf9400000
bl _p_457
.word 0xaa0003e2
.word 0xf9400441
.word 0xf94027a0
bl _p_456
.word 0xaa0003f9
.loc 33 684 0
.word 0xf94017b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb4000379
.loc 33 686 0
.word 0xf94017b1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9002ba0
.word 0xaa1903e0
.word 0xf94013a0
.word 0xf9400c01
.word 0xaa1903e0
.word 0xf9400f30
.word 0xd63f0200
.word 0xf9002fa0
.word 0x53001c00
.word 0xf94017b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9402fa1
.word 0x39012001
.loc 33 687 0
.word 0xf94017b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000005
.loc 33 690 0
.word 0xf94017b1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_152:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_GetAwaiter
System_Threading_Tasks_Task_1_TResult_BOOL_GetAwaiter:
.loc 33 699 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1128]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9002fa0
.word 0x910123a0
.word 0xf90027bf
.word 0x910123a0
.word 0xf9002ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_458
.word 0xf90033a0
.word 0xf94013a0
.word 0xf9400000
bl _p_459
.word 0xaa0003e2
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033af
.word 0xd63f0040
.word 0x910123a0
.word 0x910103a0
.word 0xf94027a0
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_153:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL_ConfigureAwait_bool
System_Threading_Tasks_Task_1_TResult_BOOL_ConfigureAwait_bool:
.loc 33 709 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1136]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf9003fa0
.word 0x3940a3a0
.word 0xf90043a0
.word 0x910163a0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0x910163a0
.word 0xf9003ba0
.word 0xf94013a0
.word 0xf9400000
bl _p_460
.word 0xf90047a0
.word 0xf94013a0
.word 0xf9400000
bl _p_461
.word 0xaa0003e3
.word 0xf9403ba0
.word 0xf9403fa1
.word 0xf94043a2
.word 0xf94047af
.word 0xd63f0060
.word 0x910163a0
.word 0x910123a0
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf94033a0
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0x910043a0
.word 0xf94027a0
.word 0xf9000ba0
.word 0xf9402ba0
.word 0xf9000fa0
.word 0xf9401bb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_154:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_TResult_BOOL__cctor
System_Threading_Tasks_Task_1_TResult_BOOL__cctor:
.loc 33 81 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf90017af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1144]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_462
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9002ba0
.word 0xf94017a0
bl _p_463
.word 0xaa0003e1
.word 0xf9402ba0
.word 0xf90027a0
.word 0xd63f0020
.word 0xf9400bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_464
.word 0xf94027a1
.word 0xf9000001
.loc 33 87 0
.word 0xf9400bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_465
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf94017a0
bl _p_466
.word 0xf9400000
.word 0xf9001fa0
.word 0xeb1f001f
.word 0x10000011
.word 0x540003c0
.word 0xf94017a0
bl _p_467
bl _p_468
.word 0xf90023a0
.word 0xf94017a0
bl _p_469
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xf9401fa1
.word 0xf94023a2
.word 0xf9001ba0
bl _p_470
.word 0xf9400bb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
bl _p_464
.word 0xf9401ba1
.word 0x91002000
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_155:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_TResult_BOOL__ctor
System_Threading_Tasks_TaskFactory_1_TResult_BOOL__ctor:
.file 34 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/FutureFactory.cs"
.loc 34 93 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1152]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0x9100e3a0
.word 0xf9001fbf
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x9100e3a1
.word 0xf9001fbf
.word 0x9100e3a1
.word 0x9100c3a1
.word 0xf9401fa1
.word 0xf9001ba1
.word 0xd2800001
.word 0xd2800001
.word 0xd2800001
.word 0xf940001e
.word 0xf90023a0
.word 0xf9400ba0
.word 0xf9400000
bl _p_471
.word 0xaa0003e5
.word 0xf94023a0
.word 0x9100c3a1
.word 0xf9401ba1
.word 0xd2800002
.word 0xd2800003
.word 0xd2800004
.word 0xd63f00a0
.loc 34 95 0
.word 0xf9400fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_156:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_TResult_BOOL__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_TResult_BOOL__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler:
.loc 34 208 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013a0
.word 0xf90017a1
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xf9001fa4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1160]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xf94023b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.loc 34 210 0
.word 0xf94023b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_472
.loc 34 211 0
.word 0xf94023b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_473
.loc 34 213 0
.word 0xf94023b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x9100a3a1
.word 0x910163a1
.word 0xf94017a1
.word 0xf9002fa1
.word 0x910163a1
.word 0x91004002
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 214 0
.word 0xf94023b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a1
.word 0xf9401fa0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 215 0
.word 0xf94023b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xaa1803e1
.word 0xb9002018
.loc 34 216 0
.word 0xf94023b1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xaa1903e1
.word 0xb9002419
.loc 34 217 0
.word 0xf94023b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_157:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_TResult_BOOL_StartNew_System_Func_1_TResult_BOOL_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_TResult_BOOL_StartNew_System_Func_1_TResult_BOOL_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler:
.loc 34 388 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xaa0303f9
.word 0xf9001fa4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1168]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xb90063bf
.word 0xf94023b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd280003e
.word 0xb90063be
.loc 34 389 0
.word 0xf94023b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_425
.word 0xf9003fa0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0xf90043a0
.word 0x9100a3a0
.word 0x910163a0
.word 0xf94017a0
.word 0xf9002fa0
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9401fa0
.word 0xf90047a0
.word 0x910183a0
.word 0xf9004ba0
.word 0xf9400fa0
.word 0xf9400000
bl _p_474
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9400fa0
.word 0xf9400000
bl _p_474
.word 0xf9004fa0
.word 0xf9400fa0
.word 0xf9400000
bl _p_475
.word 0xaa0003e7
.word 0xf9403fa0
.word 0xf94043a1
.word 0xf94047a5
.word 0xf9404ba6
.word 0xf9404faf
.word 0x910163a2
.word 0xf9402fa2
.word 0xaa1903e3
.word 0xd2800004
.word 0xd63f00e0
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf94023b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_158:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_TResult_BOOL_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_TResult_BOOL_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_TResult_BOOL_bool
System_Threading_Tasks_TaskFactory_1_TResult_BOOL_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_TResult_BOOL_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_TResult_BOOL_bool:
.loc 34 542 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf9002faf
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1176]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf90033bf
.word 0xf90037bf
.word 0x3901c3bf
.word 0xf9401fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf90033bf
.loc 34 543 0
.word 0xf9401fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90037bf
.loc 34 544 0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x3901c3bf
.loc 34 548 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb40003b9
.loc 34 550 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf9400f30
.word 0xd63f0200
.word 0x53001c00
.word 0xf90073a0
.word 0xf9401fb1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0x53001c01
.word 0x3901c3a0
.loc 34 551 0
.word 0xf9401fb1
.word 0xf9413631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000011
.loc 34 554 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a2
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf90073a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94073a0
.loc 34 556 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003fbf
.word 0x94000037
.word 0xf9403fa0
.word 0xb4000040
bl _p_68
.word 0x14000162
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90073a0
.loc 34 557 0
.word 0xf9401fb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf90037a0
.word 0xf9401fb1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9006ba0
.word 0xf9406ba0
.word 0xb4000060
.word 0xf9406ba0
bl _p_8
.word 0xf9003fbf
.word 0x9400001e
.word 0xf9403fa0
.word 0xb4000040
bl _p_68
.word 0x14000149
.word 0xf90053a0
.word 0xf94053a0
.word 0xf90073a0
.loc 34 558 0
.word 0xf9401fb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9006fa0
.word 0xf9406fa0
.word 0xb4000060
.word 0xf9406fa0
bl _p_8
.word 0xf9003fbf
.word 0x94000005
.word 0xf9403fa0
.word 0xb4000040
bl _p_68
.word 0x14000130
.word 0xf90067be
.loc 34 561 0
.word 0xf9401fb1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xb4000660
.loc 34 563 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9007ba0
.word 0xf94037a1
.word 0x910143a0
.word 0xf9004ba0
.word 0xaa0103e0
.word 0xf940003e
bl _p_401
.word 0xf9404bbe
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf942ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf90077a0
.word 0xf9402fa0
bl _p_476
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9407ba0
.word 0xf940001e
.word 0xf90073a0
.word 0xf9402fa0
bl _p_477
.word 0xaa0003e3
.word 0xf94073a0
.word 0xf94077a2
.word 0x910143a1
.word 0xf9402ba1
.word 0xd63f0060
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9434a31
.word 0xb4000051
.word 0xd63f0220
.loc 34 564 0
.word 0xf9401fb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0x140000ed
.loc 34 565 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb4000a20
.loc 34 567 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf943a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9007fa0
.word 0xf94033a0
.word 0xf9007ba0
.word 0xf9402fa0
bl _p_476
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9407fa0
.word 0xf940001e
.word 0xf90077a0
.word 0xf9402fa0
bl _p_478
.word 0xaa0003e2
.word 0xf94077a0
.word 0xf9407ba1
.word 0xd63f0040
.word 0x53001c00
.word 0xf90073a0
.loc 34 568 0
.word 0xf9401fb1
.word 0xf9440631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0x34001820
.word 0xf94033a0
.word 0xf90043a0
.word 0xf94043a0
.word 0xf90047a0
.word 0xf94043a0
.word 0xeb1f001f
.word 0x540001a0
.word 0xf94043a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1184]
.word 0xeb01001f
.word 0x54000060
.word 0xf90047bf
.word 0x14000001
.word 0xf94047a0
.word 0xb4001580
.loc 34 570 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9448231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401c00
.word 0xf90073a0
.word 0xd50330bf
.word 0xf94073a0
.word 0xf9401002
.word 0xd50330bf
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_479
.loc 34 572 0
.word 0xf9401fb1
.word 0xf944c231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000093
.loc 34 575 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944e631
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90073a0
.word 0xf9401fb1
.word 0xf9450231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
.word 0x34000320
.loc 34 576 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9452a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90073a0
.word 0xf9401fb1
.word 0xf9455631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xd2800020
.word 0xd2800000
.word 0xd2800022
bl _p_390
.loc 34 578 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9458a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x340002a0
.loc 34 580 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90073a0
.word 0xf9401fb1
.word 0xf945e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a0
bl _p_391
.loc 34 582 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9460e31
.word 0xb4000051
.word 0xd63f0220
.word 0x3940c3a0
.word 0x340004a0
.loc 34 584 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9463631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9007ba0
.word 0x3941c3a0
.word 0xf90077a0
.word 0xf9402fa0
bl _p_476
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9407ba0
.word 0xf940001e
.word 0xf90073a0
.word 0xf9402fa0
bl _p_480
.word 0xaa0003e2
.word 0xf94073a0
.word 0xf94077a1
.word 0xd63f0040
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9469231
.word 0xb4000051
.word 0xd63f0220
.loc 34 585 0
.word 0xf9401fb1
.word 0xf946a231
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001b
.loc 34 588 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf946c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9007ba0
.word 0x3941c3a0
.word 0xf90077a0
.word 0xf9402fa0
bl _p_476
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9407ba0
.word 0xf940001e
.word 0xf90073a0
.word 0xf9402fa0
bl _p_481
.word 0xaa0003e2
.word 0xf94073a0
.word 0xf94077a1
.word 0xd63f0040
.loc 34 593 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9472e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067be
.word 0xd61f03c0
.loc 34 594 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9475631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9476631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_159:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_TResult_BOOL_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_TResult_BOOL_object
System_Threading_Tasks_TaskFactory_1_TResult_BOOL_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_TResult_BOOL_object:
.loc 34 778 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1192]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf9002fa0
.word 0xf94013a0
.word 0xf90033a0
.word 0xd2800000
.word 0xf94017a0
.word 0xf90037a0
.word 0xf9400ba0
.word 0xb9802000
.word 0xf9003ba0
.word 0xf9400ba0
.word 0xf9400000
bl _p_482
.word 0xf9003fa0
.word 0xf9400ba0
.word 0xf9400000
bl _p_483
.word 0xaa0003e5
.word 0xf9402fa0
.word 0xf94033a1
.word 0xf94037a3
.word 0xf9403ba4
.word 0xf9403faf
.word 0xd2800002
.word 0xd63f00a0
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401bb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_15a:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_TResult_BOOL_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_TResult_BOOL_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_TaskFactory_1_TResult_BOOL_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_TResult_BOOL_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions:
.loc 34 0 0 prologue_end
.word 0xa9b17bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xa902ebb9
.word 0xf90033af
.word 0xaa0003f6
.word 0xf9001fa1
.word 0xf90023a2
.word 0xaa0303f9
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1200]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf90037bf
.word 0xd2800015
.word 0xd2800014
.word 0x3901c3bf
.word 0xf94027b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_484
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90057a0
.word 0xf94033a0
bl _p_485
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf90053a0
.word 0xd63f0020
.word 0xf94027b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90037a0
.word 0xf94037a1
.word 0xf9401fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94037a1
.word 0xf94023a0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 816 0
.word 0xf94027b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb50002b6
.loc 34 817 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xd291ba20
.word 0xf2a00020
.word 0xd291ba20
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 34 819 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9400800
.word 0xb5000300
.word 0xf94037a0
.word 0xf9400c00
.word 0xb50002a0
.loc 34 820 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xd291bd20
.word 0xf2a00020
.word 0xd291bd20
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 34 824 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xaa1a03e0
.word 0xd2800021
bl _p_486
.loc 34 826 0
.word 0xf94027b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9005ba0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xf94033a0
bl _p_487
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf94033a0
bl _p_487
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9005fa0
.word 0xf94033a0
bl _p_488
.word 0xaa0003e3
.word 0xf9405fa0
.word 0xf90057a0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0xf94027b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf9405ba1
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 828 0
.word 0xf94027b1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9431e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000740
.loc 34 829 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9434631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94037a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
.word 0xf9005ba0
.word 0xaa1603e0
.word 0xaa1603e0
.word 0xf94002de
bl _p_489
.word 0xf90063a0
.word 0xf94027b1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf94027b1
.word 0xf943d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
bl _p_490
.word 0xf90057a0
.word 0xf94027b1
.word 0xf943f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xf94057a2
.word 0xd2800000
.word 0xd2800000
.word 0xd2800003
bl _p_491
.loc 34 831 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x34000240
.loc 34 833 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9445e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401000
bl _p_492
.word 0x53001c00
.word 0xf94027b1
.word 0xf9447e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.loc 34 842 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf944a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1216]
.word 0x39400000
.word 0x34001a20
.word 0xf94033a0
bl _p_493
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0xf90073a0
.word 0xf94033a0
bl _p_494
.word 0xaa0003e1
.word 0xf94073a0
.word 0xf9006fa0
.word 0xd63f0020
.word 0xf94027b1
.word 0xf944f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fa0
.word 0xaa0003f5
.word 0xaa1503e1
.word 0xf94037a0
.word 0xf9000ea0
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 844 0
.word 0xf94027b1
.word 0xf9454631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf9006ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xd2800281
.word 0xd2800281
bl _p_2
.word 0xf90067a0
bl _p_495
.word 0xf94027b1
.word 0xf9457e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf9406ba1
.word 0xf9000aa0
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 847 0
.word 0xf94027b1
.word 0xf945c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1503e0
.word 0xf90063a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002bc0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94063a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002a00
.word 0xf9001020
.word 0xf9005fa1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94033a0
bl _p_496
.word 0xaa0003e1
.word 0xf9405fa0
.word 0xf9001401
.word 0xf9005ba0
.word 0xf94033a0
bl _p_497
.word 0xf9405ba1
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1240]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa1903e0
.word 0xaa1603e0
.word 0xaa1903e2
.word 0xf9400ed0
.word 0xd63f0200
.word 0xf90057a0
.word 0xf94027b1
.word 0xf946b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf90053a0
.word 0xaa0003f4
.loc 34 852 0
.word 0xf94027b1
.word 0xf946ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003e1
.word 0xb4001140
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9400281

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1248]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9471a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000f00
.word 0xaa1503e0
.word 0xf9400aa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_498
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9474e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000d60
.loc 34 855 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9477631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1503e0
.word 0xf9400ea0
.word 0xf9400800
.word 0xf90053a0
.word 0xaa1503e0
.word 0xf9400ea0
.word 0xf9400c00
.word 0xf90057a0
.word 0xaa1503e0
.word 0xf9400ea0
.word 0xf9401000
.word 0xf9005ba0
.word 0xd2800000
.word 0xf94033a0
bl _p_499
.word 0xf9005fa0
.word 0xf94033a0
bl _p_500
.word 0xaa0003e5
.word 0xf94053a1
.word 0xf94057a2
.word 0xf9405ba3
.word 0xf9405faf
.word 0xaa1403e0
.word 0xd2800004
.word 0xd63f00a0
.loc 34 857 0
.word 0xf94027b1
.word 0xf947f231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000043
.loc 34 861 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9481631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xf94037a0
.word 0xf9005ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001940

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001780
.word 0xf9001020
.word 0xf90057a1
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94033a0
bl _p_501
.word 0xaa0003e1
.word 0xf94057a0
.word 0xf9001401
.word 0xf90053a0
.word 0xf94033a0
bl _p_502
.word 0xf94053a1
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1240]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa1903e0
.word 0xaa1603e0
.word 0xaa1903e2
.word 0xf9400ed0
.word 0xd63f0200
.word 0xf94027b1
.word 0xf948fe31
.word 0xb4000051
.word 0xd63f0220
.loc 34 866 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9491e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000076
.word 0xf9003fa0
.word 0xf9403fa0
.loc 34 867 0
.word 0xf94027b1
.word 0xf9493a31
.word 0xb4000051
.word 0xd63f0220
.loc 34 869 0
.word 0xf94027b1
.word 0xf9494a31
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9496631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000340
.loc 34 870 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9498e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94037a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf949be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xd2800060
.word 0xd2800000
.word 0xd2800062
bl _p_390
.loc 34 872 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf949f231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x340002c0
.loc 34 874 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf94a2631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf94a5231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
bl _p_391
.loc 34 878 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf94a7a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401000
.word 0xf9005ba0
.word 0x3901c3bf
.word 0x3941c3a0
.word 0xf90057a0
.word 0xf94033a0
bl _p_487
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9405ba0
.word 0xf940001e
.word 0xf90053a0
.word 0xf94033a0
bl _p_503
.word 0xaa0003e2
.word 0xf94053a0
.word 0xf94057a1
.word 0xd63f0040
.word 0x53001c00
.word 0xf94027b1
.word 0xf94ade31
.word 0xb4000051
.word 0xd63f0220
.loc 34 879 0
.word 0xf94027b1
.word 0xf94aee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
bl _p_504
.loc 34 882 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf94b1631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401000
.word 0xf94027b1
.word 0xf94b2e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xf94013b6
.word 0xa942ebb9
.word 0x910003bf
.word 0xa8cf7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_15b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_bool_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_bool_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1256]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_15c:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__Insert_T_REF_int_T_REF
System_Array_InternalArray__Insert_T_REF_int_T_REF:
.loc 31 136 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1264]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28575c0
.word 0xd28575c0
bl _p_370
.word 0xaa0003e1
.word 0xd2801ee0
.word 0xf2a04000
.word 0xd2801ee0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_15d:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__RemoveAt_int
System_Array_InternalArray__RemoveAt_int:
.loc 31 141 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1272]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xd28575c0
.word 0xd28575c0
bl _p_370
.word 0xaa0003e1
.word 0xd2801ee0
.word 0xf2a04000
.word 0xd2801ee0
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.word 0xf94013b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15e:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__IndexOf_T_REF_T_REF
System_Array_InternalArray__IndexOf_T_REF_T_REF:
.loc 31 146 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa90263b7
.word 0xa9036bb9
.word 0xf9002faf
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1280]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xd2800018
.word 0xd2800017
.word 0xf90033bf
.word 0xf94023b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400320
.word 0x3940b000
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xd2800021
.word 0xd280003e
.word 0x6b1e001f
.word 0x540002ad
.loc 31 147 0
.word 0xf94023b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2857d40
.word 0xd2857d40
bl _p_370
bl _p_380
.word 0xf90053a0
.word 0xf94023b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xd2802080
.word 0xf2a04000
.word 0xd2802080
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 149 0
.word 0xf94023b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f8
.loc 31 150 0
.word 0xf94023b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800017
.word 0x14000069
.loc 31 152 0
.word 0xf94023b1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1703e0
.word 0x910183a0
.word 0xf9402fa0
bl _p_505
.word 0x93407ee0
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400000
.word 0xf90033a0
.loc 31 153 0
.word 0xf94023b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500043a
.loc 31 154 0
.word 0xf94023b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xb5000860
.loc 31 155 0
.word 0xf94023b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003bb7
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf9003fa0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf9403fa0
.word 0xb9800400
.word 0xf90043a0
.word 0x14000002
.word 0xf90043bf
.word 0xf94043a0
.word 0xf90043a0
.word 0xf94023b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf94043a1
.word 0xb010000
.word 0x14000057
.loc 31 159 0
.word 0xf94023b1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0x910183a0
.word 0xaa1a03e0
.word 0xf94033a2
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9402c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf94023b1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x340002a0
.loc 31 162 0
.word 0xf94023b1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xf90037b7
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b35
.word 0xeb1f02bf
.word 0x54000060
.word 0xb98006b4
.word 0x14000002
.word 0xd2800014
.word 0xf94023b1
.word 0xf942aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xb140000
.word 0x1400002f
.loc 31 150 0
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf942d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0x6b1802ff
.word 0x54fff1ab
.loc 31 167 0
.word 0xf94023b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xf9400b20
.word 0xf90047a0
.word 0xeb1f001f
.word 0x540000a0
.word 0xf94047a0
.word 0xb9800400
.word 0xf9004ba0
.word 0x14000002
.word 0xf9004bbf
.word 0xf9404ba0
.word 0xf9004ba0
.word 0xf94023b1
.word 0xf9436631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9404ba0
.word 0x51000400
.word 0xf94023b1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa94263b7
.word 0xa9436bb9
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_15f:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_T_REF_int
System_Array_InternalArray__get_Item_T_REF_int:
.loc 31 173 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1288]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf90023bf
.word 0xf94013b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x6b00035f
.word 0x540001e3
.loc 31 174 0
.word 0xf94013b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28187e0
.word 0xd28187e0
bl _p_370
.word 0xaa0003e1
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 177 0
.word 0xf94013b1
.word 0xf940d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x910103a0
.word 0xf9401fa0
bl _p_506
.word 0x93407f40
.word 0xd37df000
.word 0x8b000320
.word 0x91008000
.word 0xf9400000
.word 0xf90023a0
.loc 31 178 0
.word 0xf94013b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf94013b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_160:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__set_Item_T_REF_int_T_REF
System_Array_InternalArray__set_Item_T_REF_int_T_REF:
.loc 31 183 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xf90037af
.word 0xaa0003f9
.word 0xaa0103fa
.word 0xf90027a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1296]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xf9402bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf9003ba0
.word 0xf9402bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x6b00035f
.word 0x540001e3
.loc 31 184 0
.word 0xf9402bb1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28187e0
.word 0xd28187e0
bl _p_370
.word 0xaa0003e1
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 186 0
.word 0xf9402bb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903f7
.word 0xaa1903f6
.word 0xeb1f033f
.word 0x540002c0
.word 0xf94002f5
.word 0xf9400ae0
.word 0xb5000240
.word 0x3940b2a0
.word 0xd280003e
.word 0xeb1e001f
.word 0x540001c1
.word 0xf94002a0
.word 0xf9400414
.word 0xf9401680

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1304]
.word 0xeb01001f
.word 0x540000e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1312]
.word 0xeb00029f
.word 0x54000040
.word 0xd2800016
.word 0xaa1603e0
.word 0xaa1603f8
.loc 31 187 0
.word 0xf9402bb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb4000256
.loc 31 188 0
.word 0xf9402bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf94027a2
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xf9400303
.word 0xf9408070
.word 0xd63f0200
.loc 31 189 0
.word 0xf9402bb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400001e
.loc 31 191 0
.word 0xf9402bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x910123a0
.word 0xf94037a0
bl _p_507
.word 0x93407f40
.word 0xd37df000
.word 0x8b000320
.word 0x91008001
.word 0xf94027a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 31 192 0
.word 0xf9402bb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9423231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_161:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Action_1_BeaconTest_Item_invoke_void_T_BeaconTest_Item
wrapper_delegate_invoke_System_Action_1_BeaconTest_Item_invoke_void_T_BeaconTest_Item:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1320]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000030
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x14000024
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000489
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9003ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9403ba0
.word 0xf9402bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffc4b
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_162:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_BeaconTest_Item_bool_invoke_TResult_T_BeaconTest_Item
wrapper_delegate_invoke_System_Func_2_BeaconTest_Item_bool_invoke_TResult_T_BeaconTest_Item:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1328]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000480
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb4000200
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x53001c00
.word 0x14000038
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x53001c00
.word 0x1400002b
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000569
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf94047a1
.word 0x53001c00
.word 0xf90043a0
.word 0xf9402bb1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x53001c00
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbab
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_163:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_CoreLocation_CLAuthorizationChangedEventArgs_invoke_void_object_TEventArgs_object_CoreLocation_CLAuthorizationChangedEventArgs
wrapper_delegate_invoke_System_EventHandler_1_CoreLocation_CLAuthorizationChangedEventArgs_invoke_void_object_TEventArgs_object_CoreLocation_CLAuthorizationChangedEventArgs:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1336]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb50004c0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x14000034
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000026
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540004c9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90043a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94043a0
.word 0xf9402bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffc0b
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_164:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_CoreLocation_CLRegionEventArgs_invoke_void_object_TEventArgs_object_CoreLocation_CLRegionEventArgs
wrapper_delegate_invoke_System_EventHandler_1_CoreLocation_CLRegionEventArgs_invoke_void_object_TEventArgs_object_CoreLocation_CLRegionEventArgs:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1344]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb50004c0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x14000034
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000026
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540004c9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90043a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94043a0
.word 0xf9402bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffc0b
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_165:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_EventHandler_1_CoreLocation_CLRegionBeaconsRangedEventArgs_invoke_void_object_TEventArgs_object_CoreLocation_CLRegionBeaconsRangedEventArgs
wrapper_delegate_invoke_System_EventHandler_1_CoreLocation_CLRegionBeaconsRangedEventArgs_invoke_void_object_TEventArgs_object_CoreLocation_CLRegionBeaconsRangedEventArgs:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xaa0203fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1352]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9101a300
.word 0xf9403700
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb50004c0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91008300
.word 0xf9401300
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xb4000220
.word 0xaa1303e0
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b03
.word 0xaa1303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xd63f0060
.word 0x14000034
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x9100e300
.word 0xf9401f00
.word 0xaa1803e0
.word 0xaa1803e0
.word 0x91004300
.word 0xf9400b02
.word 0xaa1903e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000026
.word 0xaa1503e0
.word 0xb9801aa0
.word 0xaa0003f6
.word 0xd2800017
.word 0xaa1503e0
.word 0xaa1703e0
.word 0x93407ee0
.word 0xb9801aa1
.word 0xeb00003f
.word 0x10000011
.word 0x540004c9
.word 0xd37df000
.word 0x8b0002a0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f4
.word 0xaa1403e3
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0xaa0303e0
.word 0xaa1903e1
.word 0xaa1a03e2
.word 0xf90043a3
.word 0xf9400c70
.word 0xd63f0200
.word 0xf94043a0
.word 0xf9402bb1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x110006e0
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xaa1603e1
.word 0x6b16001f
.word 0x54fffc0b
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_166:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_bool_invoke_TResult
wrapper_delegate_invoke_System_Func_1_bool_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1360]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb5000400
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001c0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x53001c00
.word 0x14000034
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x53001c00
.word 0x14000029
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000529
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xf9403fa1
.word 0x53001c00
.word 0xf9003ba0
.word 0xf9402bb1
.word 0xf9419a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0x53001c00
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffbeb
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_16b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_string_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1368]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_16c:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_string_invoke_TResult
wrapper_delegate_invoke_System_Func_1_string_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1376]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_16d:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_string_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1384]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_16e:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_string_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1392]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_16f:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Net_Http_HttpResponseMessage_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Net_Http_HttpResponseMessage_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1400]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_170:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Net_Http_HttpResponseMessage_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Net_Http_HttpResponseMessage_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1408]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_171:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Net_Http_HttpResponseMessage_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Net_Http_HttpResponseMessage_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1416]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_172:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Net_Http_HttpResponseMessage_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Net_Http_HttpResponseMessage_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1424]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_173:
.text
ut_372:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL__ctor_System_Threading_Tasks_Task_1_TResult_BOOL
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL__ctor_System_Threading_Tasks_Task_1_TResult_BOOL
System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL__ctor_System_Threading_Tasks_Task_1_TResult_BOOL:
.file 35 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/runtime/compilerservices/TaskAwaiter.cs"
.loc 35 317 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1432]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba1
.word 0xf9400fa0
.word 0xf9000020
.word 0xaa0103e2
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 35 318 0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_174:
.text
ut_373:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_get_IsCompleted
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_get_IsCompleted
System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_get_IsCompleted:
.loc 35 325 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1440]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400001
.word 0xaa0103e0
.word 0xf940003e
bl _p_436
.word 0x53001c00
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_175:
.text
ut_374:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_OnCompleted_System_Action
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_OnCompleted_System_Action
System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_OnCompleted_System_Action:
.loc 35 336 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1448]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400fa1
.word 0xd2800022
.word 0xd2800022
.word 0xd2800022
.word 0xd2800023
bl _p_508
.loc 35 337 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_176:
.text
ut_375:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_UnsafeOnCompleted_System_Action
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_UnsafeOnCompleted_System_Action
System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_UnsafeOnCompleted_System_Action:
.loc 35 347 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1456]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400000
.word 0xf9400fa1
.word 0xd2800022
.word 0xd2800002
.word 0xd2800022
.word 0xd2800003
bl _p_508
.loc 35 348 0
.word 0xf94013b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_177:
.text
ut_376:
add x0, x0, 16
b System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_GetResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_GetResult
System_Runtime_CompilerServices_TaskAwaiter_1_TResult_BOOL_GetResult:
.loc 35 357 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9001baf
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1464]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
bl _p_509
.loc 35 358 0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_510
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9402ba0
.word 0xf940001e
.word 0xf90027a0
.word 0xf9401ba0
bl _p_511
.word 0xaa0003e1
.word 0xf94027a0
.word 0xd63f0020
.word 0x53001c00
.word 0xf90023a0
.word 0xf9400fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_178:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_object_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult_T_object
wrapper_delegate_invoke_System_Func_2_object_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult_T_object:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1472]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_179:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_1_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult
wrapper_delegate_invoke_System_Func_1_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult:
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1480]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800019
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xf9402bb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xaa1303e1
.word 0xf90037a0
.word 0xb4000073
.word 0xf94037a0
bl _p_8
.word 0xf94037a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9101a340
.word 0xf9403740
.word 0xaa0003f7
.word 0xaa1703e0
.word 0xb50003c0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91008340
.word 0xf9401340
.word 0xaa0003f5
.word 0xaa1503e0
.word 0xb40001a0
.word 0xaa1503e0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b41
.word 0xaa1503e0
.word 0xd63f0020
.word 0x14000032
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x9100e340
.word 0xf9401f40
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x91004340
.word 0xf9400b40
.word 0xd63f0000
.word 0x14000028
.word 0xaa1703e0
.word 0xb9801ae0
.word 0xaa0003f8
.word 0xd2800019
.word 0xaa1703e0
.word 0xaa1903e0
.word 0x93407f20
.word 0xb9801ae1
.word 0xeb00003f
.word 0x10000011
.word 0x54000509
.word 0xd37df000
.word 0x8b0002e0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f6
.word 0xaa1603e1
.word 0xaa0103e0
.word 0xf9003fa1
.word 0xf9400c30
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf9403fa0
.word 0xf9003ba1
.word 0xf9402bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0xaa1903e0
.word 0x11000720
.word 0xaa0003f9
.word 0xaa1903e0
.word 0xaa1803e1
.word 0x6b18001f
.word 0x54fffc0b
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9402bb1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_17a:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult_T_System_IAsyncResult
wrapper_delegate_invoke_System_Func_2_System_IAsyncResult_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult_T_System_IAsyncResult:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1488]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_17b:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Collections_Generic_List_1_BeaconTest_Item_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1496]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_17c:
.text
ut_381:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_Start_TStateMachine_REF_TStateMachine_REF_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_Start_TStateMachine_REF_TStateMachine_REF_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_Start_TStateMachine_REF_TStateMachine_REF_:
.loc 32 459 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf90033af
.word 0xf9000fa0
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1504]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x9100e3a0
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400340
.word 0xb50002a0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xd298b740
.word 0xf2a00020
.word 0xd298b740
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 466 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
.word 0xd2800000
.word 0xf9001fa0
.word 0xf90023a0
.word 0xf90027a0
.word 0xf9002ba0
.loc 32 467 0
.word 0xf94013b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
bl _p_512
.loc 32 470 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
bl _p_513
.loc 32 471 0
.word 0xf94013b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400341
.word 0xaa0103e0
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1512]
.word 0x928008f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.loc 32 472 0
.word 0xf94013b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9002fbf
.word 0x94000005
.word 0xf9402fa0
.word 0xb4000040
bl _p_68
.word 0x1400000e
.word 0xf9003fbe
.loc 32 475 0
.word 0xf94013b1
.word 0xf941be31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100e3a0
bl _p_514
.loc 32 476 0
.word 0xf94013b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fbe
.word 0xd61f03c0
.loc 32 477 0
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_17d:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_REF_get_Default
System_Collections_Generic_EqualityComparer_1_T_REF_get_Default:
.file 36 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/collections/generic/equalitycomparer.cs"
.loc 36 32 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9001baf

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1520]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xd280001a
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_515
.word 0xf9400000
.word 0xaa0003fa
.loc 36 33 0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb50003da
.loc 36 34 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_516
.word 0xaa0003ef
bl _p_517
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xaa0003fa
.loc 36 35 0
.word 0xf9400fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf9401ba0
bl _p_515
.word 0xf90023a0
.word 0xf94027a1
.word 0xd50330bf
.word 0xf94023a0
.word 0xf9000001
.loc 36 37 0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_17e:
.text
ut_383:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_REF_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_REF_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_REF_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_:
.loc 32 542 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf90043af
.word 0xaa0003f8
.word 0xf9002ba1
.word 0xf9002fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1528]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf90047bf
.word 0xd2800017
.word 0xd2800016
.word 0xf94033b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90047bf
.loc 32 543 0
.word 0xf94033b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_388
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1803f5
.word 0x350000c0
.word 0xaa1503e0
.word 0xd2800000
.word 0xaa1503f4
.word 0xd2800013
.word 0x14000011
.word 0xaa1503e0
.word 0xaa1803e0
.word 0xf94043a0
.word 0xf9400000
bl _p_518
.word 0xaa0003ef
.word 0xaa1803e0
bl _p_519
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1503f4
.word 0xaa0003f3
.word 0xaa1403e0
.word 0xaa1303e0
.word 0x910223a2
.word 0xaa1403e0
.word 0xaa1303e1
bl _p_520
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f7
.loc 32 547 0
.word 0xf94033b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400300
.word 0xb50004a0
.loc 32 551 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9418631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94043a0
.word 0xf9400000
bl _p_518
.word 0xaa0003ef
.word 0xaa1803e0
bl _p_519
.word 0xf90067a0
.word 0xf94033b1
.word 0xf941b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf90063a0
.word 0xaa0003f6
.loc 32 556 0
.word 0xf94033b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a3
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9402fa0
.word 0xf9400001
.word 0xf94047a2
.word 0xaa0303e0
.word 0xaa1803e0
bl _p_521
.loc 32 559 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bba
.word 0xaa1703f9
.word 0xf94043a0
bl _p_522
.word 0xf9004ba0
.word 0xf94043a0
bl _p_523
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xf9404ba2
.word 0xd63f0040
.word 0x1400001d
.word 0xaa1a03e0
.word 0x9101e3a0
.word 0xf9400340
.word 0xf9003fa0
.word 0xf94043a0
bl _p_524
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x9101e3a1
.word 0x91004003
.word 0xaa0303e2
.word 0xf9403fa1
.word 0xf9000061
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa1903e1
.word 0xf9404ba2
.word 0xd63f0040
.word 0x14000001
.loc 32 560 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf942e231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90063a0
.loc 32 563 0
.word 0xf94033b1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0xd2800001
bl _p_525
.loc 32 564 0
.word 0xf94033b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x14000001
.loc 32 565 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9435e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf94033b1
.word 0xf9437231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0

Lme_17f:
.text
ut_384:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_:
.loc 32 542 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf90043af
.word 0xaa0003f8
.word 0xf9002ba1
.word 0xf9002fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1536]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf90047bf
.word 0xd2800017
.word 0xd2800016
.word 0xf94033b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90047bf
.loc 32 543 0
.word 0xf94033b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_388
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1803f5
.word 0x350000c0
.word 0xaa1503e0
.word 0xd2800000
.word 0xaa1503f4
.word 0xd2800013
.word 0x14000017
.word 0xaa1503e0
.word 0xaa1803e0
.word 0xf94043a0
.word 0xf9400000
bl _p_526
.word 0xf90067a0
.word 0xf940031e
.word 0xf94043a0
.word 0xf9400000
bl _p_527
.word 0xaa0003e1
.word 0xf94067af
.word 0xaa1803e0
.word 0xd63f0020
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1503f4
.word 0xaa0003f3
.word 0xaa1403e0
.word 0xaa1303e0
.word 0x910223a2
.word 0xaa1403e0
.word 0xaa1303e1
bl _p_520
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f7
.loc 32 547 0
.word 0xf94033b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400300
.word 0xb5000560
.loc 32 551 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94043a0
.word 0xf9400000
bl _p_526
.word 0xf9006ba0
.word 0xf940031e
.word 0xf94043a0
.word 0xf9400000
bl _p_527
.word 0xaa0003e1
.word 0xf9406baf
.word 0xaa1803e0
.word 0xd63f0020
.word 0xf90067a0
.word 0xf94033b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf90063a0
.word 0xaa0003f6
.loc 32 556 0
.word 0xf94033b1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a3
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9402fa0
.word 0xf9400001
.word 0xf94047a2
.word 0xaa0303e0
.word 0xaa1803e0
bl _p_521
.loc 32 559 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bba
.word 0xaa1703f9
.word 0xf94043a0
bl _p_528
.word 0xf9004ba0
.word 0xf94043a0
bl _p_529
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xf9404ba2
.word 0xd63f0040
.word 0x1400001d
.word 0xaa1a03e0
.word 0x9101e3a0
.word 0xf9400340
.word 0xf9003fa0
.word 0xf94043a0
bl _p_530
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x9101e3a1
.word 0x91004003
.word 0xaa0303e2
.word 0xf9403fa1
.word 0xf9000061
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa1903e1
.word 0xf9404ba2
.word 0xd63f0040
.word 0x14000001
.loc 32 560 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90063a0
.loc 32 563 0
.word 0xf94033b1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0xd2800001
bl _p_525
.loc 32 564 0
.word 0xf94033b1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x14000001
.loc 32 565 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9438e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf94033b1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_180:
.text
ut_385:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF__0
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF__0
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_BOOL_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF__0:
.loc 32 542 0 prologue_end
.word 0xa9b27bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf90043af
.word 0xaa0003f8
.word 0xf9002ba1
.word 0xf9002fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1544]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf90047bf
.word 0xd2800017
.word 0xd2800016
.word 0xf94033b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90047bf
.loc 32 543 0
.word 0xf94033b1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_388
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1803f5
.word 0x350000c0
.word 0xaa1503e0
.word 0xd2800000
.word 0xaa1503f4
.word 0xd2800013
.word 0x14000017
.word 0xaa1503e0
.word 0xaa1803e0
.word 0xf94043a0
.word 0xf9400000
bl _p_531
.word 0xf90067a0
.word 0xf940031e
.word 0xf94043a0
.word 0xf9400000
bl _p_532
.word 0xaa0003e1
.word 0xf94067af
.word 0xaa1803e0
.word 0xd63f0020
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1503f4
.word 0xaa0003f3
.word 0xaa1403e0
.word 0xaa1303e0
.word 0x910223a2
.word 0xaa1403e0
.word 0xaa1303e1
bl _p_520
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f7
.loc 32 547 0
.word 0xf94033b1
.word 0xf9416e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400300
.word 0xb5000560
.loc 32 551 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xf94043a0
.word 0xf9400000
bl _p_531
.word 0xf9006ba0
.word 0xf940031e
.word 0xf94043a0
.word 0xf9400000
bl _p_532
.word 0xaa0003e1
.word 0xf9406baf
.word 0xaa1803e0
.word 0xd63f0020
.word 0xf90067a0
.word 0xf94033b1
.word 0xf941e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xf90063a0
.word 0xaa0003f6
.loc 32 556 0
.word 0xf94033b1
.word 0xf9420231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a3
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9402fa0
.word 0xf9400001
.word 0xf94047a2
.word 0xaa0303e0
.word 0xaa1803e0
bl _p_521
.loc 32 559 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bba
.word 0xaa1703f9
.word 0xf94043a0
bl _p_533
.word 0xf9004ba0
.word 0xf94043a0
bl _p_534
.word 0xd280005e
.word 0xeb1e001f
.word 0x540000c0
.word 0xaa1a03e0
.word 0xaa1903e1
.word 0xf9404ba2
.word 0xd63f0040
.word 0x1400001d
.word 0xaa1a03e0
.word 0x9101e3a0
.word 0xf9400340
.word 0xf9003fa0
.word 0xf94043a0
bl _p_535
.word 0xd2800301
.word 0xd2800301
bl _p_2
.word 0x9101e3a1
.word 0x91004003
.word 0xaa0303e2
.word 0xf9403fa1
.word 0xf9000061
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0xaa1903e1
.word 0xf9404ba2
.word 0xd63f0040
.word 0x14000001
.loc 32 560 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90063a0
.loc 32 563 0
.word 0xf94033b1
.word 0xf9433231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0xd2800001
bl _p_525
.loc 32 564 0
.word 0xf94033b1
.word 0xf9435231
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x14000001
.loc 32 565 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9438e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf94033b1
.word 0xf943a231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8ce7bfd
.word 0xd65f03c0

Lme_181:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL
System_Threading_Tasks_Task_FromResult_TResult_BOOL_TResult_BOOL:
.file 37 "/Library/Frameworks/Xamarin.iOS.framework/Versions/11.9.1.24/src/Xamarin.iOS/mcs/class/referencesource/mscorlib/system/threading/Tasks/Task.cs"
.loc 37 5532 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9001baf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1552]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x394043a0
.word 0xf9002ba0
.word 0xf9401ba0
bl _p_536
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9401ba0
bl _p_536
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90027a0
.word 0xf9401ba0
bl _p_537
.word 0xaa0003e2
.word 0xf94027a0
.word 0xf9402ba1
.word 0xf90023a0
.word 0xd63f0040
.word 0xf9400fb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xf9400fb1
.word 0xf940ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_182:
.text
ut_387:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF_:
.loc 32 360 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1560]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9002fa1
.word 0xf94013a1
.word 0xf90033a1
.word 0xf940001e
.word 0xf9002ba0
.word 0xf94023a0
bl _p_538
.word 0xaa0003e3
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a2
.word 0xd63f0060
.loc 32 361 0
.word 0xf94017b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_183:
.text
ut_388:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF__0
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF__0
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_INST_TStateMachine_REF_TAwaiter_INST__TStateMachine_REF__0:
.loc 32 360 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf90023af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1568]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf9002fa1
.word 0xf94013a1
.word 0xf90033a1
.word 0xf940001e
.word 0xf9002ba0
.word 0xf94023a0
bl _p_539
.word 0xaa0003e3
.word 0xf9402ba0
.word 0xf9402fa1
.word 0xf94033a2
.word 0xd63f0060
.loc 32 361 0
.word 0xf94017b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_184:
.text
ut_389:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_
System_Runtime_CompilerServices_AsyncVoidMethodBuilder_AwaitUnsafeOnCompleted_TAwaiter_GSHAREDVT_TStateMachine_GSHAREDVT_TAwaiter_GSHAREDVT__TStateMachine_GSHAREDVT_:
.loc 32 161 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xf9003faf
.word 0xaa0003f8
.word 0xf9002ba1
.word 0xf9002fa2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1576]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf9403fa0
bl _p_540
.word 0xaa0003f7
.word 0xb98002e0
.word 0x91003c10
.word 0x928001f1
.word 0xf2bffff1
.word 0x8a110210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0x8b100230
.word 0xeb10023f
.word 0x54000080
.word 0xa9007e3f
.word 0x91004231
.word 0x17fffffc
.word 0x910003f6
.word 0xf90043bf
.word 0xd2800015
.word 0xf94033b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90043bf
.loc 32 162 0
.word 0xf94033b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x91002300
.word 0xf90067a0
bl _p_388
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xf94067a1
.word 0xaa0103f4
.word 0x350000c0
.word 0xaa1403e0
.word 0xd2800000
.word 0xaa1403f3
.word 0xd280001a
.word 0x1400000d
.word 0xaa1403e0
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_541
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa1403f3
.word 0xaa0003fa
.word 0xaa1303e0
.word 0xaa1a03e0
.word 0x910203a2
.word 0xaa1303e0
.word 0xaa1a03e1
bl _p_520
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xaa0003f5
.loc 32 166 0
.word 0xf94033b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x91002300
.word 0xf9400700
.word 0xb50013e0
.loc 32 168 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0x340009a0
.loc 32 169 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_541
.word 0xf9007fa0
.word 0xf94033b1
.word 0xf9422a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90063a0
.word 0xf94033b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1584]
.word 0xf9006ba0
.word 0xf9402fa0
.word 0xf90077a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1592]
.word 0xf9007ba0
.word 0xf9403fa0
bl _p_542
.word 0xaa0003e2
.word 0xf94077a0
.word 0xf9407ba1
.word 0xd2800003
.word 0xd2800003
.word 0xd2800003
.word 0xd2800004
bl _p_543
.word 0xf90073a0
.word 0xf94033b1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94073a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200
.word 0xf9006fa0
.word 0xf94033b1
.word 0xf942de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406ba0
.word 0xf9406fa1
bl _p_490
.word 0xf90067a0
.word 0xf94033b1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xf94067a2
.word 0xd2800000
.word 0xd2800000
.word 0xd2800003
bl _p_491
.loc 32 174 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9433631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x91002300
.word 0xf90047a0
.word 0xf9402fa1
.word 0xb9802ae0
.word 0xaa1603e2
.word 0x8b0002c0
.word 0xf9400ee2
.word 0xf94012e3
.word 0xd63f0060
.word 0xf94006f9
.word 0xd280005e
.word 0xeb1e033f
.word 0x54000320
.word 0xd280007e
.word 0xeb1e033f
.word 0x54000380
.word 0xf9403fa0
bl _p_544
bl _p_320
.word 0xb9802ae1
.word 0xaa1603e2
.word 0x8b0102c1
.word 0xf9006ba1
.word 0xf90063a0
.word 0x91004000
.word 0xf90067a0
.word 0xf9400ee0
.word 0xf94012e0
.word 0xf9403fa0
bl _p_542
.word 0xaa0003e2
.word 0xf94067a0
.word 0xf9406ba1
bl _mono_gsharedvt_value_copy
.word 0xf94063a0
.word 0xf9004ba0
.word 0x1400000e
.word 0xb9802ae0
.word 0xaa1603e1
.word 0x8b0002c0
.word 0xf9400000
.word 0xf9004ba0
.word 0x14000008
.word 0xf9400ae1
.word 0xb9802ae0
.word 0xaa1603e2
.word 0x8b0002c0
.word 0xd63f0020
.word 0xf9004ba0
.word 0x14000001
.word 0xf94043a2
.word 0xd2800000
.word 0xf94047a0
.word 0xf9404ba1
.word 0xd2800003
bl _p_521
.loc 32 177 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9443a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf90063a0
.word 0xaa1503e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1600]
.word 0xf90067a0
.word 0xf9403fa0
bl _p_545
.word 0xaa0003e2
.word 0xf94063a0
.word 0xf94067a1
.word 0xd10043ff
.word 0xa9007fff
.word 0x910003e4
.word 0xd2800003
.word 0xf9000095
.word 0xd2800003
bl _p_543
.loc 32 178 0
.word 0xf94033b1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9004fa0
.word 0xf9404fa0
.word 0xf90063a0
.loc 32 181 0
.word 0xf94033b1
.word 0xf944b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a0
.word 0xd2800001
.word 0xd2800001
bl _p_525
.loc 32 182 0
.word 0xf94033b1
.word 0xf944d631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9005fa0
.word 0xf9405fa0
.word 0xb4000060
.word 0xf9405fa0
bl _p_8
.word 0x14000001
.loc 32 183 0
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9451231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf94033b1
.word 0xf9452631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_185:
.text
ut_390:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_:
.loc 32 360 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1608]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1616]
bl _p_546
.loc 32 361 0
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_186:
.text
ut_391:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_EmptyClass__Scand__4_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_EmptyClass__Scand__4_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_EmptyClass__Scand__4_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_EmptyClass__Scand__4_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_EmptyClass__Scand__4_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_EmptyClass__Scand__4_:
.loc 32 360 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1624]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xf94013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1632]
bl _p_547
.loc 32 361 0
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_187:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_BOOL_get_Default
System_Collections_Generic_EqualityComparer_1_T_BOOL_get_Default:
.loc 36 32 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xf9001baf

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1640]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xd280001a
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_548
.word 0xf9400000
.word 0xaa0003fa
.loc 36 33 0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500043a
.loc 36 34 0
.word 0xf9400fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
bl _p_549
.word 0xf90033a0
.word 0xf9401ba0
bl _p_550
.word 0xf94033af
.word 0xd63f0000
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xaa0003fa
.loc 36 35 0
.word 0xf9400fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf90027a0
.word 0xf9401ba0
bl _p_548
.word 0xf90023a0
.word 0xf94027a1
.word 0xd50330bf
.word 0xf94023a0
.word 0xf9000001
.loc 36 37 0
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_188:
.text
	.align 4
	.no_dead_strip System_Array_InternalArray__get_Item_T_INST_int
System_Array_InternalArray__get_Item_T_INST_int:
.loc 31 173 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90037af
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1648]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0x9101c3a0
.word 0xd2800000
.word 0xf9003ba0
.word 0xf9003fa0
.word 0xf9401bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xb9801b20
.word 0xf90043a0
.word 0xf9401bb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0x6b00035f
.word 0x540001e3
.loc 31 174 0
.word 0xf9401bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xd28187e0
.word 0xd28187e0
bl _p_370
.word 0xaa0003e1
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 31 177 0
.word 0xf9401bb1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1a03e0
.word 0x9101c3a0
.word 0xf90043a0
.word 0xf94037a0
bl _p_551
.word 0xf94043a2
.word 0x93407f40
.word 0xd37cec00
.word 0x8b000320
.word 0x91008000
.word 0x910163a1
.word 0xf9400001
.word 0xf9002fa1
.word 0xf9400400
.word 0xf90033a0
.word 0x910163a0
.word 0xaa0203e0
.word 0xf9402fa1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94033a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 31 178 0
.word 0xf9401bb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x910123a0
.word 0xf9403ba0
.word 0xf90027a0
.word 0xf9403fa0
.word 0xf9002ba0
.word 0x910123a0
.word 0x910083a0
.word 0xf94027a0
.word 0xf90013a0
.word 0xf9402ba0
.word 0xf90017a0
.word 0xf9401bb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0xf94013a0
.word 0xf94017a1
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_189:
.text
ut_394:
add x0, x0, 16
b System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
.text
	.align 4
	.no_dead_strip System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
.loc 31 215 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9001faf
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1656]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9000320
.word 0xaa1903e1
.word 0xd349ff21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 31 216 0
.word 0xf94013b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800020
.word 0xf2bfffe0
.word 0x9280003e
.word 0xf2bffffe
.word 0xb9000b3e
.loc 31 217 0
.word 0xf94013b1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_18a:
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_TResult_BOOL_TResult_BOOL
System_Runtime_CompilerServices_AsyncTaskCache_CreateCacheableTask_TResult_BOOL_TResult_BOOL:
.loc 32 833 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9001faf
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1664]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0x910103a0
.word 0xf90023bf
.word 0xf9400fb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x394043a0
.word 0xf90033a0
.word 0xd2880000
.word 0x910103a0
.word 0xf90023bf
.word 0x910103a0
.word 0x9100c3a0
.word 0xf94023a0
.word 0xf9001ba0
.word 0xf9401fa0
bl _p_552
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf9401fa0
bl _p_552
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9002fa0
.word 0xf9401fa0
bl _p_553
.word 0xaa0003e5
.word 0xf9402fa0
.word 0xf94033a2
.word 0xf9002ba0
.word 0xd2800001
.word 0xd2880003
.word 0x9100c3a4
.word 0xf9401ba4
.word 0xd63f00a0
.word 0xf9400fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9400fb1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_18b:
.text
ut_396:
add x0, x0, 16
b System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_TResult_BOOL__ctor_System_Threading_Tasks_Task_1_TResult_BOOL_bool
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_TResult_BOOL__ctor_System_Threading_Tasks_Task_1_TResult_BOOL_bool
System_Runtime_CompilerServices_ConfiguredTaskAwaitable_1_TResult_BOOL__ctor_System_Threading_Tasks_Task_1_TResult_BOOL_bool:
.loc 35 466 0 prologue_end
.word 0xa9b67bfd
.word 0x910003fd
.word 0xf90033af
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1672]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9003ba0
.word 0xf9400fa0
.word 0xf90043a0
.word 0x394083a0
.word 0xf90047a0
.word 0x910143a0
.word 0xd2800000
.word 0xf9002ba0
.word 0xf9002fa0
.word 0x910143a0
.word 0xf9003fa0
.word 0xf94033a0
bl _p_554
.word 0xf9004ba0
.word 0xf94033a0
bl _p_555
.word 0xaa0003e3
.word 0xf9403fa0
.word 0xf94043a1
.word 0xf94047a2
.word 0xf9404baf
.word 0xd63f0060
.word 0x910143a0
.word 0x910103a0
.word 0xf9402ba0
.word 0xf90023a0
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba2
.word 0x910103a0
.word 0xaa0203e0
.word 0xf94023a1
.word 0xf9000041
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf94027a1
.word 0xf9000001
.loc 35 467 0
.word 0xf94017b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8ca7bfd
.word 0xd65f03c0

Lme_18c:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_TResult_BOOL__ctor
System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_0_TResult_BOOL__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1680]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18d:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_TResult_BOOL__ctor
System_Threading_Tasks_TaskFactory_1__c__DisplayClass35_1_TResult_BOOL__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1688]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18e:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_REF_CreateComparer
System_Collections_Generic_EqualityComparer_1_T_REF_CreateComparer:
.loc 36 49 0 prologue_end
.word 0xa9af7bfd
.word 0x910003fd
.word 0xf9000bb3
.word 0xa901dbb5
.word 0xa902e3b7
.word 0xa903ebb9
.word 0xf90033af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1696]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0xf94027b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_556
.word 0xf90037a0
.word 0xf94037a0
.word 0xb4000180
.word 0xf94037a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0xeb01001f
.word 0x10000011
.word 0x540041c1
.word 0xf94037a0
.word 0xaa0003fa
.loc 36 51 0
.word 0xf94027b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1712]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000440
.loc 36 52 0
.word 0xf94027b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1720]
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xf9006fa0
.word 0xf9406fa0
bl _p_557
.word 0xf94027b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf90073a0
.word 0xf9406fa0
.word 0xb4000140
.word 0xf9406fa0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94073a1
.word 0xeb01001f
.word 0x10000011
.word 0x54003b81
.word 0xf9406fa0
.word 0x140001cf
.loc 36 57 0
.word 0xf94027b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1728]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000420
.loc 36 58 0
.word 0xf94027b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1736]
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xaa0003f7
.word 0xaa1703e0
bl _p_559
.word 0xf94027b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf9006ba0
.word 0xb4000137
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9406ba1
.word 0xeb01001f
.word 0x10000011
.word 0x54003581
.word 0xaa1703e0
.word 0xaa1703e0
.word 0x1400019e
.loc 36 62 0
.word 0xf94027b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_560
.word 0xaa0003e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000400
.loc 36 64 0
.word 0xf94027b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1744]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xf90063a0
.word 0xf94027b1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf90067a0
.word 0xf94063a0
.word 0xb4000140
.word 0xf94063a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94067a1
.word 0xeb01001f
.word 0x10000011
.word 0x54002ee1
.word 0xf94063a0
.word 0x1400016a
.loc 36 70 0
.word 0xf94027b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940fc30
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9434e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x340011a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940a030
.word 0xd63f0200
.word 0xf9007fa0
.word 0xf94027b1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1752]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000ec0
.loc 36 71 0
.word 0xf94027b1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940a830
.word 0xd63f0200
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf943ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xd2800001
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54002789
.word 0xf9401000
.word 0xf90053a0
.word 0xb4000180
.word 0xf94053a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0xeb01001f
.word 0x10000011
.word 0x54002561
.word 0xf94053a0
.word 0xaa0003f9
.loc 36 72 0
.word 0xf94027b1
.word 0xf9445231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1760]
.word 0xf90087a0
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xd2800021
bl _p_204
.word 0xf90057a0
.word 0xf94057a0
.word 0xf90083a0
.word 0xf94057a3
.word 0xd2800000
.word 0xaa1903e2
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94083a1
.word 0xf94087a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940b050
.word 0xd63f0200
.word 0xf9007fa0
.word 0xf94027b1
.word 0xf944d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa1903e1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9450231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000400
.loc 36 74 0
.word 0xf94027b1
.word 0xf9451a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1776]
.word 0xaa1903e1
.word 0xaa1903e1
bl _p_561
.word 0xf9005ba0
.word 0xf94027b1
.word 0xf9454631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf9005fa0
.word 0xf9405ba0
.word 0xb4000140
.word 0xf9405ba0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9405fa1
.word 0xeb01001f
.word 0x10000011
.word 0x54001b41
.word 0xf9405ba0
.word 0x140000cd
.loc 36 82 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf945a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9410c30
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf945d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34001480
.loc 36 83 0
.word 0xf94027b1
.word 0xf945ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_562
.word 0xf90083a0
.word 0xf94027b1
.word 0xf9460a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
bl _p_563
.word 0x93407c00
.word 0xf9007fa0
.word 0xf94027b1
.word 0xf9462a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
.word 0xf9007ba0
.word 0xaa0003f8
.loc 36 88 0
.word 0xf94027b1
.word 0xf9464631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa0003e1
.word 0x51001416
.word 0xd280011e
.word 0x6b1e02df
.word 0x54001062
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1784]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 36 91 0
.word 0xf94027b1
.word 0xf9468e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1792]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xf90043a0
.word 0xf94027b1
.word 0xf946ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf90047a0
.word 0xf94043a0
.word 0xb4000140
.word 0xf94043a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94047a1
.word 0xeb01001f
.word 0x10000011
.word 0x54000fa1
.word 0xf94043a0
.word 0x14000070
.loc 36 97 0
.word 0xf94027b1
.word 0xf9470a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1800]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xaa0003f5
.word 0xf94027b1
.word 0xf9473631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf9003ba0
.word 0xb4000135
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9403ba1
.word 0xeb01001f
.word 0x10000011
.word 0x54000c01
.word 0xaa1503e0
.word 0xaa1503e0
.word 0x14000052
.loc 36 106 0
.word 0xf94027b1
.word 0xf9478231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1808]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xaa0003f3
.word 0xf94027b1
.word 0xf947ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf9003fa0
.word 0xb4000133
.word 0xf9400260
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9403fa1
.word 0xeb01001f
.word 0x10000011
.word 0x54000841
.word 0xaa1303e0
.word 0xaa1303e0
.word 0x14000034
.loc 36 113 0
.word 0xf94027b1
.word 0xf947fa31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1816]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xf9004ba0
.word 0xf94027b1
.word 0xf9482631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_558
.word 0xf9004fa0
.word 0xf9404ba0
.word 0xb4000140
.word 0xf9404ba0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9404fa1
.word 0xeb01001f
.word 0x10000011
.word 0x54000441
.word 0xf9404ba0
.word 0x14000015
.loc 36 120 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9488631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_564
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xf9007ba0
bl _p_565
.word 0xf94027b1
.word 0xf948b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf94027b1
.word 0xf948c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb3
.word 0xa941dbb5
.word 0xa942e3b7
.word 0xa943ebb9
.word 0x910003bf
.word 0xa8d17bfd
.word 0xd65f03c0
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_18f:
.text
ut_400:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_REF_get_Task
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_REF_get_Task
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_TResult_REF_get_Task:
.loc 32 574 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xf90023af
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1824]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa0003f9
.loc 32 575 0
.word 0xf94017b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb50004f9
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf94023a0
bl _p_566
.word 0x3980b410
.word 0xb5000050
bl _p_24
.word 0xf94023a0
bl _p_566
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9002ba0
bl _p_567
.word 0xf94017b1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e1
.word 0xaa1803f9
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 576 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9415631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_190:
.text
ut_401:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_Create:
.loc 32 444 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba8

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1832]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0x910123a0
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0xf9400fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0xd2800000
.word 0xf90027a0
.word 0xf9002ba0
.word 0xf9002fa0
.word 0x910123a0
.word 0x9100c3a0
.word 0xf94027a0
.word 0xf9001ba0
.word 0xf9402ba0
.word 0xf9001fa0
.word 0xf9402fa0
.word 0xf90023a0
.word 0xf9400ba0
.word 0x9100c3a1
.word 0xaa0003e1
.word 0xaa0003e1
.word 0xf9401ba1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002000
.word 0xf9401fa1
.word 0xf9000001
.word 0xd349fc02
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e
.word 0x91002001
.word 0xf94023a0
.word 0xf9000020
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf9400fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_191:
.text
ut_402:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.loc 32 485 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1840]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
bl _p_383
.loc 32 486 0
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_192:
.text
ut_403:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_Task:
.loc 32 574 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xf90013ba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1848]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800019
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa0003f9
.loc 32 575 0
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000479
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90023a0
bl _p_568
.word 0xf94017b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1803e1
.word 0xaa1803f9
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 576 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf94017b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0xf94013ba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_193:
.text
ut_404:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_VoidTaskResult:
.loc 32 590 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1864]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xaa0003f9
.loc 32 591 0
.word 0xf9401bb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000539
.loc 32 593 0
.word 0xf9401bb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0x910083a0
.word 0x910143a0
.word 0x398083a0
.word 0x390143a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1a03e0
.word 0x910143a1
.word 0xf9402ba1
bl _p_569
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0xf9000b40
.word 0x91004341
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 595 0
.word 0xf9401bb1
.word 0xf9411e31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000073
.loc 32 599 0
.word 0xf9401bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x340002a0
.loc 32 600 0
.word 0xf9401bb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf940033e
bl _p_389
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xd2800020
.word 0xd2800000
.word 0xd2800022
bl _p_390
.loc 32 603 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941c631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x34000220
.loc 32 605 0
.word 0xf9401bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf940033e
bl _p_389
.word 0x93407c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9421231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_391
.loc 32 608 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910083a0
.word 0x910123a0
.word 0x398083a0
.word 0x390123a0
.word 0xaa1903e0
.word 0x910123a1
.word 0xf94027a1
.word 0xf940033e
bl _p_570
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9427a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x350002e0
.loc 32 610 0
.word 0xf9401bb1
.word 0xf9429231
.word 0xb4000051
.word 0xd63f0220
.word 0xd292a2e0
.word 0xf2a00020
.word 0xd292a2e0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf942be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a1
.word 0xd2801d60
.word 0xf2a04000
.word 0xd2801d60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 613 0
.word 0xf9401bb1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf942fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_194:
.text
ut_405:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult:
.loc 32 628 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1880]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0x910103a0
.word 0x390103bf
.word 0xf94013b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xf9002ba0
.loc 32 629 0
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xb5000300
.loc 32 631 0
.word 0xf94013b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400fa0
.word 0xf9000b20
.word 0x91004321
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 32 632 0
.word 0xf94013b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.loc 32 636 0
.word 0xf94013b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910103a0
.word 0x390103bf
.word 0x910103a0
.word 0x9100e3a0
.word 0x398103a0
.word 0x3900e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1903e0
.word 0x9100e3a1
.word 0xf9401fa1
bl _p_571
.loc 32 638 0
.word 0xf94013b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_195:
.text
ut_406:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetException_System_Exception:
.loc 32 649 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xa9025fb6
.word 0xa90367b8
.word 0xf90023ba
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1888]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd2800018
.word 0xd2800017
.word 0xf94027b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xb500023a
.word 0xf94027b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2926480
.word 0xf2a00020
.word 0xd2926480
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 653 0
.word 0xf94027b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf9400b20
.word 0xaa0003f8
.loc 32 654 0
.word 0xf94027b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xb5000258
.loc 32 657 0
.word 0xf94027b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1903e0
bl _p_572
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f8
.loc 32 661 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03f6
.word 0xaa1a03f5
.word 0xeb1f035f
.word 0x54000160
.word 0xf94002c0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #680]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800015
.word 0xaa1503e0
.word 0xaa1503f7
.loc 32 662 0
.word 0xf94027b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000215
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e1
.word 0xf940031e
bl _p_573
.word 0x53001c00
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xaa0003f4
.word 0x14000017
.word 0xaa1803e0
.word 0xaa1703e0
.word 0x910183a0
.word 0xf90037a0
.word 0xaa1703e0
.word 0xf94002fe
bl _p_401
.word 0xf94037be
.word 0xf90003c0
.word 0xf94027b1
.word 0xf9421631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0x910183a1
.word 0xf94033a1
.word 0xaa1703e2
.word 0xf940031e
bl _p_574
.word 0x53001c00
.word 0xaa0003f4
.loc 32 673 0
.word 0xaa1403e0
.word 0xf94027b1
.word 0xf9424e31
.word 0xb4000051
.word 0xd63f0220
.word 0x350002f4
.loc 32 675 0
.word 0xf94027b1
.word 0xf9426231
.word 0xb4000051
.word 0xd63f0220
.word 0xd292a2e0
.word 0xf2a00020
.word 0xd292a2e0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf9003ba0
.word 0xf94027b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xd2801d60
.word 0xf2a04000
.word 0xd2801d60
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 32 677 0
.word 0xf94027b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf942ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xa9425fb6
.word 0xa94367b8
.word 0xf94023ba
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_196:
.text
ut_407:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetNotificationForWaitCompletion_bool
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetNotificationForWaitCompletion_bool
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_SetNotificationForWaitCompletion_bool:
.loc 32 693 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1896]
.word 0xf90013b0
.word 0xf9400a11
.word 0xf90017b1
.word 0xf94013b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
bl _p_572
.word 0xf90023a0
.word 0xf94013b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a2
.word 0x394063a1
.word 0xaa0203e0
.word 0xf940005e
bl _p_405
.loc 32 694 0
.word 0xf94013b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_197:
.text
ut_408:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_ObjectIdForDebugger
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_ObjectIdForDebugger
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_get_ObjectIdForDebugger:
.loc 32 704 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1904]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
bl _p_572
.word 0xf9001ba0
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401ba0
.word 0xf9400fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_198:
.text
ut_409:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetTaskForResult_System_Threading_Tasks_VoidTaskResult:
.loc 32 737 0 prologue_end
.word 0xa9af7bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #1912]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0x9103c3a0
.word 0x3903c3bf
.word 0xd280001a
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0x9103c3a0
.word 0x3903c3bf
.word 0x9103c3a0
.word 0x9103a3a0
.word 0x3983c3a0
.word 0x3903a3a0
.word 0x14000001
.loc 32 752 0
.word 0xf9401fb1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1928]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340008a0
.loc 32 754 0
.word 0xf9401fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910383a0
.word 0x3980a3a0
.word 0x390383a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910383a1
.word 0x91004001
.word 0x398383a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54006141
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #720]
.word 0xeb02003f
.word 0x10000011
.word 0x54006041
.word 0x91004001
.word 0x39404000
.word 0xf90083a0
.loc 32 755 0
.word 0xf9401fb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x350000e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #728]
.word 0xf9400000
.word 0xaa0003f9
.word 0x14000006

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #736]
.word 0xf9400000
.word 0xaa0003f9
.loc 32 756 0
.word 0xaa1903e0
.word 0xf9401fb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1944]
.word 0xaa1903e0
bl _p_575
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x140002d5
.loc 32 759 0
.word 0xf9401fb1
.word 0xf941ee31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1952]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9422231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x34000b20
.loc 32 764 0
.word 0xf9401fb1
.word 0xf9423a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910363a0
.word 0x3980a3a0
.word 0x390363a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910363a1
.word 0x91004001
.word 0x398363a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54005661
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #752]
.word 0xeb02003f
.word 0x10000011
.word 0x54005561
.word 0x91004001
.word 0xb9801000
.word 0xaa0003fa
.loc 32 765 0
.word 0xf9401fb1
.word 0xf942c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800120
.word 0xd280013e
.word 0x6b1e035f
.word 0x54004f8a
.word 0xaa1a03e0
.word 0x92800000
.word 0xf2bfffe0
.word 0x9280001e
.word 0xf2bffffe
.word 0x6b1e035f
.word 0x54004eab
.loc 32 768 0
.word 0xf9401fb1
.word 0xf9430231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #760]
.word 0xf9400000
.word 0xaa1a03e1
.word 0x9280001e
.word 0xf2bffffe
.word 0x4b1e0341
.word 0x93407c21
.word 0xb9801802
.word 0xeb01005f
.word 0x10000011
.word 0x54005149
.word 0xd37df021
.word 0x8b010000
.word 0x91008000
.word 0xf9400000
.word 0xf90087a0
.loc 32 769 0
.word 0xf9401fb1
.word 0xf9435a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94087a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1944]
bl _p_575
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9438231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x1400026a
.loc 32 773 0
.word 0xf9401fb1
.word 0xf9439a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1960]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf943ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x910343a0
.word 0x3980a3a0
.word 0x390343a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910343a1
.word 0x91004001
.word 0x398343a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54004981
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #776]
.word 0xeb02003f
.word 0x10000011
.word 0x54004881
.word 0x91004001
.word 0xb9401000
.word 0x34003fe0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1968]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9448231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x910323a0
.word 0x3980a3a0
.word 0x390323a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910323a1
.word 0x91004001
.word 0x398323a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540043e1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #792]
.word 0xeb02003f
.word 0x10000011
.word 0x540042e1
.word 0x91004001
.word 0x39404000
.word 0x34003a40

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1976]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9453631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x910303a0
.word 0x3980a3a0
.word 0x390303a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910303a1
.word 0x91004001
.word 0x398303a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54003e41
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #808]
.word 0xeb02003f
.word 0x10000011
.word 0x54003d41
.word 0x91004001
.word 0x39804000
.word 0x340034a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1984]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf945ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x9102e3a0
.word 0x3980a3a0
.word 0x3902e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x9102e3a1
.word 0x91004001
.word 0x3982e3a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x540038a1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #824]
.word 0xeb02003f
.word 0x10000011
.word 0x540037a1
.word 0x91004001
.word 0x79402000
.word 0x34002f00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1992]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9469e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x34000820

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #840]
.word 0x9102a3a1
.word 0xb9800001
.word 0xb900aba1
.word 0xb9800401
.word 0xb900afa1
.word 0xb9800801
.word 0xb900b3a1
.word 0xb9800c00
.word 0xb900b7a0
.word 0x9100a3a0
.word 0x910283a0
.word 0x3980a3a0
.word 0x390283a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910283a1
.word 0x91004001
.word 0x398283a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54003181
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #848]
.word 0xeb02003f
.word 0x10000011
.word 0x54003081
.word 0x91004000
.word 0x910243a1
.word 0xb9800001
.word 0xb90093a1
.word 0xb9800401
.word 0xb90097a1
.word 0xb9800801
.word 0xb9009ba1
.word 0xb9800c00
.word 0xb9009fa0
.word 0x9102a3a0
.word 0xf94057a0
.word 0xf9405ba1
.word 0x910243a2
.word 0xf9404ba2
.word 0xf9404fa3
bl _p_412
.word 0x53001c00
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9479e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x35002520

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2000]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf947da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x910223a0
.word 0x3980a3a0
.word 0x390223a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910223a1
.word 0x91004001
.word 0x398223a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002921
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #864]
.word 0xeb02003f
.word 0x10000011
.word 0x54002821
.word 0x91004001
.word 0xf9400800
.word 0xb4001f80

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2008]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9488e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x910203a0
.word 0x3980a3a0
.word 0x390203a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x910203a1
.word 0x91004001
.word 0x398203a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54002381
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #880]
.word 0xeb02003f
.word 0x10000011
.word 0x54002281
.word 0x91004001
.word 0xf9400800
.word 0xb40019e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2016]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf9494231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x9101e3a0
.word 0x3980a3a0
.word 0x3901e3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x9101e3a1
.word 0x91004001
.word 0x3981e3a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001de1
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #896]
.word 0xeb02003f
.word 0x10000011
.word 0x54001ce1
.word 0x91004001
.word 0x79802000
.word 0x34001440

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2024]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf949f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x340003e0
.word 0x9100a3a0
.word 0x9101c3a0
.word 0x3980a3a0
.word 0x3901c3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0x9101c3a1
.word 0x91004001
.word 0x3981c3a2
.word 0x39000022
.word 0xf9400001
.word 0x3940b022
.word 0xeb1f005f
.word 0x10000011
.word 0x54001841
.word 0xf9400021
.word 0xf9400021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #912]
.word 0xeb02003f
.word 0x10000011
.word 0x54001741
.word 0x91004001
.word 0x79402000
.word 0x34000ea0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2032]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf94aaa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x34000580
.word 0xd2800000
.word 0x93407c00
.word 0xf90087a0
.word 0x9100a3a0
.word 0x9101a3a0
.word 0x3980a3a0
.word 0x3901a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0xaa0003e1
.word 0xf94087a0
.word 0x9101a3a2
.word 0x91004022
.word 0x3981a3a3
.word 0x39000043
.word 0xf9400022
.word 0x3940b043
.word 0xeb1f007f
.word 0x10000011
.word 0x54001201
.word 0xf9400042
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #928]
.word 0xeb03005f
.word 0x10000011
.word 0x54001101
.word 0x91004022
.word 0xf9400821
bl _p_413
.word 0x53001c00
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf94b5631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x35000760

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1920]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2040]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf94b9231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x34000960
.word 0xd2800000
.word 0x2a0003e0
.word 0xf90087a0
.word 0x9100a3a0
.word 0x910183a0
.word 0x3980a3a0
.word 0x390183a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1936]
.word 0xd2800221
.word 0xd2800221
bl _p_2
.word 0xaa0003e1
.word 0xf94087a0
.word 0x910183a2
.word 0x91004022
.word 0x398183a3
.word 0x39000043
.word 0xf9400022
.word 0x3940b043
.word 0xeb1f007f
.word 0x10000011
.word 0x54000ac1
.word 0xf9400042
.word 0xf9400042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #944]
.word 0xeb03005f
.word 0x10000011
.word 0x540009c1
.word 0x91004022
.word 0xf9400821
bl _p_414
.word 0x53001c00
.word 0xf90083a0
.word 0xf9401fb1
.word 0xf94c3e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0x34000400
.loc 32 786 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf94c6631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2048]
.word 0xf9400000
.word 0x1400002e
.loc 32 789 0
.word 0xf9401fb1
.word 0xf94c8a31
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910163a0
.word 0x3980a3a0
.word 0x390163a0
.word 0x1400000a
.loc 32 791 0
.word 0xf9401fb1
.word 0xf94cae31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2048]
.word 0xf9400000
.word 0x1400001c
.loc 32 795 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf94ce231
.word 0xb4000051
.word 0xd63f0220
.word 0x9100a3a0
.word 0x910143a0
.word 0x3980a3a0
.word 0x390143a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90083a0
.word 0x910143a1
.word 0xf9402ba1
bl _p_576
.word 0xf9401fb1
.word 0xf94d2a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
.word 0xf9401fb1
.word 0xf94d3e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8d17bfd
.word 0xd65f03c0
.word 0xd2801d40
.word 0xaa1103e1
bl _p_9
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_199:
.text
ut_410:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult__cctor:
.loc 32 427 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2056]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0x9100c3a0
.word 0x3900c3bf
.word 0xf9400bb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0x9100c3a0
.word 0x3900c3bf
.word 0x9100c3a0
.word 0x9100a3a0
.word 0x3980c3a0
.word 0x3900a3a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2064]
.word 0x9100a3a0
.word 0xf94017a0
bl _p_577
.word 0xf90023a0
.word 0xf9400bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2048]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_19a:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor:
.loc 33 91 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2072]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0xf9400fb1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
bl _p_422
.loc 33 93 0
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_19b:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_object_System_Threading_Tasks_TaskCreationOptions:
.loc 33 97 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2080]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0xb98023a2
.word 0xd2800023
.word 0xd2800023
bl _p_423
.loc 33 99 0
.word 0xf94017b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_19c:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_Tasks_VoidTaskResult:
.loc 33 104 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2088]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0x910143a0
.word 0xf9002bbf
.word 0xf94017b1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xd2800000
.word 0x910143a0
.word 0xf9002bbf
.word 0x910143a0
.word 0x910123a0
.word 0xf9402ba0
.word 0xf90027a0
.word 0xaa1a03e0
.word 0xd2800001
.word 0xd2800002
.word 0x910123a3
.word 0xf94027a3
bl _p_424
.loc 33 106 0
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x910103a0
.word 0x398063a0
.word 0x390103a0
.word 0x910103a0
.word 0x91012340
.word 0x398103a1
.word 0x39000001
.loc 33 107 0
.word 0xf94017b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_19d:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_bool_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_TaskCreationOptions_System_Threading_CancellationToken:
.loc 33 110 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf9001ba3
.word 0xf9001fa4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2096]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf94027b1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1903e0
.word 0xb98033a2
.word 0x9100e3a0
.word 0x9101a3a0
.word 0xf9401fa0
.word 0xf90037a0
.word 0xaa1803e0
.word 0xaa1903e1
.word 0x9101a3a3
.word 0xf94037a3
bl _p_424
.loc 33 112 0
.word 0xf94027b1
.word 0xf940a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x350001d9
.loc 33 114 0
.word 0xf94027b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0x910083a0
.word 0x910183a0
.word 0x398083a0
.word 0x390183a0
.word 0x910183a0
.word 0x91012300
.word 0x398183a1
.word 0x39000001
.loc 33 116 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9410231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_19e:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions:
.loc 33 322 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bb7
.word 0xf9000fba
.word 0xaa0003f7
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2104]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xb90063bf
.word 0xf94023b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf94013a0
.word 0xf9003ba0
.word 0xf94017a0
.word 0xf9003fa0
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_425
.word 0xf90043a0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xf94043a3
.word 0x9100c3a0
.word 0x910163a0
.word 0xf9401ba0
.word 0xf9002fa0
.word 0xaa1a03e0
.word 0xd2800000
.word 0xd2800000
.word 0xaa1703e0
.word 0x910163a4
.word 0xf9402fa4
.word 0xaa1a03e5
.word 0xd2800006
.word 0xd2800007
bl _p_578
.loc 33 325 0
.word 0xf94023b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xd280003e
.word 0xb90063be
.loc 33 326 0
.word 0xf94023b1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x910183a1
.word 0xaa1703e0
bl _p_427
.loc 33 327 0
.word 0xf94023b1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb7
.word 0xf9400fba
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_19f:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 333 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xaa0003f4
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001fa4
.word 0xf90023a5
.word 0xf90027a6
.word 0xf9002ba7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2112]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf9400fa1
.word 0xf94013a2
.word 0x9100a3a0
.word 0x9101c3a0
.word 0xf94017a0
.word 0xf9003ba0
.word 0xb9803ba4
.word 0xb98043a5
.word 0xf94027a6
.word 0xaa1403e0
.word 0x9101c3a3
.word 0xf9403ba3
bl _p_579
.loc 33 336 0
.word 0xf9402fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xf9402ba1
.word 0xaa1403e0
bl _p_427
.loc 33 337 0
.word 0xf9402fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf940ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb4
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_1a0:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
.loc 33 352 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf90023a4
.word 0xaa0503f9
.word 0xf90027a6

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2120]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf9402bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
.word 0xd2800002
.word 0xf94017a3
.word 0x9100c3a2
.word 0x9101a3a2
.word 0xf9401ba2
.word 0xf90037a2
.word 0xb98043a5
.word 0xaa1903e2
.word 0xf94027a7
.word 0xd2800002
.word 0x9101a3a4
.word 0xf94037a4
.word 0xaa1903e6
bl _p_429
.loc 33 354 0
.word 0xf9402bb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd281001e
.word 0xa1e0320
.word 0x340003c0
.loc 33 356 0
.word 0xf9402bb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf9003ba0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf9003fa0
.word 0xf9402bb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba1
.word 0xf9403fa2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 358 0
.word 0xf9402bb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_1a1:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 363 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb3
.word 0xf9000fbc
.word 0x910203bc
.word 0xaa0003f3
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90027a5
.word 0xf9002ba6
.word 0xf9002fa7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2128]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf94033b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0x9100e3a0
.word 0x9101e3a0
.word 0xf9401fa0
.word 0xf9003fa0
.word 0xb9804ba5
.word 0xb98053a6
.word 0xf9402fa7
.word 0xaa1303e0
.word 0x9101e3a4
.word 0xf9403fa4
bl _p_578
.loc 33 365 0
.word 0xf94033b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1303e0
.word 0xf9400381
.word 0xaa1303e0
bl _p_427
.loc 33 366 0
.word 0xf94033b1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf940f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb3
.word 0xf9400fbc
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_1a2:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Delegate_object_System_Threading_Tasks_Task_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler:
.loc 33 382 0 prologue_end
.word 0xa9b77bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xf9001ba3
.word 0xf9001fa4
.word 0xf90027a5
.word 0xaa0603f9
.word 0xf9002ba7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2136]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
.word 0xf94017a2
.word 0xf9401ba3
.word 0x9100e3a4
.word 0x9101c3a4
.word 0xf9401fa4
.word 0xf9003ba4
.word 0xb9804ba5
.word 0xaa1903e4
.word 0xf9402ba7
.word 0x9101c3a4
.word 0xf9403ba4
.word 0xaa1903e6
bl _p_429
.loc 33 384 0
.word 0xf9402fb1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd281001e
.word 0xa1e0320
.word 0x340003c0
.loc 33 386 0
.word 0xf9402fb1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf90043a0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf9412231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 388 0
.word 0xf9402fb1
.word 0xf9415231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9416231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0

Lme_1a3:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 395 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xf9000bb4
.word 0xf9000fb6
.word 0xa90267b8
.word 0xf9001ba0
.word 0xaa0103f6
.word 0xf9001fa2
.word 0xf90027a3
.word 0xaa0403f8
.word 0xaa0503f9
.word 0xf9002ba6

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2144]
.word 0xf9002fb0
.word 0xf9400a11
.word 0xf90033b1
.word 0xf9402fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb5000236
.loc 33 397 0
.word 0xf9402fb1
.word 0xf9408e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b560
.word 0xf2a00020
.word 0xd291b560
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 399 0
.word 0xf9402fb1
.word 0xf940ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000239
.loc 33 401 0
.word 0xf9402fb1
.word 0xf940e631
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b7a0
.word 0xf2a00020
.word 0xd291b7a0
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 403 0
.word 0xf9402fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd281001e
.word 0xa1e0300
.word 0x340003c0
.loc 33 406 0
.word 0xf9402fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf90043a0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90047a0
.word 0xf9402fb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 410 0
.word 0xf9402fb1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xf9401ba0
.word 0xf9004ba0
.word 0x9100e3a0
.word 0x9101c3a0
.word 0xf9401fa0
.word 0xf9003ba0
.word 0xb9804ba0
.word 0xf9004fa0
.word 0xaa1803e0
.word 0xd284001e
.word 0x2a1e0300
.word 0xf90053a0
.word 0xaa1903e0
.word 0xf9402ba0
.word 0xf90057a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9404ba2
.word 0xf9404fa4
.word 0xf94053a5
.word 0xf94057a7
.word 0xf90047a0
.word 0xaa1603e1
.word 0x9101c3a3
.word 0xf9403ba3
.word 0xaa1903e6
bl _p_580
.loc 33 412 0
.word 0xf9402fb1
.word 0xf9424a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xf90043a0
.word 0xaa1403e0
.word 0xd2800000
.word 0xaa1403e0
.word 0xd2800001
.word 0xf940029e
bl _p_433
.loc 33 413 0
.word 0xf9402fb1
.word 0xf9428231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf9402fb1
.word 0xf9429631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb4
.word 0xf9400fb6
.word 0xa94267b8
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_1a4:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Threading_Tasks_Task_System_Func_2_object_System_Threading_Tasks_VoidTaskResult_object_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_InternalTaskOptions_System_Threading_Tasks_TaskScheduler_System_Threading_StackCrawlMark_:
.loc 33 420 0 prologue_end
.word 0xa9b47bfd
.word 0x910003fd
.word 0xd2800210
.word 0x910003f1
.word 0xcb100231
.word 0x9100023f
.word 0xf9000bb3
.word 0xf9000fb5
.word 0xa90267b8
.word 0xf9001ba0
.word 0xaa0103f5
.word 0xf9001fa2
.word 0xf90023a3
.word 0xf9002ba4
.word 0xaa0503f8
.word 0xaa0603f9
.word 0xf9002fa7

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2152]
.word 0xf90033b0
.word 0xf9400a11
.word 0xf90037b1
.word 0xf94033b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033b1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xb5000235
.loc 33 422 0
.word 0xf94033b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b560
.word 0xf2a00020
.word 0xd291b560
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 424 0
.word 0xf94033b1
.word 0xf940e231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb5000239
.loc 33 426 0
.word 0xf94033b1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xd291b7a0
.word 0xf2a00020
.word 0xd291b7a0
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 33 428 0
.word 0xf94033b1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xd281001e
.word 0xa1e0300
.word 0x340003c0
.loc 33 430 0
.word 0xf94033b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2919cc0
.word 0xf2a00020
.word 0xd2919cc0
.word 0xf2a00020
bl _p_370
.word 0xf90043a0
.word 0xd291a0c0
.word 0xf2a00020
.word 0xd291a0c0
.word 0xf2a00020
bl _p_370
bl _p_394
.word 0xf90047a0
.word 0xf94033b1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a1
.word 0xf94047a2
.word 0xd2801260
.word 0xf2a04000
.word 0xd2801260
.word 0xf2a04000
bl _mono_create_corlib_exception_2
bl _p_8
.loc 33 434 0
.word 0xf94033b1
.word 0xf941ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf9401fa0
.word 0xf9004ba0
.word 0xf9401ba0
.word 0xf9004fa0
.word 0x910103a0
.word 0x9101e3a0
.word 0xf94023a0
.word 0xf9003fa0
.word 0xb98053a0
.word 0xf90053a0
.word 0xaa1803e0
.word 0xd284001e
.word 0x2a1e0300
.word 0xf90057a0
.word 0xaa1903e0
.word 0xf9402fa0
.word 0xf9005ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf9404ba2
.word 0xf9404fa3
.word 0xf94053a5
.word 0xf94057a6
.word 0xf9405ba9
.word 0xf90047a0
.word 0xaa1503e1
.word 0x9101e3a4
.word 0xf9403fa4
.word 0xaa1903e7
.word 0xf90003e9
bl _p_581
.loc 33 436 0
.word 0xf94033b1
.word 0xf9426e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94047a0
.word 0xaa0003f3
.word 0xaa1303e0
.word 0xf90043a0
.word 0xaa1303e0
.word 0xd2800000
.word 0xaa1303e0
.word 0xd2800001
.word 0xf940027e
bl _p_433
.loc 33 437 0
.word 0xf94033b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xf94033b1
.word 0xf942ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb3
.word 0xf9400fb5
.word 0xa94267b8
.word 0x910003bf
.word 0xa8cc7bfd
.word 0xd65f03c0

Lme_1a5:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetResult_System_Threading_Tasks_VoidTaskResult:
.loc 33 463 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9016bb9
.word 0xaa0003fa
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2160]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xd2800019
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_436
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000100
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0x14000071
.loc 33 471 0
.word 0xf9401bb1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800000
.word 0xf2a08000
.word 0xd2800000
.word 0xf2a0ac00
.word 0xaa1a03e0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_437
.word 0x53001c00
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0x34000a80
.loc 33 474 0
.word 0xf9401bb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910083a0
.word 0x910123a0
.word 0x398083a0
.word 0x390123a0
.word 0x910123a0
.word 0x91012340
.word 0x398123a1
.word 0x39000001
.loc 33 483 0
.word 0xf9401bb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xeb1f035f
.word 0x10000011
.word 0x540009a0
.word 0x91011340
.word 0xf90033a0
.word 0xaa1a03e0
.word 0xb9804741
.word 0xd50330bf
.word 0xf94033a0
.word 0xd280001e
.word 0xf2a0201e
.word 0x2a1e0021
.word 0x885f7c10
.word 0x8811fc01
.word 0x35ffffd1
.word 0xd50330bf
.word 0xaa1003e0
.word 0xf9401bb1
.word 0xf9419e31
.word 0xb4000051
.word 0xd63f0220
.loc 33 485 0
.word 0xf9401bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401f40
.word 0xf9002fa0
.word 0xd50330bf
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xaa0003f9
.loc 33 486 0
.word 0xf9401bb1
.word 0xf941da31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xaa0003e1
.word 0xb4000120
.word 0xf9401bb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
.word 0xf940033e
bl _p_438
.loc 33 488 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_439
.loc 33 490 0
.word 0xf9401bb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0xd2800020
.word 0x14000007
.loc 33 493 0
.word 0xf9401bb1
.word 0xf9425e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xd2800000
.word 0xf9401bb1
.word 0xf9427631
.word 0xb4000051
.word 0xd63f0220
.word 0xa9416bb9
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9

Lme_1a6:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_DangerousSetResult_System_Threading_Tasks_VoidTaskResult:
.loc 33 507 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2168]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9401740
.word 0xb4000300
.loc 33 509 0
.word 0xf94017b1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x910123a0
.word 0x398063a0
.word 0x390123a0
.word 0xaa1a03e0
.word 0x910123a1
.word 0xf94027a1
bl _p_570
.word 0x53001c00
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.loc 33 513 0
.word 0xf94017b1
.word 0xf940be31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000023
.loc 33 516 0
.word 0xf94017b1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0x910063a0
.word 0x910103a0
.word 0x398063a0
.word 0x390103a0
.word 0x910103a0
.word 0x91012340
.word 0x398103a1
.word 0x39000001
.loc 33 517 0
.word 0xf94017b1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xb9804740
.word 0xf9002fa0
.word 0xd50330bf
.word 0xf9402fa0
.word 0xd280001e
.word 0xf2a0201e
.word 0x2a1e0000
.word 0xf9002ba0
.word 0xd50330bf
.word 0xf9402ba0
.word 0xb9004740
.loc 33 519 0
.word 0xf94017b1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1a7:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Result:
.loc 33 532 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2176]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_441
.word 0x53001c00
.word 0xf90033a0
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x35000160
.word 0xaa1a03e0
.word 0x91012340
.word 0x910103a1
.word 0x39800000
.word 0x390103a0
.word 0x910103a0
.word 0x910063a0
.word 0x398103a0
.word 0x390063a0
.word 0x14000012
.word 0xaa1a03e0
.word 0xd2800020
.word 0x910123a0
.word 0xf9002ba0
.word 0xaa1a03e0
.word 0xd2800021
bl _p_582
.word 0xf9402bbe
.word 0xf90003c0
.word 0xf94017b1
.word 0xf940de31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0x910063a0
.word 0x398123a0
.word 0x390063a0
.word 0xf94017b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1a8:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_ResultOnSuccess:
.loc 33 548 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2184]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a0
.word 0x91012000
.word 0x910103a1
.word 0x39800000
.word 0x390103a0
.word 0x910103a0
.word 0x910043a0
.word 0x398103a0
.word 0x390043a0
.word 0xf94017b1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1a9:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetResultCore_bool:
.loc 33 556 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xaa0003f9
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2192]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0x910163a0
.word 0xf9002fbf
.word 0xf9401bb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_436
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x35000320
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x92800000
.word 0xf2bfffe0
.word 0x910163a0
.word 0xf9002fbf
.word 0x910163a0
.word 0x910143a0
.word 0xf9402fa0
.word 0xf9002ba0
.word 0xaa1903e0
.word 0x92800001
.word 0xf2bfffe1
.word 0x910143a2
.word 0xf9402ba2
bl _p_443
.word 0x53001c00
.word 0xf9401bb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.loc 33 559 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9410e31
.word 0xb4000051
.word 0xd63f0220
.word 0x3940a3a0
.word 0x340001a0
.word 0xf9401bb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_444
.word 0x53001c00
.word 0xf9401bb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.loc 33 562 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9416631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_445
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401bb1
.word 0xf9418a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x35000140
.word 0xf9401bb1
.word 0xf941a231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800020
.word 0xaa1903e0
.word 0xd2800021
bl _p_446
.loc 33 567 0
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf941d631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x91012320
.word 0x910123a1
.word 0x39800000
.word 0x390123a0
.word 0x910123a0
.word 0x910063a0
.word 0x398123a0
.word 0x390063a0
.word 0xf9401bb1
.word 0xf9420a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0xf9400fa0
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1aa:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetException_object:
.loc 33 590 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2200]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xd2800018
.word 0xf94017b1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f8
.loc 33 600 0
.word 0xf94017b1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800020
.word 0xaa1903e0
.word 0xd2800021
bl _p_447
.word 0xf94017b1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.loc 33 601 0
.word 0xf94017b1
.word 0xf940ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xf2a08000
.word 0xd2800000
.word 0xf2a0ac00
.word 0xaa1903e0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_437
.word 0x53001c00
.word 0xf90023a0
.word 0xf94017b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0x34000320
.loc 33 604 0
.word 0xf94017b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xf94013a1
.word 0xaa1903e0
bl _p_448
.loc 33 605 0
.word 0xf94017b1
.word 0xf9412a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xaa1903e0
.word 0xd2800001
bl _p_449
.loc 33 606 0
.word 0xf94017b1
.word 0xf9414e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f8
.loc 33 609 0
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf94017b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1ab:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken:
.loc 33 618 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2208]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910063a1
.word 0x910103a1
.word 0xf9400fa1
.word 0xf90023a1
.word 0xd2800001
.word 0x910103a1
.word 0xf94023a1
.word 0xd2800002
bl _p_574
.word 0x53001c00
.word 0xf9002ba0
.word 0xf94017b1
.word 0xf9409631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf94017b1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1ac:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_TrySetCanceled_System_Threading_CancellationToken_object:
.loc 33 637 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f9
.word 0xf90013a1
.word 0xf9001ba2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2216]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800018
.word 0xf9401fb1
.word 0xf9404231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0x53001c00
.word 0xaa0003f8
.loc 33 648 0
.word 0xf9401fb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xd2800000
.word 0xf2a08000
.word 0xd2800000
.word 0xf2a0ac00
.word 0xaa1903e0
.word 0xd2800001
.word 0xf2a08001
.word 0xd2800002
.word 0xf2a0ac02
bl _p_437
.word 0x53001c00
.word 0xf90033a0
.word 0xf9401fb1
.word 0xf940c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
.word 0x340003a0
.loc 33 652 0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0x910083a0
.word 0x910143a0
.word 0xf94013a0
.word 0xf9002ba0
.word 0xf9401ba2
.word 0xaa1903e0
.word 0x910143a1
.word 0xf9402ba1
bl _p_451
.loc 33 653 0
.word 0xf9401fb1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_452
.loc 33 654 0
.word 0xf9401fb1
.word 0xf9412e31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800020
.word 0x53001c00
.word 0xaa0003f8
.loc 33 657 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9415a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9401fb1
.word 0xf9417231
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1ad:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_get_Factory:
.loc 33 668 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2224]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2232]
.word 0xf9400000
.word 0xf9400bb1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1ae:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_InnerInvoke:
.loc 33 677 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xa9015fb6
.word 0xa90267b8
.word 0xf9001bba
.word 0xaa0003fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2240]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xd2800019
.word 0xd2800018
.word 0xf9401fb1
.word 0xf9404631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b57
.word 0xaa1703f6
.word 0xeb1f02ff
.word 0x54000160
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2248]
.word 0xeb01001f
.word 0x54000040
.word 0xd2800016
.word 0xaa1603e0
.word 0xaa1603f9
.loc 33 678 0
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb4000376
.loc 33 680 0
.word 0xf9401fb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0x910163a0
.word 0xf90037a0
.word 0xaa1903e0
.word 0xf9400f30
.word 0xd63f0200
.word 0xf94037be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9410631
.word 0xb4000051
.word 0xd63f0220
.word 0x910163a0
.word 0x91012340
.word 0x398163a1
.word 0x39000001
.loc 33 681 0
.word 0xf9401fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000036
.loc 33 683 0
.word 0xf9401fb1
.word 0xf9413a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xf9400b40
.word 0xf90033a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2256]

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #2264]
bl _p_456
.word 0xaa0003f8
.loc 33 684 0
.word 0xf9401fb1
.word 0xf9417631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xb40003b8
.loc 33 686 0
.word 0xf9401fb1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1803e0
.word 0xaa1a03e0
.word 0xf9400f41
.word 0x910143a0
.word 0xf90037a0
.word 0xaa1803e0
.word 0xf9400f10
.word 0xd63f0200
.word 0xf94037be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0x910143a0
.word 0x91012340
.word 0x398143a1
.word 0x39000001
.loc 33 687 0
.word 0xf9401fb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000005
.loc 33 690 0
.word 0xf9401fb1
.word 0xf941fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9420e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa9415fb6
.word 0xa94267b8
.word 0xf9401bba
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1af:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_GetAwaiter:
.loc 33 699 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf90013a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2272]
.word 0xf90017b0
.word 0xf9400a11
.word 0xf9001bb1
.word 0xf94017b1
.word 0xf9403231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017b1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a1
.word 0x910123a0
.word 0xf90027bf
.word 0x910123a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2280]
bl _p_583
.word 0x910123a0
.word 0x910103a0
.word 0xf94027a0
.word 0xf90023a0
.word 0xf94017b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0x910103a0
.word 0x910043a0
.word 0xf94023a0
.word 0xf9000ba0
.word 0xf94017b1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1b0:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_ConfigureAwait_bool:
.loc 33 709 0 prologue_end
.word 0xa9b97bfd
.word 0x910003fd
.word 0xf90013a0
.word 0xf90017a1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2288]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a1
.word 0x3940a3a2
.word 0x910163a0
.word 0xd2800000
.word 0xf9002fa0
.word 0xf90033a0
.word 0x910163a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2296]
bl _p_584
.word 0x910163a0
.word 0x910123a0
.word 0xf9402fa0
.word 0xf90027a0
.word 0xf94033a0
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0x910123a0
.word 0x910043a0
.word 0xf94027a0
.word 0xf9000ba0
.word 0xf9402ba0
.word 0xf9000fa0
.word 0xf9401bb1
.word 0xf940d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0xf9400fa1
.word 0x910003bf
.word 0xa8c77bfd
.word 0xd65f03c0

Lme_1b1:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor
System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult__cctor:
.loc 33 81 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2304]
.word 0xf9000bb0
.word 0xf9400a11
.word 0xf9000fb1
.word 0xf9400bb1
.word 0xf9402e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2312]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf9001fa0
bl _p_585
.word 0xf9400bb1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fa1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2232]
.word 0xf9000001
.loc 33 87 0
.word 0xf9400bb1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2320]
.word 0xf9400000
.word 0xf9001ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540006e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2328]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9401ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54000520
.word 0xf9001020
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2336]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2344]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2352]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2360]
.word 0xf9000001
.word 0xf9400bb1
.word 0xf9418231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_1b2:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor:
.loc 34 93 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2368]
.word 0xf9000fb0
.word 0xf9400a11
.word 0xf90013b1
.word 0x9100e3a0
.word 0xf9001fbf
.word 0xf9400fb1
.word 0xf9403a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9405a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400ba0
.word 0x9100e3a1
.word 0xf9001fbf
.word 0x9100e3a1
.word 0x9100c3a1
.word 0xf9401fa1
.word 0xf9001ba1
.word 0xd2800001
.word 0xd2800001
.word 0xd2800001
.word 0x9100c3a1
.word 0xf9401ba1
.word 0xd2800002
.word 0xd2800003
.word 0xd2800004
bl _p_586
.loc 34 95 0
.word 0xf9400fb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1b3:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult__ctor_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskContinuationOptions_System_Threading_Tasks_TaskScheduler:
.loc 34 208 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xa90163b7
.word 0xf90013b9
.word 0xaa0003f7
.word 0xf90017a1
.word 0xaa0203f8
.word 0xaa0303f9
.word 0xf9001fa4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2376]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xf94023b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.loc 34 210 0
.word 0xf94023b1
.word 0xf9407e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_472
.loc 34 211 0
.word 0xf94023b1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_473
.loc 34 213 0
.word 0xf94023b1
.word 0xf940b631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0x9100a3a0
.word 0x910163a0
.word 0xf94017a0
.word 0xf9002fa0
.word 0x910163a0
.word 0x910042e2
.word 0xaa0203e1
.word 0xf9402fa0
.word 0xf9000040
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 214 0
.word 0xf94023b1
.word 0xf9411631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xf9401fa0
.word 0xf9000ee0
.word 0x910062e1
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 215 0
.word 0xf94023b1
.word 0xf9415e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1803e0
.word 0xb90022f8
.loc 34 216 0
.word 0xf94023b1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1703e0
.word 0xaa1903e0
.word 0xb90026f9
.loc 34 217 0
.word 0xf94023b1
.word 0xf9419631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94163b7
.word 0xf94013b9
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1b4:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_StartNew_System_Func_1_System_Threading_Tasks_VoidTaskResult_System_Threading_CancellationToken_System_Threading_Tasks_TaskCreationOptions_System_Threading_Tasks_TaskScheduler:
.loc 34 388 0 prologue_end
.word 0xa9b87bfd
.word 0x910003fd
.word 0xf9000bb9
.word 0xf9000fa0
.word 0xf90013a1
.word 0xf90017a2
.word 0xaa0303f9
.word 0xf9001fa4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2384]
.word 0xf90023b0
.word 0xf9400a11
.word 0xf90027b1
.word 0xb90063bf
.word 0xf94023b1
.word 0xf9404a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd280003e
.word 0xb90063be
.loc 34 389 0
.word 0xf94023b1
.word 0xf9408231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1903e0
bl _p_425
.word 0xf9003fa0
.word 0xf94023b1
.word 0xf940a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xf94013a1
.word 0x9100a3a2
.word 0x910163a2
.word 0xf94017a2
.word 0xf9002fa2
.word 0xaa1903e2
.word 0xd2800002
.word 0xf9401fa5
.word 0x910183a6

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1856]
.word 0x910163a2
.word 0xf9402fa2
.word 0xaa1903e3
.word 0xd2800004
bl _p_587
.word 0xf9003ba0
.word 0xf94023b1
.word 0xf940fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
.word 0xf94023b1
.word 0xf9411231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb9
.word 0x910003bf
.word 0xa8c87bfd
.word 0xd65f03c0

Lme_1b5:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncCoreLogic_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_bool:
.loc 34 542 0 prologue_end
.word 0xa9b07bfd
.word 0x910003fd
.word 0xa90167b8
.word 0xaa0003f8
.word 0xaa0103f9
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2392]
.word 0xf9001fb0
.word 0xf9400a11
.word 0xf90023b1
.word 0xf9003fbf
.word 0xf90043bf
.word 0x9101c3a0
.word 0x3901c3bf
.word 0xf9401fb1
.word 0xf9405631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9003fbf
.loc 34 543 0
.word 0xf9401fb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90043bf
.loc 34 544 0
.word 0xf9401fb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0x9101c3a0
.word 0x3901c3bf
.loc 34 548 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xb4000419
.loc 34 550 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf940ee31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1903e0
.word 0xaa1803e0
.word 0x9101a3a0
.word 0xf90053a0
.word 0xaa1903e0
.word 0xaa1803e1
.word 0xf9400f30
.word 0xd63f0200
.word 0xf94053be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf9412631
.word 0xb4000051
.word 0xd63f0220
.word 0x9101a3a0
.word 0x9101c3a0
.word 0x3981a3a0
.word 0x3901c3a0
.loc 34 551 0
.word 0xf9401fb1
.word 0xf9414631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000011
.loc 34 554 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9416a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94013a2
.word 0xaa1803e0
.word 0xaa0203e0
.word 0xaa1803e1
.word 0xf9007ba2
.word 0xf9400c50
.word 0xd63f0200
.word 0xf9407ba0
.loc 34 556 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf941aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf90047bf
.word 0x94000037
.word 0xf94047a0
.word 0xb4000040
bl _p_68
.word 0x1400013a
.word 0xf90057a0
.word 0xf94057a0
.word 0xf9007ba0
.loc 34 557 0
.word 0xf9401fb1
.word 0xf941de31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf90043a0
.word 0xf9401fb1
.word 0xf941f631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90073a0
.word 0xf94073a0
.word 0xb4000060
.word 0xf94073a0
bl _p_8
.word 0xf90047bf
.word 0x9400001e
.word 0xf94047a0
.word 0xb4000040
bl _p_68
.word 0x14000121
.word 0xf9005ba0
.word 0xf9405ba0
.word 0xf9007ba0
.loc 34 558 0
.word 0xf9401fb1
.word 0xf9424231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xf9003fa0
.word 0xf9401fb1
.word 0xf9425a31
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf90077a0
.word 0xf94077a0
.word 0xb4000060
.word 0xf94077a0
bl _p_8
.word 0xf90047bf
.word 0x94000005
.word 0xf94047a0
.word 0xb4000040
bl _p_68
.word 0x14000108
.word 0xf9006fbe
.loc 34 561 0
.word 0xf9401fb1
.word 0xf9429e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xb4000500
.loc 34 563 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf942c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9007ba0
.word 0xf94043a1
.word 0x910183a0
.word 0xf90053a0
.word 0xaa0103e0
.word 0xf940003e
bl _p_401
.word 0xf94053be
.word 0xf90003c0
.word 0xf9401fb1
.word 0xf942fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba3
.word 0xf94043a2
.word 0xaa0303e0
.word 0x910183a1
.word 0xf94033a1
.word 0xf940007e
bl _p_574
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9432e31
.word 0xb4000051
.word 0xd63f0220
.loc 34 564 0
.word 0xf9401fb1
.word 0xf9433e31
.word 0xb4000051
.word 0xd63f0220
.word 0x140000d0
.loc 34 565 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9436231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403fa0
.word 0xb4000880
.loc 34 567 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9438a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a2
.word 0xf9403fa1
.word 0xaa0203e0
.word 0xf940005e
bl _p_573
.word 0x53001c00
.word 0xf9007ba0
.loc 34 568 0
.word 0xf9401fb1
.word 0xf943b631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34001620
.word 0xf9403fa0
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xf9004fa0
.word 0xf9404ba0
.word 0xeb1f001f
.word 0x540001a0
.word 0xf9404ba0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400c00

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1184]
.word 0xeb01001f
.word 0x54000060
.word 0xf9004fbf
.word 0x14000001
.word 0xf9404fa0
.word 0xb4001380
.loc 34 570 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9443231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a0
.word 0xf9401c00
.word 0xf9007ba0
.word 0xd50330bf
.word 0xf9407ba0
.word 0xf9401002
.word 0xd50330bf
.word 0xd2800000
.word 0xaa0203e0
.word 0xd2800001
.word 0xf940005e
bl _p_479
.loc 34 572 0
.word 0xf9401fb1
.word 0xf9447231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000083
.loc 34 575 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9449631
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf9007ba0
.word 0xf9401fb1
.word 0xf944b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000320
.loc 34 576 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf944da31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf9007ba0
.word 0xf9401fb1
.word 0xf9450631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba1
.word 0xd2800020
.word 0xd2800000
.word 0xd2800022
bl _p_390
.loc 34 578 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9453a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x340002a0
.loc 34 580 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9456e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a1
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf9007ba0
.word 0xf9401fb1
.word 0xf9459631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
bl _p_391
.loc 34 582 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945be31
.word 0xb4000051
.word 0xd63f0220
.word 0x3940c3a0
.word 0x340003a0
.loc 34 584 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf945e631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a2
.word 0x9101c3a0
.word 0x910163a0
.word 0x3981c3a0
.word 0x390163a0
.word 0xaa0203e0
.word 0x910163a1
.word 0xf9402fa1
.word 0xf940005e
bl _p_570
.word 0x53001c00
.word 0xf9401fb1
.word 0xf9462231
.word 0xb4000051
.word 0xd63f0220
.loc 34 585 0
.word 0xf9401fb1
.word 0xf9463231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000013
.loc 34 588 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9465631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94017a2
.word 0x9101c3a0
.word 0x910143a0
.word 0x3981c3a0
.word 0x390143a0
.word 0xaa0203e0
.word 0x910143a1
.word 0xf9402ba1
.word 0xf940005e
bl _p_588
.loc 34 593 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9469e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9406fbe
.word 0xd61f03c0
.loc 34 594 0
.word 0xf94023b1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf946c631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf946d631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94167b8
.word 0x910003bf
.word 0xa8d07bfd
.word 0xd65f03c0

Lme_1b6:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsync_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_object:
.loc 34 778 0 prologue_end
.word 0xa9ba7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2400]
.word 0xf9001bb0
.word 0xf9400a11
.word 0xf9001fb1
.word 0xf9401bb1
.word 0xf9403e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fa0
.word 0xf94013a1
.word 0xd2800002
.word 0xf94017a3
.word 0xf9400ba2
.word 0xb9802044

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2312]
.word 0xd2800002
bl _p_589
.word 0xf9002ba0
.word 0xf9401bb1
.word 0xf9409e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402ba0
.word 0xf9401bb1
.word 0xf940b231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c67bfd
.word 0xd65f03c0

Lme_1b7:
.text
	.align 4
	.no_dead_strip System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions
System_Threading_Tasks_TaskFactory_1_System_Threading_Tasks_VoidTaskResult_FromAsyncImpl_System_Func_3_System_AsyncCallback_object_System_IAsyncResult_System_Func_2_System_IAsyncResult_System_Threading_Tasks_VoidTaskResult_System_Action_1_System_IAsyncResult_object_System_Threading_Tasks_TaskCreationOptions:
.loc 34 0 0 prologue_end
.word 0xa9b37bfd
.word 0x910003fd
.word 0xa90157b4
.word 0xf90013b6
.word 0xa902ebb9
.word 0xaa0003f6
.word 0xf9001fa1
.word 0xf90023a2
.word 0xaa0303f9
.word 0xaa0403fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2408]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xf90037bf
.word 0xd2800015
.word 0xd2800014
.word 0x910183a0
.word 0x390183bf
.word 0xf94027b1
.word 0xf9406231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2416]
.word 0xd2800501
.word 0xd2800501
bl _p_2
.word 0xf90053a0
bl _p_590
.word 0xf94027b1
.word 0xf9409231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xf90037a0
.word 0xf94037a1
.word 0xf9401fa0
.word 0xf9000820
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.word 0xf94037a1
.word 0xf94023a0
.word 0xf9000c20
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 816 0
.word 0xf94027b1
.word 0xf9411a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb50002b6
.loc 34 817 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9414231
.word 0xb4000051
.word 0xd63f0220
.word 0xd291ba20
.word 0xf2a00020
.word 0xd291ba20
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 34 819 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9419231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9400800
.word 0xb5000300
.word 0xf94037a0
.word 0xf9400c00
.word 0xb50002a0
.loc 34 820 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf941ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xd291bd20
.word 0xf2a00020
.word 0xd291bd20
.word 0xf2a00020
bl _p_370
.word 0xaa0003e1
.word 0xd2801240
.word 0xf2a04000
.word 0xd2801240
.word 0xf2a04000
bl _mono_create_corlib_exception_1
bl _p_8
.loc 34 824 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9421a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xaa1a03e0
.word 0xd2800021
bl _p_486
.loc 34 826 0
.word 0xf94027b1
.word 0xf9423e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9005ba0
.word 0xaa1903e0
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1856]
.word 0xd2800a01
.word 0xd2800a01
bl _p_2
.word 0xf90057a0
.word 0xaa1903e1
.word 0xaa1a03e2
bl _p_591
.word 0xf94027b1
.word 0xf9428631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf9405ba1
.word 0xf9001020
.word 0x91008021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 828 0
.word 0xf94027b1
.word 0xf942ce31
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf942ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000740
.loc 34 829 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9431231
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94037a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9434231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1208]
.word 0xf9005ba0
.word 0xaa1603e0
.word 0xaa1603e0
.word 0xf94002de
bl _p_489
.word 0xf90063a0
.word 0xf94027b1
.word 0xf9437631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94063a1
.word 0xaa0103e0
.word 0xf9400021
.word 0xf9405c30
.word 0xd63f0200
.word 0xf9005fa0
.word 0xf94027b1
.word 0xf9439e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405ba0
.word 0xf9405fa1
bl _p_490
.word 0xf90057a0
.word 0xf94027b1
.word 0xf943be31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xf94057a2
.word 0xd2800000
.word 0xd2800000
.word 0xd2800003
bl _p_491
.loc 34 831 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf943f631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x34000240
.loc 34 833 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9442a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401000
bl _p_492
.word 0x53001c00
.word 0xf94027b1
.word 0xf9444a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.loc 34 842 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9446e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1216]
.word 0x39400000
.word 0x34001800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2424]
.word 0xd2800401
.word 0xd2800401
bl _p_2
.word 0xf90067a0
bl _p_592
.word 0xf94027b1
.word 0xf944b231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94067a0
.word 0xaa0003f5
.word 0xaa1503e1
.word 0xf94037a0
.word 0xf9000ea0
.word 0x91006021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 844 0
.word 0xf94027b1
.word 0xf9450231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1503e0
.word 0xf90063a0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1224]
.word 0xd2800281
.word 0xd2800281
bl _p_2
.word 0xf9005fa0
bl _p_495
.word 0xf94027b1
.word 0xf9453a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9405fa0
.word 0xf94063a1
.word 0xf9000aa0
.word 0x91004021
.word 0xd349fc21
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0021

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x2, [x16, #16]
.word 0x8b020021
.word 0xd280003e
.word 0x3900003e
.loc 34 847 0
.word 0xf94027b1
.word 0xf9458231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xaa1503e0
.word 0xf9005ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x540028e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf9405ba0
.word 0xeb1f001f
.word 0x10000011
.word 0x54002720
.word 0xf9001020
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2432]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2440]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2448]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa1903e0
.word 0xaa1603e0
.word 0xaa1903e2
.word 0xf9400ed0
.word 0xd63f0200
.word 0xf90057a0
.word 0xf94027b1
.word 0xf9466231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf90053a0
.word 0xaa0003f4
.loc 34 852 0
.word 0xf94027b1
.word 0xf9467e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003e1
.word 0xb4000fa0
.word 0xaa1403e0
.word 0xaa1403e0
.word 0xf9400281

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1248]
.word 0x928003f0
.word 0xf2bffff0
.word 0xf8706830
.word 0xd63f0200
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf946ca31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000d60
.word 0xaa1503e0
.word 0xf9400aa1
.word 0xaa0103e0
.word 0xf940003e
bl _p_498
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf946fe31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000bc0
.loc 34 855 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9472631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1403e0
.word 0xaa1503e0
.word 0xf9400ea0
.word 0xf9400801
.word 0xaa1503e0
.word 0xf9400ea0
.word 0xf9400c02
.word 0xaa1503e0
.word 0xf9400ea0
.word 0xf9401003
.word 0xd2800000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #2312]
.word 0xaa1403e0
.word 0xd2800004
bl _p_593
.loc 34 857 0
.word 0xf94027b1
.word 0xf9477a31
.word 0xb4000051
.word 0xd63f0220
.word 0x14000040
.loc 34 861 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9479e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xf94037a0
.word 0xf90053a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001800

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1232]
.word 0xd2800e01
.word 0xd2800e01
bl _p_2
.word 0xaa0003e1
.word 0xf94053a0
.word 0xeb1f001f
.word 0x10000011
.word 0x54001640
.word 0xf9001020
.word 0x91008022
.word 0xd349fc42
.word 0xd29ffffe
.word 0xf2a00ffe
.word 0x8a1e0042

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+0
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x3, [x16, #16]
.word 0x8b030042
.word 0xd280003e
.word 0x3900005e

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2456]
.word 0xf9001420

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2464]
.word 0xf9002020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2472]
.word 0xf9401402
.word 0xf9000c22
.word 0xf9401000
.word 0xf9000820
.word 0xd2800000
.word 0x3901803f
.word 0xaa1903e0
.word 0xaa1603e0
.word 0xaa1903e2
.word 0xf9400ed0
.word 0xd63f0200
.word 0xf94027b1
.word 0xf9487a31
.word 0xb4000051
.word 0xd63f0220
.loc 34 866 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9489a31
.word 0xb4000051
.word 0xd63f0220
.word 0x1400006f
.word 0xf9003ba0
.word 0xf9403ba0
.loc 34 867 0
.word 0xf94027b1
.word 0xf948b631
.word 0xb4000051
.word 0xd63f0220
.loc 34 869 0
.word 0xf94027b1
.word 0xf948c631
.word 0xb4000051
.word 0xd63f0220
bl _p_388
.word 0x53001c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf948e231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0x34000340
.loc 34 870 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9490a31
.word 0xb4000051
.word 0xd63f0220
.word 0xd2800000
.word 0xf94037a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf9493a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a1
.word 0xd2800060
.word 0xd2800000
.word 0xd2800062
bl _p_390
.loc 34 872 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9496e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #656]
.word 0x39400000
.word 0x340002c0
.loc 34 874 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf949a231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401001
.word 0xaa0103e0
.word 0xf940003e
bl _p_389
.word 0x93407c00
.word 0xf90053a0
.word 0xf94027b1
.word 0xf949ce31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
bl _p_391
.loc 34 878 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf949f631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401002
.word 0x910183a0
.word 0x390183bf
.word 0x910183a0
.word 0x910243a0
.word 0x398183a0
.word 0x390243a0
.word 0xaa0203e0
.word 0x910243a1
.word 0xf9404ba1
.word 0xf940005e
bl _p_570
.word 0x53001c00
.word 0xf94027b1
.word 0xf94a3e31
.word 0xb4000051
.word 0xd63f0220
.loc 34 879 0
.word 0xf94027b1
.word 0xf94a4e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9403ba0
bl _p_504
.loc 34 882 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf94a7631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94037a0
.word 0xf9401000
.word 0xf94027b1
.word 0xf94a8e31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94157b4
.word 0xf94013b6
.word 0xa942ebb9
.word 0x910003bf
.word 0xa8cd7bfd
.word 0xd65f03c0
.word 0xd2801f00
.word 0xaa1103e1
bl _p_9
.word 0xd2801220
.word 0xaa1103e1
bl _p_9

Lme_1b8:
.text
	.align 4
	.no_dead_strip wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task
wrapper_delegate_invoke_System_Func_2_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task_System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_invoke_TResult_T_System_Threading_Tasks_Task_1_System_Threading_Tasks_Task:
.word 0xa9b77bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xa9046bb9
.word 0xaa0003f9
.word 0xaa0103fa

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2480]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xd2800018
.word 0xd2800017
.word 0xd2800016
.word 0xd2800015
.word 0xd2800014
.word 0xd2800013
.word 0xf9402bb1
.word 0xf9405e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #344]
.word 0xb9400000
.word 0x34000140
bl _p_369
.word 0xf90037a0
.word 0xf94037a1
.word 0xf94037a0
.word 0xf9003ba1
.word 0xb4000060
.word 0xf9403ba0
bl _p_8
.word 0xf9403ba0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9101a320
.word 0xf9403720
.word 0xaa0003f6
.word 0xaa1603e0
.word 0xb5000440
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91008320
.word 0xf9401320
.word 0xaa0003f4
.word 0xaa1403e0
.word 0xb40001e0
.word 0xaa1403e0
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b22
.word 0xaa1403e0
.word 0xaa1a03e1
.word 0xd63f0040
.word 0x14000036
.word 0xaa1a03e0
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x9100e320
.word 0xf9401f20
.word 0xaa1903e0
.word 0xaa1903e0
.word 0x91004320
.word 0xf9400b21
.word 0xaa1a03e0
.word 0xd63f0020
.word 0x1400002a
.word 0xaa1603e0
.word 0xb9801ac0
.word 0xaa0003f7
.word 0xd2800018
.word 0xaa1603e0
.word 0xaa1803e0
.word 0x93407f00
.word 0xb9801ac1
.word 0xeb00003f
.word 0x10000011
.word 0x54000549
.word 0xd37df000
.word 0x8b0002c0
.word 0x91008000
.word 0xf9400000
.word 0xaa0003f5
.word 0xaa1503e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf90047a2
.word 0xf9400c50
.word 0xd63f0200
.word 0xaa0003e1
.word 0xf94047a0
.word 0xf90043a1
.word 0xf9402bb1
.word 0xf941ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94043a0
.word 0xaa0003f3
.word 0xaa1803e0
.word 0x11000700
.word 0xaa0003f8
.word 0xaa1803e0
.word 0xaa1703e1
.word 0x6b17001f
.word 0x54fffbcb
.word 0xaa1303e0
.word 0xaa1303e0
.word 0xf9402bb1
.word 0xf941ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0xa9446bb9
.word 0x910003bf
.word 0xa8c97bfd
.word 0xd65f03c0
.word 0xd2801ca0
.word 0xaa1103e1
bl _p_9

Lme_1b9:
.text
ut_442:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_BeaconRangingController__DetectBeaconOnd__9_:
.loc 32 542 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xaa0003f8
.word 0xf90023a1
.word 0xf90027a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2488]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf90037bf
.word 0xd2800017
.word 0xd2800016
.word 0xf9402bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf90037bf
.loc 32 543 0
.word 0xf9402bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_388
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa1803f5
.word 0x350000c0
.word 0xaa1503e0
.word 0xd2800000
.word 0xaa1503f4
.word 0xd2800013
.word 0x14000010
.word 0xaa1503e0
.word 0xaa1803e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1803e0
bl _p_572
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa1503f4
.word 0xaa0003f3
.word 0xaa1403e0
.word 0xaa1303e0
.word 0x9101a3a2
.word 0xaa1403e0
.word 0xaa1303e1
bl _p_520
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f7
.loc 32 547 0
.word 0xf9402bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400300
.word 0xb5000480
.loc 32 551 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1803e0
bl _p_572
.word 0xf90057a0
.word 0xf9402bb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf90053a0
.word 0xaa0003f6
.loc 32 556 0
.word 0xf9402bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a3
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf94027a0
.word 0xf9400001
.word 0xf94037a2
.word 0xaa0303e0
.word 0xaa1803e0
bl _p_521
.loc 32 559 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa1703e1
.word 0xaa1703e1
bl _p_594
.loc 32 560 0
.word 0xf9402bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9003ba0
.word 0xf9403ba0
.word 0xf90053a0
.loc 32 563 0
.word 0xf9402bb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xd2800001
.word 0xd2800001
bl _p_525
.loc 32 564 0
.word 0xf9402bb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xb4000060
.word 0xf9404ba0
bl _p_8
.word 0x14000001
.loc 32 565 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf9402bb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_1ba:
.text
ut_443:
add x0, x0, 16
b System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_EmptyClass__Scand__4_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_EmptyClass__Scand__4_
.text
	.align 4
	.no_dead_strip System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_EmptyClass__Scand__4_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_EmptyClass__Scand__4_
System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_BeaconTest_iOS_EmptyClass__Scand__4_System_Runtime_CompilerServices_TaskAwaiter__BeaconTest_iOS_EmptyClass__Scand__4_:
.loc 32 542 0 prologue_end
.word 0xa9b57bfd
.word 0x910003fd
.word 0xa90153b3
.word 0xa9025bb5
.word 0xa90363b7
.word 0xaa0003f8
.word 0xf90023a1
.word 0xf90027a2

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2496]
.word 0xf9002bb0
.word 0xf9400a11
.word 0xf9002fb1
.word 0xf90037bf
.word 0xd2800017
.word 0xd2800016
.word 0xf9402bb1
.word 0xf9405231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0xf90037bf
.loc 32 543 0
.word 0xf9402bb1
.word 0xf9408631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
bl _p_388
.word 0x53001c00
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa1803f5
.word 0x350000c0
.word 0xaa1503e0
.word 0xd2800000
.word 0xaa1503f4
.word 0xd2800013
.word 0x14000010
.word 0xaa1503e0
.word 0xaa1803e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1803e0
bl _p_572
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa1503f4
.word 0xaa0003f3
.word 0xaa1403e0
.word 0xaa1303e0
.word 0x9101a3a2
.word 0xaa1403e0
.word 0xaa1303e1
bl _p_520
.word 0xf90053a0
.word 0xf9402bb1
.word 0xf9413231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xaa0003f7
.loc 32 547 0
.word 0xf9402bb1
.word 0xf9414a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf9400300
.word 0xb5000480
.loc 32 551 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9417a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1803e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x15, [x16, #1872]
.word 0xaa1803e0
bl _p_572
.word 0xf90057a0
.word 0xf9402bb1
.word 0xf941a631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94057a0
.word 0xf90053a0
.word 0xaa0003f6
.loc 32 556 0
.word 0xf9402bb1
.word 0xf941c231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a3
.word 0xaa1803e0
.word 0xaa1803e0
.word 0xf94027a0
.word 0xf9400001
.word 0xf94037a2
.word 0xaa0303e0
.word 0xaa1803e0
bl _p_521
.loc 32 559 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94023a0
.word 0xaa1703e1
.word 0xaa1703e1
bl _p_594
.loc 32 560 0
.word 0xf9402bb1
.word 0xf9422631
.word 0xb4000051
.word 0xd63f0220
.word 0x14000017
.word 0xf9003ba0
.word 0xf9403ba0
.word 0xf90053a0
.loc 32 563 0
.word 0xf9402bb1
.word 0xf9424631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94053a0
.word 0xd2800001
.word 0xd2800001
bl _p_525
.loc 32 564 0
.word 0xf9402bb1
.word 0xf9426631
.word 0xb4000051
.word 0xd63f0220
bl _p_240
.word 0xf9004ba0
.word 0xf9404ba0
.word 0xb4000060
.word 0xf9404ba0
bl _p_8
.word 0x14000001
.loc 32 565 0
.word 0xf9402fb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf942a231
.word 0xb4000051
.word 0xd63f0220
.word 0x14000001
.word 0xf9402bb1
.word 0xf942b631
.word 0xb4000051
.word 0xd63f0220
.word 0xa94153b3
.word 0xa9425bb5
.word 0xa94363b7
.word 0x910003bf
.word 0xa8cb7bfd
.word 0xd65f03c0

Lme_1bb:
.text
	.align 4
	.no_dead_strip System_Collections_Generic_EqualityComparer_1_T_BOOL_CreateComparer
System_Collections_Generic_EqualityComparer_1_T_BOOL_CreateComparer:
.loc 36 49 0 prologue_end
.word 0xa9af7bfd
.word 0x910003fd
.word 0xf9000bb3
.word 0xa901dbb5
.word 0xa902e3b7
.word 0xa903ebb9
.word 0xf90033af

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x16, [x16, #2504]
.word 0xf90027b0
.word 0xf9400a11
.word 0xf9002bb1
.word 0xd280001a
.word 0xd2800019
.word 0xd2800018
.word 0xf94027b1
.word 0xf9404e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf9406e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_595
.word 0xf90037a0
.word 0xf94037a0
.word 0xb4000180
.word 0xf94037a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0xeb01001f
.word 0x10000011
.word 0x54004261
.word 0xf94037a0
.word 0xaa0003fa
.loc 36 51 0
.word 0xf94027b1
.word 0xf940c631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2512]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf940f231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000440
.loc 36 52 0
.word 0xf94027b1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1720]
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xf9006fa0
.word 0xf9406fa0
bl _p_557
.word 0xf94027b1
.word 0xf9413e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf90073a0
.word 0xf9406fa0
.word 0xb4000140
.word 0xf9406fa0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94073a1
.word 0xeb01001f
.word 0x10000011
.word 0x54003c21
.word 0xf9406fa0
.word 0x140001d4
.loc 36 57 0
.word 0xf94027b1
.word 0xf9418e31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2520]
.word 0xeb00035f
.word 0x9a9f17e0
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf941ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000420
.loc 36 58 0
.word 0xf94027b1
.word 0xf941d231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1736]
.word 0xd2800201
.word 0xd2800201
bl _p_2
.word 0xaa0003f7
.word 0xaa1703e0
bl _p_559
.word 0xf94027b1
.word 0xf9420631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf9006ba0
.word 0xb4000137
.word 0xf94002e0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9406ba1
.word 0xeb01001f
.word 0x10000011
.word 0x54003621
.word 0xaa1703e0
.word 0xaa1703e0
.word 0x140001a3
.loc 36 62 0
.word 0xf94027b1
.word 0xf9425231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_597
.word 0xaa0003e2
.word 0xaa1a03e0
.word 0xaa0203e0
.word 0xaa1a03e1
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9428e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000400
.loc 36 64 0
.word 0xf94027b1
.word 0xf942a631
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2528]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xf90063a0
.word 0xf94027b1
.word 0xf942d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf90067a0
.word 0xf94063a0
.word 0xb4000140
.word 0xf94063a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94067a1
.word 0xeb01001f
.word 0x10000011
.word 0x54002f81
.word 0xf94063a0
.word 0x1400016f
.loc 36 70 0
.word 0xf94027b1
.word 0xf9432231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940fc30
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9434e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x340011a0
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940a030
.word 0xd63f0200
.word 0xf9007fa0
.word 0xf94027b1
.word 0xf9437e31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #2536]
.word 0xeb01001f
.word 0x9a9f17e0
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf943aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000ec0
.loc 36 71 0
.word 0xf94027b1
.word 0xf943c231
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf940a830
.word 0xd63f0200
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf943ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xd2800001
.word 0xb9801801
.word 0xeb1f003f
.word 0x10000011
.word 0x54002829
.word 0xf9401000
.word 0xf90053a0
.word 0xb4000180
.word 0xf94053a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9401000

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x1, [x16, #1704]
.word 0xeb01001f
.word 0x10000011
.word 0x54002601
.word 0xf94053a0
.word 0xaa0003f9
.loc 36 72 0
.word 0xf94027b1
.word 0xf9445231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2544]
.word 0xf90087a0
.word 0xd2800020

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #1768]
.word 0xd2800021
bl _p_204
.word 0xf90057a0
.word 0xf94057a0
.word 0xf90083a0
.word 0xf94057a3
.word 0xd2800000
.word 0xaa1903e2
.word 0xaa0303e0
.word 0xd2800001
.word 0xf9400063
.word 0xf9408070
.word 0xd63f0200
.word 0xf94083a1
.word 0xf94087a2
.word 0xaa0203e0
.word 0xf9400042
.word 0xf940b050
.word 0xd63f0200
.word 0xf9007fa0
.word 0xf94027b1
.word 0xf944d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa2
.word 0xaa1903e1
.word 0xaa0203e0
.word 0xf9400042
.word 0xf9407c50
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf9450231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34000400
.loc 36 74 0
.word 0xf94027b1
.word 0xf9451a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2552]
.word 0xaa1903e1
.word 0xaa1903e1
bl _p_561
.word 0xf9005ba0
.word 0xf94027b1
.word 0xf9454631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf9005fa0
.word 0xf9405ba0
.word 0xb4000140
.word 0xf9405ba0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9405fa1
.word 0xeb01001f
.word 0x10000011
.word 0x54001be1
.word 0xf9405ba0
.word 0x140000d2
.loc 36 82 0
.word 0xf9402bb1
.word 0xf9400231
.word 0xb4000051
.word 0xd63f0220
.word 0xf94027b1
.word 0xf945a631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
.word 0xf9400341
.word 0xf9410c30
.word 0xd63f0200
.word 0x53001c00
.word 0xf9007ba0
.word 0xf94027b1
.word 0xf945d231
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0x34001480
.loc 36 83 0
.word 0xf94027b1
.word 0xf945ea31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xaa1a03e0
bl _p_562
.word 0xf90083a0
.word 0xf94027b1
.word 0xf9460a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94083a0
bl _p_563
.word 0x93407c00
.word 0xf9007fa0
.word 0xf94027b1
.word 0xf9462a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407fa0
.word 0xf9007ba0
.word 0xaa0003f8
.loc 36 88 0
.word 0xf94027b1
.word 0xf9464631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9407ba0
.word 0xaa0003e1
.word 0x51001416
.word 0xd280011e
.word 0x6b1e02df
.word 0x54001062
.word 0xd37df2c0
.word 0x2a0003e1

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2560]
.word 0x8b010000
.word 0xf9400000
.word 0xd61f0000
.loc 36 91 0
.word 0xf94027b1
.word 0xf9468e31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2568]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xf90043a0
.word 0xf94027b1
.word 0xf946ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf90047a0
.word 0xf94043a0
.word 0xb4000140
.word 0xf94043a0
.word 0xf9400000
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf94047a1
.word 0xeb01001f
.word 0x10000011
.word 0x54001041
.word 0xf94043a0
.word 0x14000075
.loc 36 97 0
.word 0xf94027b1
.word 0xf9470a31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2576]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xaa0003f5
.word 0xf94027b1
.word 0xf9473631
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf9003ba0
.word 0xb4000135
.word 0xf94002a0
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9403ba1
.word 0xeb01001f
.word 0x10000011
.word 0x54000ca1
.word 0xaa1503e0
.word 0xaa1503e0
.word 0x14000057
.loc 36 106 0
.word 0xf94027b1
.word 0xf9478231
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2584]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xaa0003f3
.word 0xf94027b1
.word 0xf947ae31
.word 0xb4000051
.word 0xd63f0220
.word 0xf94033a0
bl _p_596
.word 0xf9003fa0
.word 0xb4000133
.word 0xf9400260
.word 0xf9400000
.word 0xf9400800
.word 0xf9400400
.word 0xf9403fa1
.word 0xeb01001f
.word 0x10000011
.word 0x540008e1
.word 0xaa1303e0
.word 0xaa1303e0
.word 0x14000039
.loc 36 113 0
.word 0xf94027b1
.word 0xf947fa31
.word 0xb4000051
.word 0xd63f0220

adrp x16, mono_aot_BeaconTest_iOS_got@PAGE+4096
add x16, x16, mono_aot_BeaconTest_iOS_got@PAGEOFF
ldr x0, [x16, #2592]
.word 0xaa1a03e1
.word 0xaa1a03e1
bl _p_561
.word 0xf9004ba0
.word 0xf94027b1
.word 0xf9482631
.word 0xb4000051
.word 0xd63f0220
