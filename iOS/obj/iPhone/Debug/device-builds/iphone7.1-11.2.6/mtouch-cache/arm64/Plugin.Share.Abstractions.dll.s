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
	.asciz "Mono AOT Compiler 5.10.1 (tarball Wed Apr 25 14:36:22 EDT 2018)"
	.asciz "Plugin.Share.Abstractions.dll"
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
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController
Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController:
.file 1 "C:\\projects\\shareplugin\\Share\\Share.Plugin.Abstractions\\BrowserOptions.cs"
.loc 1 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #200]
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
.word 0x3940a000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_0:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool
Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool:
.loc 1 18 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #208]
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
.word 0x394063a1
.word 0x3900a001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_1:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode
Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode:
.loc 1 23 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #216]
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
.word 0x3940a400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool
Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool:
.loc 1 23 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #224]
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
.word 0x394063a1
.word 0x3900a401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_3:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor
Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor:
.loc 1 29 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #232]
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

Lme_4:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor
Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor:
.loc 1 29 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #240]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_5:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor
Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor:
.loc 1 34 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #248]
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

Lme_6:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor
Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor:
.loc 1 34 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #256]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_7:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle
Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle:
.loc 1 40 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #264]
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
.word 0x3940a800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_8:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool
Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool:
.loc 1 40 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #272]
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
.word 0x394063a1
.word 0x3900a801
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_9:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor
Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor:
.loc 1 45 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #280]
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

Lme_a:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor
Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor:
.loc 1 45 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #288]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_b:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_BrowserOptions__ctor
Plugin_Share_Abstractions_BrowserOptions__ctor:
.loc 1 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #296]
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
.word 0xd2800020
.word 0xd280003e
.word 0x3900a35e
.loc 1 40 0
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xd2800020
.word 0xd280003e
.word 0x3900ab5e
.word 0xaa1a03e0
.word 0xf9400fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf940aa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_c:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_get_A
Plugin_Share_Abstractions_ShareColor_get_A:
.file 2 "C:\\projects\\shareplugin\\Share\\Share.Plugin.Abstractions\\ShareColor.cs"
.loc 2 17 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #304]
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
.word 0xb9801000
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
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_set_A_int
Plugin_Share_Abstractions_ShareColor_set_A_int:
.loc 2 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #312]
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
.word 0xb9801ba1
.word 0xb9001001
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_13:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_get_R
Plugin_Share_Abstractions_ShareColor_get_R:
.loc 2 21 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #320]
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
.word 0xb9801400
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
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_set_R_int
Plugin_Share_Abstractions_ShareColor_set_R_int:
.loc 2 21 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #328]
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
.word 0xb9801ba1
.word 0xb9001401
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_15:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_get_G
Plugin_Share_Abstractions_ShareColor_get_G:
.loc 2 25 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #336]
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
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_16:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_set_G_int
Plugin_Share_Abstractions_ShareColor_set_G_int:
.loc 2 25 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #344]
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
.word 0xb9801ba1
.word 0xb9001801
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_17:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_get_B
Plugin_Share_Abstractions_ShareColor_get_B:
.loc 2 29 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #352]
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
.word 0xb9801c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_18:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor_set_B_int
Plugin_Share_Abstractions_ShareColor_set_B_int:
.loc 2 29 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #360]
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
.word 0xb9801ba1
.word 0xb9001c01
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_19:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor__ctor
Plugin_Share_Abstractions_ShareColor__ctor:
.loc 2 34 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #368]
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
.loc 2 36 0
.word 0xf9400fb1
.word 0xf9406631
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400fb1
.word 0xf9407631
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_1a:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor__ctor_int_int_int
Plugin_Share_Abstractions_ShareColor__ctor_int_int_int:
.loc 2 44 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #376]
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
.word 0xf9400ba0
.word 0xb9801ba1
.word 0xb98023a2
.word 0xb9802ba3
.word 0xd2801fe4
.word 0xd2801fe4
bl _p_1
.loc 2 46 0
.word 0xf9401bb1
.word 0xf9408a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401bb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1b:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int
Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int:
.loc 2 55 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bb6
.word 0xaa0003f6
.word 0xf9000fa1
.word 0xf90013a2
.word 0xf90017a3
.word 0xf9001ba4

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #384]
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
.word 0xaa1603e0
.loc 2 57 0
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb98033a1
.word 0xaa1603e0
bl _p_2
.loc 2 58 0
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb9801ba1
.word 0xaa1603e0
bl _p_3
.loc 2 59 0
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb98023a1
.word 0xaa1603e0
bl _p_4
.loc 2 60 0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1603e0
.word 0xb9802ba1
.word 0xaa1603e0
bl _p_5
.loc 2 61 0
.word 0xf9401fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bb6
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_1c:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage_get_Title
Plugin_Share_Abstractions_ShareMessage_get_Title:
.file 3 "C:\\projects\\shareplugin\\Share\\Share.Plugin.Abstractions\\ShareMessage.cs"
.loc 3 17 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #392]
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

Lme_1d:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage_set_Title_string
Plugin_Share_Abstractions_ShareMessage_set_Title_string:
.loc 3 17 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #400]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_1e:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage_get_Text
Plugin_Share_Abstractions_ShareMessage_get_Text:
.loc 3 22 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #408]
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

Lme_1f:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage_set_Text_string
Plugin_Share_Abstractions_ShareMessage_set_Text_string:
.loc 3 22 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #416]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_20:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage_get_Url
Plugin_Share_Abstractions_ShareMessage_get_Url:
.loc 3 27 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #424]
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

