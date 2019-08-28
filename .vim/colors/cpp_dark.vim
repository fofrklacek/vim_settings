set background=dark

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cpp_dark"

if has("gui_running") || &t_Co == 256
	"vitual
	hi cppModifier cterm=bold ctermbg=16 ctermfg=51
	"const, static
	hi cStorageClass cterm=bold ctermbg=16 ctermfg=28
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
	hi cRepeat cterm=NONE ctermfg=93 ctermbg=232	
	"class, template, typename
	hi cppStructure cterm=BOLD ctermfg=172 ctermbg=0
	"typedef, struct

	highlight! link cStructure cppStructure
else
endif
