set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cpp_dark"

if has("gui_running") || &t_Co == 256
	"vitual
	hi cppModifier cterm=BOLD ctermfg=51 ctermbg=16
	"const, static
	hi cStorageClass cterm=BOLD ctermfg=28 ctermbg=16
	"/*,*/
	hi cCommentStart cterm=NONE ctermfg=39 ctermbg=16	
	" inside comment
	hi cComment cterm=NONE ctermfg=39 ctermbg=16	
	"float, long, int, time_t, double, char
	hi cType cterm=BOLD ctermfg=46 ctermbg=16
	" 123, 0b000b, 0x1a3d
	hi cppNumber cterm=NONE ctermfg=198 ctermbg=16
	"false,true
	highlight! link cppBoolean cppNumber
	"NULL, EOF
	hi cConstant cterm=bold ctermfg=57 ctermbg=16	
	"for, while
	hi cRepeat cterm=NONE ctermfg=93 ctermbg=16
	"class, template, typename
	hi cppStructure cterm=BOLD ctermfg=172 ctermbg=16
	"typedef, struct
	highlight! link cStructure cppStructure
	"#define, #undef
	hi cDefine cterm=NONE ctermfg=160 ctermbg=16
	"<iostream>, <string>
	hi cIncluded cterm=NONE ctermfg=123 ctermbg=16
	"#include
	hi cInclude cterm=NONE ctermfg=238 ctermbg=16
	"#ifdef, #elif, #endif
	highlight! link cPrecondit cInclude
	"visual mode
	hi Visual cterm=BOLD ctermbg=233
	"std, filesystem, ios, sf
	hi cppNamespace cterm=NONE ctermfg=21 ctermbg=16
else
endif