Lme_21:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage_set_Url_string
Plugin_Share_Abstractions_ShareMessage_set_Url_string:
.loc 3 27 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #432]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_22:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareMessage__ctor
Plugin_Share_Abstractions_ShareMessage__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #440]
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

Lme_23:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle
Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle:
.file 4 "C:\\projects\\shareplugin\\Share\\Share.Plugin.Abstractions\\ShareOptions.cs"
.loc 4 18 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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
.word 0xf9400ba0
.word 0xf9400800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_24:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string
Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string:
.loc 4 18 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #456]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_25:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes
Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes:
.loc 4 24 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #464]
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
.word 0xb9802800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_26:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType
Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType:
.loc 4 24 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #472]
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
.word 0xb9801ba1
.word 0xb9002801
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_27:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes
Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes:
.loc 4 30 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #480]
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

Lme_28:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__
Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__:
.loc 4 30 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #488]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_29:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle
Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle:
.loc 4 36 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #496]
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

Lme_2a:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle
Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle:
.loc 4 36 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xf9000fa1

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #504]
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

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
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

Lme_2b:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareOptions__ctor
Plugin_Share_Abstractions_ShareOptions__ctor:
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #512]
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

Lme_2c:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_get_X
Plugin_Share_Abstractions_ShareRectangle_get_X:
.file 5 "C:\\projects\\shareplugin\\Share\\Share.Plugin.Abstractions\\ShareRectangle.cs"
.loc 5 9 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #520]
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
.word 0xfd400800
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2d:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_set_X_double
Plugin_Share_Abstractions_ShareRectangle_set_X_double:
.loc 5 9 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #528]
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
.word 0xfd400fa0
.word 0xfd000800
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_2e:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_get_Y
Plugin_Share_Abstractions_ShareRectangle_get_Y:
.loc 5 10 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #536]
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
.word 0xfd400c00
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_2f:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_set_Y_double
Plugin_Share_Abstractions_ShareRectangle_set_Y_double:
.loc 5 10 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #544]
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
.word 0xfd400fa0
.word 0xfd000c00
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_30:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_get_Width
Plugin_Share_Abstractions_ShareRectangle_get_Width:
.loc 5 11 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #552]
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
.word 0xfd401000
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_31:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_set_Width_double
Plugin_Share_Abstractions_ShareRectangle_set_Width_double:
.loc 5 11 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #560]
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
.word 0xfd400fa0
.word 0xfd001000
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_32:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_get_Height
Plugin_Share_Abstractions_ShareRectangle_get_Height:
.loc 5 12 0 prologue_end
.word 0xa9bd7bfd
.word 0x910003fd
.word 0xf9000ba0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #568]
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
.word 0xfd401400
.word 0xf9400fb1
.word 0xf9406a31
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c37bfd
.word 0xd65f03c0

Lme_33:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle_set_Height_double
Plugin_Share_Abstractions_ShareRectangle_set_Height_double:
.loc 5 12 0 prologue_end
.word 0xa9bc7bfd
.word 0x910003fd
.word 0xf9000ba0
.word 0xfd000fa0

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #576]
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
.word 0xfd400fa0
.word 0xfd001400
.word 0xf94013b1
.word 0xf9407231
.word 0xb4000051
.word 0xd63f0220
.word 0x910003bf
.word 0xa8c47bfd
.word 0xd65f03c0

Lme_34:
.text
	.align 4
	.no_dead_strip Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double
Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double:
.loc 5 14 0 prologue_end
.word 0xa9bb7bfd
.word 0x910003fd
.word 0xf9000bba
.word 0xaa0003fa
.word 0xfd000fa0
.word 0xfd0013a1
.word 0xfd0017a2
.word 0xfd001ba3

adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #584]
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
.word 0xaa1a03e0
.loc 5 16 0
.word 0xf9401fb1
.word 0xf9407a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xfd400fa0
.word 0xaa1a03e0
bl _p_6
.loc 5 17 0
.word 0xf9401fb1
.word 0xf9409a31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xfd4013a0
.word 0xaa1a03e0
bl _p_7
.loc 5 18 0
.word 0xf9401fb1
.word 0xf940ba31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xfd4017a0
.word 0xaa1a03e0
bl _p_8
.loc 5 19 0
.word 0xf9401fb1
.word 0xf940da31
.word 0xb4000051
.word 0xd63f0220
.word 0xaa1a03e0
.word 0xfd401ba0
.word 0xaa1a03e0
bl _p_9
.loc 5 20 0
.word 0xf9401fb1
.word 0xf940fa31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9401fb1
.word 0xf9410a31
.word 0xb4000051
.word 0xd63f0220
.word 0xf9400bba
.word 0x910003bf
.word 0xa8c57bfd
.word 0xd65f03c0

Lme_35:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController
bl Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool
bl Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode
bl Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool
bl Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor
bl Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor
bl Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor
bl Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor
bl Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle
bl Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool
bl Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor
bl Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor
bl Plugin_Share_Abstractions_BrowserOptions__ctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl Plugin_Share_Abstractions_ShareColor_get_A
bl Plugin_Share_Abstractions_ShareColor_set_A_int
bl Plugin_Share_Abstractions_ShareColor_get_R
bl Plugin_Share_Abstractions_ShareColor_set_R_int
bl Plugin_Share_Abstractions_ShareColor_get_G
bl Plugin_Share_Abstractions_ShareColor_set_G_int
bl Plugin_Share_Abstractions_ShareColor_get_B
bl Plugin_Share_Abstractions_ShareColor_set_B_int
bl Plugin_Share_Abstractions_ShareColor__ctor
bl Plugin_Share_Abstractions_ShareColor__ctor_int_int_int
bl Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int
bl Plugin_Share_Abstractions_ShareMessage_get_Title
bl Plugin_Share_Abstractions_ShareMessage_set_Title_string
bl Plugin_Share_Abstractions_ShareMessage_get_Text
bl Plugin_Share_Abstractions_ShareMessage_set_Text_string
bl Plugin_Share_Abstractions_ShareMessage_get_Url
bl Plugin_Share_Abstractions_ShareMessage_set_Url_string
bl Plugin_Share_Abstractions_ShareMessage__ctor
bl Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle
bl Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string
bl Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes
bl Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType
bl Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes
bl Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__
bl Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle
bl Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle
bl Plugin_Share_Abstractions_ShareOptions__ctor
bl Plugin_Share_Abstractions_ShareRectangle_get_X
bl Plugin_Share_Abstractions_ShareRectangle_set_X_double
bl Plugin_Share_Abstractions_ShareRectangle_get_Y
bl Plugin_Share_Abstractions_ShareRectangle_set_Y_double
bl Plugin_Share_Abstractions_ShareRectangle_get_Width
bl Plugin_Share_Abstractions_ShareRectangle_set_Width_double
bl Plugin_Share_Abstractions_ShareRectangle_get_Height
bl Plugin_Share_Abstractions_ShareRectangle_set_Height_double
bl Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double
bl method_addresses
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,13,12,31,0,68,14,64,157,8,158,7,68,13,29,16,12,31,0
	.byte 68,14,48,157,6,158,5,68,13,29,68,154,4,13,12,31,0,68,14,80,157,10,158,9,68,13,29,16,12,31,0,68
	.byte 14,80,157,10,158,9,68,13,29,68,150,8,16,12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8

.text
	.align 4
plt:
mono_aot_Plugin_Share_Abstractions_plt:
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int
plt_Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int:
_p_1:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #600]
br x16
.word 480
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareColor_set_A_int
plt_Plugin_Share_Abstractions_ShareColor_set_A_int:
_p_2:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #608]
br x16
.word 482
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareColor_set_R_int
plt_Plugin_Share_Abstractions_ShareColor_set_R_int:
_p_3:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #616]
br x16
.word 484
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareColor_set_G_int
plt_Plugin_Share_Abstractions_ShareColor_set_G_int:
_p_4:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #624]
br x16
.word 486
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareColor_set_B_int
plt_Plugin_Share_Abstractions_ShareColor_set_B_int:
_p_5:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #632]
br x16
.word 488
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareRectangle_set_X_double
plt_Plugin_Share_Abstractions_ShareRectangle_set_X_double:
_p_6:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #640]
br x16
.word 490
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareRectangle_set_Y_double
plt_Plugin_Share_Abstractions_ShareRectangle_set_Y_double:
_p_7:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #648]
br x16
.word 492
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareRectangle_set_Width_double
plt_Plugin_Share_Abstractions_ShareRectangle_set_Width_double:
_p_8:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #656]
br x16
.word 494
	.no_dead_strip plt_Plugin_Share_Abstractions_ShareRectangle_set_Height_double
plt_Plugin_Share_Abstractions_ShareRectangle_set_Height_double:
_p_9:
adrp x16, mono_aot_Plugin_Share_Abstractions_got@PAGE+0
add x16, x16, mono_aot_Plugin_Share_Abstractions_got@PAGEOFF
ldr x16, [x16, #664]
br x16
.word 496
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Plugin_Share_Abstractions_got, 672
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 3
	.quad Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "563E50A0-5A6D-4B21-BBC9-1F3A4854A9B8"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Plugin.Share.Abstractions"
.data
	.align 3
_mono_aot_file_info:

	.long 143,0
	.align 3
	.quad mono_aot_Plugin_Share_Abstractions_got
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad jit_code_start
	.align 3
	.quad jit_code_end
	.align 3
	.quad method_addresses
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad mem_end
	.align 3
	.quad assembly_guid
	.align 3
	.quad runtime_version
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad 0
	.align 3
	.quad globals
	.align 3
	.quad assembly_name
	.align 3
	.quad plt
	.align 3
	.quad plt_end
	.align 3
	.quad unwind_info
	.align 3
	.quad unbox_trampolines
	.align 3
	.quad unbox_trampolines_end
	.align 3
	.quad unbox_trampoline_addresses

	.long 74,672,10,55,70,391195135,0,3035
	.long 128,8,8,9,0,25,3824,776
	.long 584,248,0,448,552,328,0,240
	.long 96,768,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0
	.byte 169,28,68,113,27,201,8,30,172,172,192,163,121,253,95,62
	.globl _mono_aot_module_Plugin_Share_Abstractions_info
	.align 3
_mono_aot_module_Plugin_Share_Abstractions_info:
	.align 3
	.quad _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 16,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_3:

	.byte 5
	.asciz "System_ValueType"

	.byte 16,16
LDIFF_SYM6=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM7=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_2:

	.byte 5
	.asciz "System_Boolean"

	.byte 17,16
LDIFF_SYM10=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM11=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,16,0,7
	.asciz "System_Boolean"

LDIFF_SYM12=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM13=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM14=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_5:

	.byte 5
	.asciz "System_Int32"

	.byte 20,16
LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM16=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,35,16,0,7
	.asciz "System_Int32"

LDIFF_SYM17=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM18=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM19=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_4:

	.byte 5
	.asciz "Plugin_Share_Abstractions_ShareColor"

	.byte 32,16
LDIFF_SYM20=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM20
	.byte 2,35,0,6
	.asciz "<A>k__BackingField"

LDIFF_SYM21=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,16,6
	.asciz "<R>k__BackingField"

LDIFF_SYM22=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,20,6
	.asciz "<G>k__BackingField"

LDIFF_SYM23=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM23
	.byte 2,35,24,6
	.asciz "<B>k__BackingField"

LDIFF_SYM24=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM24
	.byte 2,35,28,0,7
	.asciz "Plugin_Share_Abstractions_ShareColor"

LDIFF_SYM25=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM25
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM26=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM26
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM27=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_0:

	.byte 5
	.asciz "Plugin_Share_Abstractions_BrowserOptions"

	.byte 48,16
LDIFF_SYM28=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM28
	.byte 2,35,0,6
	.asciz "<UseSafariWebViewController>k__BackingField"

LDIFF_SYM29=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,40,6
	.asciz "<UseSafariReaderMode>k__BackingField"

LDIFF_SYM30=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,41,6
	.asciz "<SafariBarTintColor>k__BackingField"

LDIFF_SYM31=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,16,6
	.asciz "<SafariControlTintColor>k__BackingField"

LDIFF_SYM32=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM32
	.byte 2,35,24,6
	.asciz "<ChromeShowTitle>k__BackingField"

LDIFF_SYM33=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM33
	.byte 2,35,42,6
	.asciz "<ChromeToolbarColor>k__BackingField"

LDIFF_SYM34=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,32,0,7
	.asciz "Plugin_Share_Abstractions_BrowserOptions"

LDIFF_SYM35=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM36=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM37=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:get_UseSafariWebViewController"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController"

	.byte 1,18
	.quad Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController
	.quad Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM38=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM39=Lfde0_end - Lfde0_start
	.long LDIFF_SYM39
Lfde0_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController

LDIFF_SYM40=Lme_0 - Plugin_Share_Abstractions_BrowserOptions_get_UseSafariWebViewController
	.long LDIFF_SYM40
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:set_UseSafariWebViewController"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool"

	.byte 1,18
	.quad Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool
	.quad Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM41=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM42=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM43=Lfde1_end - Lfde1_start
	.long LDIFF_SYM43
Lfde1_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool

LDIFF_SYM44=Lme_1 - Plugin_Share_Abstractions_BrowserOptions_set_UseSafariWebViewController_bool
	.long LDIFF_SYM44
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:get_UseSafariReaderMode"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode"

	.byte 1,23
	.quad Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode
	.quad Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM45=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM46=Lfde2_end - Lfde2_start
	.long LDIFF_SYM46
Lfde2_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode

LDIFF_SYM47=Lme_2 - Plugin_Share_Abstractions_BrowserOptions_get_UseSafariReaderMode
	.long LDIFF_SYM47
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:set_UseSafariReaderMode"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool"

	.byte 1,23
	.quad Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool
	.quad Lme_3

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM48=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM49=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM49
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM50=Lfde3_end - Lfde3_start
	.long LDIFF_SYM50
Lfde3_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool

LDIFF_SYM51=Lme_3 - Plugin_Share_Abstractions_BrowserOptions_set_UseSafariReaderMode_bool
	.long LDIFF_SYM51
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:get_SafariBarTintColor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor"

	.byte 1,29
	.quad Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor
	.quad Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM52=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM53=Lfde4_end - Lfde4_start
	.long LDIFF_SYM53
Lfde4_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor

LDIFF_SYM54=Lme_4 - Plugin_Share_Abstractions_BrowserOptions_get_SafariBarTintColor
	.long LDIFF_SYM54
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:set_SafariBarTintColor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor"

	.byte 1,29
	.quad Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor
	.quad Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM55=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM55
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM56=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM57=Lfde5_end - Lfde5_start
	.long LDIFF_SYM57
Lfde5_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor

LDIFF_SYM58=Lme_5 - Plugin_Share_Abstractions_BrowserOptions_set_SafariBarTintColor_Plugin_Share_Abstractions_ShareColor
	.long LDIFF_SYM58
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:get_SafariControlTintColor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor"

	.byte 1,34
	.quad Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor
	.quad Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM59=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM60=Lfde6_end - Lfde6_start
	.long LDIFF_SYM60
Lfde6_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor

LDIFF_SYM61=Lme_6 - Plugin_Share_Abstractions_BrowserOptions_get_SafariControlTintColor
	.long LDIFF_SYM61
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:set_SafariControlTintColor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor"

	.byte 1,34
	.quad Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor
	.quad Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM62=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM63=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM64=Lfde7_end - Lfde7_start
	.long LDIFF_SYM64
Lfde7_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor

LDIFF_SYM65=Lme_7 - Plugin_Share_Abstractions_BrowserOptions_set_SafariControlTintColor_Plugin_Share_Abstractions_ShareColor
	.long LDIFF_SYM65
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:get_ChromeShowTitle"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle"

	.byte 1,40
	.quad Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle
	.quad Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM66=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM67=Lfde8_end - Lfde8_start
	.long LDIFF_SYM67
Lfde8_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle

LDIFF_SYM68=Lme_8 - Plugin_Share_Abstractions_BrowserOptions_get_ChromeShowTitle
	.long LDIFF_SYM68
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:set_ChromeShowTitle"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool"

	.byte 1,40
	.quad Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool
	.quad Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM69=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM70=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM71=Lfde9_end - Lfde9_start
	.long LDIFF_SYM71
Lfde9_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool

LDIFF_SYM72=Lme_9 - Plugin_Share_Abstractions_BrowserOptions_set_ChromeShowTitle_bool
	.long LDIFF_SYM72
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:get_ChromeToolbarColor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor"

	.byte 1,45
	.quad Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor
	.quad Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM73=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM74=Lfde10_end - Lfde10_start
	.long LDIFF_SYM74
Lfde10_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor

LDIFF_SYM75=Lme_a - Plugin_Share_Abstractions_BrowserOptions_get_ChromeToolbarColor
	.long LDIFF_SYM75
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:set_ChromeToolbarColor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor"

	.byte 1,45
	.quad Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor
	.quad Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM76=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM77=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM78=Lfde11_end - Lfde11_start
	.long LDIFF_SYM78
Lfde11_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor

LDIFF_SYM79=Lme_b - Plugin_Share_Abstractions_BrowserOptions_set_ChromeToolbarColor_Plugin_Share_Abstractions_ShareColor
	.long LDIFF_SYM79
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.BrowserOptions:.ctor"
	.asciz "Plugin_Share_Abstractions_BrowserOptions__ctor"

	.byte 1,18
	.quad Plugin_Share_Abstractions_BrowserOptions__ctor
	.quad Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM80=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM80
	.byte 1,106,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM81=Lfde12_end - Lfde12_start
	.long LDIFF_SYM81
Lfde12_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_BrowserOptions__ctor

LDIFF_SYM82=Lme_c - Plugin_Share_Abstractions_BrowserOptions__ctor
	.long LDIFF_SYM82
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.align 3
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:get_A"
	.asciz "Plugin_Share_Abstractions_ShareColor_get_A"

	.byte 2,17
	.quad Plugin_Share_Abstractions_ShareColor_get_A
	.quad Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM83=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM84=Lfde13_end - Lfde13_start
	.long LDIFF_SYM84
Lfde13_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_get_A

LDIFF_SYM85=Lme_12 - Plugin_Share_Abstractions_ShareColor_get_A
	.long LDIFF_SYM85
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:set_A"
	.asciz "Plugin_Share_Abstractions_ShareColor_set_A_int"

	.byte 2,17
	.quad Plugin_Share_Abstractions_ShareColor_set_A_int
	.quad Lme_13

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM86=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM87=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM88=Lfde14_end - Lfde14_start
	.long LDIFF_SYM88
Lfde14_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_set_A_int

LDIFF_SYM89=Lme_13 - Plugin_Share_Abstractions_ShareColor_set_A_int
	.long LDIFF_SYM89
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:get_R"
	.asciz "Plugin_Share_Abstractions_ShareColor_get_R"

	.byte 2,21
	.quad Plugin_Share_Abstractions_ShareColor_get_R
	.quad Lme_14

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM90=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM91=Lfde15_end - Lfde15_start
	.long LDIFF_SYM91
Lfde15_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_get_R

LDIFF_SYM92=Lme_14 - Plugin_Share_Abstractions_ShareColor_get_R
	.long LDIFF_SYM92
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde15_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:set_R"
	.asciz "Plugin_Share_Abstractions_ShareColor_set_R_int"

	.byte 2,21
	.quad Plugin_Share_Abstractions_ShareColor_set_R_int
	.quad Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM93=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM94=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM95=Lfde16_end - Lfde16_start
	.long LDIFF_SYM95
Lfde16_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_set_R_int

LDIFF_SYM96=Lme_15 - Plugin_Share_Abstractions_ShareColor_set_R_int
	.long LDIFF_SYM96
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde16_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:get_G"
	.asciz "Plugin_Share_Abstractions_ShareColor_get_G"

	.byte 2,25
	.quad Plugin_Share_Abstractions_ShareColor_get_G
	.quad Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM97=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM97
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM98=Lfde17_end - Lfde17_start
	.long LDIFF_SYM98
Lfde17_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_get_G

LDIFF_SYM99=Lme_16 - Plugin_Share_Abstractions_ShareColor_get_G
	.long LDIFF_SYM99
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:set_G"
	.asciz "Plugin_Share_Abstractions_ShareColor_set_G_int"

	.byte 2,25
	.quad Plugin_Share_Abstractions_ShareColor_set_G_int
	.quad Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM100=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM101=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM102=Lfde18_end - Lfde18_start
	.long LDIFF_SYM102
Lfde18_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_set_G_int

LDIFF_SYM103=Lme_17 - Plugin_Share_Abstractions_ShareColor_set_G_int
	.long LDIFF_SYM103
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:get_B"
	.asciz "Plugin_Share_Abstractions_ShareColor_get_B"

	.byte 2,29
	.quad Plugin_Share_Abstractions_ShareColor_get_B
	.quad Lme_18

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM104=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM105=Lfde19_end - Lfde19_start
	.long LDIFF_SYM105
Lfde19_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_get_B

LDIFF_SYM106=Lme_18 - Plugin_Share_Abstractions_ShareColor_get_B
	.long LDIFF_SYM106
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:set_B"
	.asciz "Plugin_Share_Abstractions_ShareColor_set_B_int"

	.byte 2,29
	.quad Plugin_Share_Abstractions_ShareColor_set_B_int
	.quad Lme_19

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM107=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM108=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM108
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM109=Lfde20_end - Lfde20_start
	.long LDIFF_SYM109
Lfde20_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor_set_B_int

LDIFF_SYM110=Lme_19 - Plugin_Share_Abstractions_ShareColor_set_B_int
	.long LDIFF_SYM110
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:.ctor"
	.asciz "Plugin_Share_Abstractions_ShareColor__ctor"

	.byte 2,34
	.quad Plugin_Share_Abstractions_ShareColor__ctor
	.quad Lme_1a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM111=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM112=Lfde21_end - Lfde21_start
	.long LDIFF_SYM112
Lfde21_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor__ctor

LDIFF_SYM113=Lme_1a - Plugin_Share_Abstractions_ShareColor__ctor
	.long LDIFF_SYM113
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:.ctor"
	.asciz "Plugin_Share_Abstractions_ShareColor__ctor_int_int_int"

	.byte 2,44
	.quad Plugin_Share_Abstractions_ShareColor__ctor_int_int_int
	.quad Lme_1b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM114=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,141,16,3
	.asciz "r"

LDIFF_SYM115=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM115
	.byte 2,141,24,3
	.asciz "g"

LDIFF_SYM116=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,141,32,3
	.asciz "b"

LDIFF_SYM117=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,141,40,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM118=Lfde22_end - Lfde22_start
	.long LDIFF_SYM118
Lfde22_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor__ctor_int_int_int

LDIFF_SYM119=Lme_1b - Plugin_Share_Abstractions_ShareColor__ctor_int_int_int
	.long LDIFF_SYM119
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.align 3
Lfde22_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareColor:.ctor"
	.asciz "Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int"

	.byte 2,55
	.quad Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int
	.quad Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM120=LTDIE_4_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM120
	.byte 1,102,3
	.asciz "r"

LDIFF_SYM121=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,141,24,3
	.asciz "g"

LDIFF_SYM122=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,141,32,3
	.asciz "b"

LDIFF_SYM123=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,141,40,3
	.asciz "a"

LDIFF_SYM124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM125=Lfde23_end - Lfde23_start
	.long LDIFF_SYM125
Lfde23_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int

LDIFF_SYM126=Lme_1c - Plugin_Share_Abstractions_ShareColor__ctor_int_int_int_int
	.long LDIFF_SYM126
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,150,8
	.align 3
Lfde23_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 5
	.asciz "Plugin_Share_Abstractions_ShareMessage"

	.byte 40,16
LDIFF_SYM127=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,0,6
	.asciz "<Title>k__BackingField"

LDIFF_SYM128=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,16,6
	.asciz "<Text>k__BackingField"

LDIFF_SYM129=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,24,6
	.asciz "<Url>k__BackingField"

LDIFF_SYM130=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,32,0,7
	.asciz "Plugin_Share_Abstractions_ShareMessage"

LDIFF_SYM131=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM131
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM132=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM133=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:get_Title"
	.asciz "Plugin_Share_Abstractions_ShareMessage_get_Title"

	.byte 3,17
	.quad Plugin_Share_Abstractions_ShareMessage_get_Title
	.quad Lme_1d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM134=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM135=Lfde24_end - Lfde24_start
	.long LDIFF_SYM135
Lfde24_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage_get_Title

LDIFF_SYM136=Lme_1d - Plugin_Share_Abstractions_ShareMessage_get_Title
	.long LDIFF_SYM136
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:set_Title"
	.asciz "Plugin_Share_Abstractions_ShareMessage_set_Title_string"

	.byte 3,17
	.quad Plugin_Share_Abstractions_ShareMessage_set_Title_string
	.quad Lme_1e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM137=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM138=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM139=Lfde25_end - Lfde25_start
	.long LDIFF_SYM139
Lfde25_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage_set_Title_string

LDIFF_SYM140=Lme_1e - Plugin_Share_Abstractions_ShareMessage_set_Title_string
	.long LDIFF_SYM140
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:get_Text"
	.asciz "Plugin_Share_Abstractions_ShareMessage_get_Text"

	.byte 3,22
	.quad Plugin_Share_Abstractions_ShareMessage_get_Text
	.quad Lme_1f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM141=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM141
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM142=Lfde26_end - Lfde26_start
	.long LDIFF_SYM142
Lfde26_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage_get_Text

LDIFF_SYM143=Lme_1f - Plugin_Share_Abstractions_ShareMessage_get_Text
	.long LDIFF_SYM143
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:set_Text"
	.asciz "Plugin_Share_Abstractions_ShareMessage_set_Text_string"

	.byte 3,22
	.quad Plugin_Share_Abstractions_ShareMessage_set_Text_string
	.quad Lme_20

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM144=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM145=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM146=Lfde27_end - Lfde27_start
	.long LDIFF_SYM146
Lfde27_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage_set_Text_string

LDIFF_SYM147=Lme_20 - Plugin_Share_Abstractions_ShareMessage_set_Text_string
	.long LDIFF_SYM147
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:get_Url"
	.asciz "Plugin_Share_Abstractions_ShareMessage_get_Url"

	.byte 3,27
	.quad Plugin_Share_Abstractions_ShareMessage_get_Url
	.quad Lme_21

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM148=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM149=Lfde28_end - Lfde28_start
	.long LDIFF_SYM149
Lfde28_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage_get_Url

LDIFF_SYM150=Lme_21 - Plugin_Share_Abstractions_ShareMessage_get_Url
	.long LDIFF_SYM150
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:set_Url"
	.asciz "Plugin_Share_Abstractions_ShareMessage_set_Url_string"

	.byte 3,27
	.quad Plugin_Share_Abstractions_ShareMessage_set_Url_string
	.quad Lme_22

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM151=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM151
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM152=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM152
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM153=Lfde29_end - Lfde29_start
	.long LDIFF_SYM153
Lfde29_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage_set_Url_string

LDIFF_SYM154=Lme_22 - Plugin_Share_Abstractions_ShareMessage_set_Url_string
	.long LDIFF_SYM154
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareMessage:.ctor"
	.asciz "Plugin_Share_Abstractions_ShareMessage__ctor"

	.byte 0,0
	.quad Plugin_Share_Abstractions_ShareMessage__ctor
	.quad Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM155=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM156=Lfde30_end - Lfde30_start
	.long LDIFF_SYM156
Lfde30_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareMessage__ctor

LDIFF_SYM157=Lme_23 - Plugin_Share_Abstractions_ShareMessage__ctor
	.long LDIFF_SYM157
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde30_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_8:

	.byte 8
	.asciz "Plugin_Share_Abstractions_ShareAppControlType"

	.byte 4
LDIFF_SYM158=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 9
	.asciz "Link"

	.byte 0,9
	.asciz "TextInEmail"

	.byte 1,9
	.asciz "TextInSMS"

	.byte 2,9
	.asciz "TextInMMS"

	.byte 3,9
	.asciz "FileInEmail"

	.byte 4,9
	.asciz "FileInMessage"

	.byte 5,0,7
	.asciz "Plugin_Share_Abstractions_ShareAppControlType"

LDIFF_SYM159=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM160=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM160
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM161=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM161
LTDIE_10:

	.byte 5
	.asciz "System_Double"

	.byte 24,16
LDIFF_SYM162=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM163=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,16,0,7
	.asciz "System_Double"

LDIFF_SYM164=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM165=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM166=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM166
LTDIE_9:

	.byte 5
	.asciz "Plugin_Share_Abstractions_ShareRectangle"

	.byte 48,16
LDIFF_SYM167=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,0,6
	.asciz "<X>k__BackingField"

LDIFF_SYM168=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,16,6
	.asciz "<Y>k__BackingField"

LDIFF_SYM169=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,24,6
	.asciz "<Width>k__BackingField"

LDIFF_SYM170=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,32,6
	.asciz "<Height>k__BackingField"

LDIFF_SYM171=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,40,0,7
	.asciz "Plugin_Share_Abstractions_ShareRectangle"

LDIFF_SYM172=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM172
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM173=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM173
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM174=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM174
LTDIE_7:

	.byte 5
	.asciz "Plugin_Share_Abstractions_ShareOptions"

	.byte 48,16
LDIFF_SYM175=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,0,6
	.asciz "<ChooserTitle>k__BackingField"

LDIFF_SYM176=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,16,6
	.asciz "<ExcludedAppControlTypes>k__BackingField"

LDIFF_SYM177=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,40,6
	.asciz "<ExcludedUIActivityTypes>k__BackingField"

LDIFF_SYM178=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM178
	.byte 2,35,24,6
	.asciz "<PopoverAnchorRectangle>k__BackingField"

LDIFF_SYM179=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM179
	.byte 2,35,32,0,7
	.asciz "Plugin_Share_Abstractions_ShareOptions"

LDIFF_SYM180=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM180
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM181=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM181
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM182=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM182
	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:get_ChooserTitle"
	.asciz "Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle"

	.byte 4,18
	.quad Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle
	.quad Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM183=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM183
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM184=Lfde31_end - Lfde31_start
	.long LDIFF_SYM184
Lfde31_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle

LDIFF_SYM185=Lme_24 - Plugin_Share_Abstractions_ShareOptions_get_ChooserTitle
	.long LDIFF_SYM185
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:set_ChooserTitle"
	.asciz "Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string"

	.byte 4,18
	.quad Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string
	.quad Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM186=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM186
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM187=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM187
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM188=Lfde32_end - Lfde32_start
	.long LDIFF_SYM188
Lfde32_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string

LDIFF_SYM189=Lme_25 - Plugin_Share_Abstractions_ShareOptions_set_ChooserTitle_string
	.long LDIFF_SYM189
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:get_ExcludedAppControlTypes"
	.asciz "Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes"

	.byte 4,24
	.quad Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes
	.quad Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM190=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM191=Lfde33_end - Lfde33_start
	.long LDIFF_SYM191
Lfde33_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes

LDIFF_SYM192=Lme_26 - Plugin_Share_Abstractions_ShareOptions_get_ExcludedAppControlTypes
	.long LDIFF_SYM192
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde33_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:set_ExcludedAppControlTypes"
	.asciz "Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType"

	.byte 4,24
	.quad Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType
	.quad Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM193=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM194=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM195=Lfde34_end - Lfde34_start
	.long LDIFF_SYM195
Lfde34_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType

LDIFF_SYM196=Lme_27 - Plugin_Share_Abstractions_ShareOptions_set_ExcludedAppControlTypes_Plugin_Share_Abstractions_ShareAppControlType
	.long LDIFF_SYM196
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde34_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:get_ExcludedUIActivityTypes"
	.asciz "Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes"

	.byte 4,30
	.quad Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes
	.quad Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM197=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM198=Lfde35_end - Lfde35_start
	.long LDIFF_SYM198
Lfde35_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes

LDIFF_SYM199=Lme_28 - Plugin_Share_Abstractions_ShareOptions_get_ExcludedUIActivityTypes
	.long LDIFF_SYM199
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:set_ExcludedUIActivityTypes"
	.asciz "Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__"

	.byte 4,30
	.quad Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__
	.quad Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM200=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM201=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM201
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM202=Lfde36_end - Lfde36_start
	.long LDIFF_SYM202
Lfde36_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__

LDIFF_SYM203=Lme_29 - Plugin_Share_Abstractions_ShareOptions_set_ExcludedUIActivityTypes_Plugin_Share_Abstractions_ShareUIActivityType__
	.long LDIFF_SYM203
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:get_PopoverAnchorRectangle"
	.asciz "Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle"

	.byte 4,36
	.quad Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle
	.quad Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM204=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM204
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM205=Lfde37_end - Lfde37_start
	.long LDIFF_SYM205
Lfde37_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle

LDIFF_SYM206=Lme_2a - Plugin_Share_Abstractions_ShareOptions_get_PopoverAnchorRectangle
	.long LDIFF_SYM206
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:set_PopoverAnchorRectangle"
	.asciz "Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle"

	.byte 4,36
	.quad Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle
	.quad Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM207=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM207
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM208=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM209=Lfde38_end - Lfde38_start
	.long LDIFF_SYM209
Lfde38_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle

LDIFF_SYM210=Lme_2b - Plugin_Share_Abstractions_ShareOptions_set_PopoverAnchorRectangle_Plugin_Share_Abstractions_ShareRectangle
	.long LDIFF_SYM210
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareOptions:.ctor"
	.asciz "Plugin_Share_Abstractions_ShareOptions__ctor"

	.byte 0,0
	.quad Plugin_Share_Abstractions_ShareOptions__ctor
	.quad Lme_2c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM211=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM212=Lfde39_end - Lfde39_start
	.long LDIFF_SYM212
Lfde39_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareOptions__ctor

LDIFF_SYM213=Lme_2c - Plugin_Share_Abstractions_ShareOptions__ctor
	.long LDIFF_SYM213
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:get_X"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_get_X"

	.byte 5,9
	.quad Plugin_Share_Abstractions_ShareRectangle_get_X
	.quad Lme_2d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM214=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM215=Lfde40_end - Lfde40_start
	.long LDIFF_SYM215
Lfde40_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_get_X

LDIFF_SYM216=Lme_2d - Plugin_Share_Abstractions_ShareRectangle_get_X
	.long LDIFF_SYM216
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:set_X"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_set_X_double"

	.byte 5,9
	.quad Plugin_Share_Abstractions_ShareRectangle_set_X_double
	.quad Lme_2e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM217=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM218=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM219=Lfde41_end - Lfde41_start
	.long LDIFF_SYM219
Lfde41_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_set_X_double

LDIFF_SYM220=Lme_2e - Plugin_Share_Abstractions_ShareRectangle_set_X_double
	.long LDIFF_SYM220
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:get_Y"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_get_Y"

	.byte 5,10
	.quad Plugin_Share_Abstractions_ShareRectangle_get_Y
	.quad Lme_2f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM221=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM222=Lfde42_end - Lfde42_start
	.long LDIFF_SYM222
Lfde42_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_get_Y

LDIFF_SYM223=Lme_2f - Plugin_Share_Abstractions_ShareRectangle_get_Y
	.long LDIFF_SYM223
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:set_Y"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_set_Y_double"

	.byte 5,10
	.quad Plugin_Share_Abstractions_ShareRectangle_set_Y_double
	.quad Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM224=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM225=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM226=Lfde43_end - Lfde43_start
	.long LDIFF_SYM226
Lfde43_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_set_Y_double

LDIFF_SYM227=Lme_30 - Plugin_Share_Abstractions_ShareRectangle_set_Y_double
	.long LDIFF_SYM227
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde43_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:get_Width"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_get_Width"

	.byte 5,11
	.quad Plugin_Share_Abstractions_ShareRectangle_get_Width
	.quad Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM228=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM229=Lfde44_end - Lfde44_start
	.long LDIFF_SYM229
Lfde44_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_get_Width

LDIFF_SYM230=Lme_31 - Plugin_Share_Abstractions_ShareRectangle_get_Width
	.long LDIFF_SYM230
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde44_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:set_Width"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_set_Width_double"

	.byte 5,11
	.quad Plugin_Share_Abstractions_ShareRectangle_set_Width_double
	.quad Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM231=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM232=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM233=Lfde45_end - Lfde45_start
	.long LDIFF_SYM233
Lfde45_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_set_Width_double

LDIFF_SYM234=Lme_32 - Plugin_Share_Abstractions_ShareRectangle_set_Width_double
	.long LDIFF_SYM234
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde45_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:get_Height"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_get_Height"

	.byte 5,12
	.quad Plugin_Share_Abstractions_ShareRectangle_get_Height
	.quad Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM235=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM235
	.byte 2,141,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM236=Lfde46_end - Lfde46_start
	.long LDIFF_SYM236
Lfde46_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_get_Height

LDIFF_SYM237=Lme_33 - Plugin_Share_Abstractions_ShareRectangle_get_Height
	.long LDIFF_SYM237
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.align 3
Lfde46_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:set_Height"
	.asciz "Plugin_Share_Abstractions_ShareRectangle_set_Height_double"

	.byte 5,12
	.quad Plugin_Share_Abstractions_ShareRectangle_set_Height_double
	.quad Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM238=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM238
	.byte 2,141,16,3
	.asciz "value"

LDIFF_SYM239=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,141,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM240=Lfde47_end - Lfde47_start
	.long LDIFF_SYM240
Lfde47_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle_set_Height_double

LDIFF_SYM241=Lme_34 - Plugin_Share_Abstractions_ShareRectangle_set_Height_double
	.long LDIFF_SYM241
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.align 3
Lfde47_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Plugin.Share.Abstractions.ShareRectangle:.ctor"
	.asciz "Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double"

	.byte 5,14
	.quad Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double
	.quad Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM242=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM242
	.byte 1,106,3
	.asciz "x"

LDIFF_SYM243=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM243
	.byte 2,141,24,3
	.asciz "y"

LDIFF_SYM244=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,141,32,3
	.asciz "width"

LDIFF_SYM245=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,141,40,3
	.asciz "height"

LDIFF_SYM246=LDIE_R8 - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,141,48,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM247=Lfde48_end - Lfde48_start
	.long LDIFF_SYM247
Lfde48_start:

	.long 0
	.align 3
	.quad Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double

LDIFF_SYM248=Lme_35 - Plugin_Share_Abstractions_ShareRectangle__ctor_double_double_double_double
	.long LDIFF_SYM248
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.align 3
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
