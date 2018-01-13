"
" A vim colorscheme that tries to replicate the GitHub colors
" as closely as possible.
" Based on "badwolf", the incredible work by Steve Losh.
"

" Supporting code -------------------------------------------------------------
" Preamble {{{

if !has("gui_running") && &t_Co != 88 && &t_Co != 256
    finish
endif

set background=light

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "github-2017"

" }}}
" Palette {{{

let s:ghc = {}

" GitHub carefully selects a magnificent pure-black for the text and pure
" white for the background
let s:ghc.black = ['000000', 16]
let s:ghc.white = ['ffffff', 15]

" Colors used in the actual syntax highlighthing
let s:ghc.sky     = ['005CC5', 26]
let s:ghc.plum    = ['6F42C1', 98]
let s:ghc.fire    = ['D73A49', 160]
let s:ghc.strings = ['032f62', 16]

" This gray is used for the comments only
let s:ghc.gray = ['6A737D', 244]

" This gray is used for the line numbers only
let s:ghc.cloud = ['BABBBD', 250]

" Colors used in the diff view
let s:ghc.diff_add_light    = ['E7FFEE', 158]
let s:ghc.diff_add_dark     = ['AEF1BF', 121]
let s:ghc.diff_remove_light = ['FFEEF0', 224]
let s:ghc.diff_remove_dark  = ['FCB9C1', 217]

" Color used when selecting a line
let s:ghc.sun = ['FFFBDF', 230]

" Colors used in different areas trought the UI. As such, those are also used
" for vim UI elements only.
let s:ghc.overcast = ['F1F8FF', 195]
let s:ghc.almost_black = ['25292E', 234]
let s:ghc.sky_vivid = ['1269D3', 26]
let s:ghc.approve = ['30A64A', 34]
let s:ghc.orange = ['E16221', 208]

" }}}
" Highlighting Function {{{
function! s:HL(group, fg, ...)
    " Arguments: group, guifg, guibg, gui, guisp

    let histring = 'hi ' . a:group . ' '

    if strlen(a:fg)
        if a:fg == 'fg'
            let histring .= 'guifg=fg ctermfg=fg '
        else
            let c = get(s:ghc, a:fg)
            let histring .= 'guifg=#' . c[0] . ' ctermfg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 1 && strlen(a:1)
        if a:1 == 'bg'
            let histring .= 'guibg=bg ctermbg=bg '
        else
            let c = get(s:ghc, a:1)
            let histring .= 'guibg=#' . c[0] . ' ctermbg=' . c[1] . ' '
        endif
    endif

    if a:0 >= 2 && strlen(a:2)
        let histring .= 'gui=' . a:2 . ' cterm=' . a:2 . ' '
    endif

    if a:0 >= 3 && strlen(a:3)
        let c = get(s:ghc, a:3)
        let histring .= 'guisp=#' . c[0] . ' '
    endif

    " echom histring

    execute histring
endfunction
" }}}
" Configuration Options {{{

" None yet :)

" }}}

" Actual colorscheme ----------------------------------------------------------
" Vanilla Vim {{{

" General/UI {{{

call s:HL('Normal', 'black', 'white')

"call s:HL('Folded', 'mediumgravel', 'bg', 'none')

"call s:HL('VertSplit', 'lightgravel', 'bg', 'none')

"call s:HL('CursorLine',   '', 'darkgravel', 'none')
"call s:HL('CursorColumn', '', 'darkgravel')
"call s:HL('ColorColumn',  '', 'darkgravel')

"call s:HL('TabLine', 'plain', s:tabline, 'none')
"call s:HL('TabLineFill', 'plain', s:tabline, 'none')
"call s:HL('TabLineSel', 'coal', 'tardis', 'none')

"call s:HL('MatchParen', 'dalespale', 'darkgravel', 'bold')

"call s:HL('NonText',    'deepgravel', 'bg')
"call s:HL('SpecialKey', 'deepgravel', 'bg')

"call s:HL('Visual',    '',  'deepgravel')
"call s:HL('VisualNOS', '',  'deepgravel')

"call s:HL('Search',    'coal', 'dalespale', 'bold')
"call s:HL('IncSearch', 'coal', 'tardis',    'bold')

"call s:HL('Underlined', 'fg', '', 'underline')

"call s:HL('StatusLine',   'coal', 'tardis',     'bold')
"call s:HL('StatusLineNC', 'snow', 'deepgravel', 'bold')

"call s:HL('Directory', 'dirtyblonde', '', 'bold')

"call s:HL('Title', 'lime')

"call s:HL('ErrorMsg',   'taffy',       'bg', 'bold')
"call s:HL('MoreMsg',    'dalespale',   '',   'bold')
"call s:HL('ModeMsg',    'dirtyblonde', '',   'bold')
"call s:HL('Question',   'dirtyblonde', '',   'bold')
"call s:HL('WarningMsg', 'dress',       '',   'bold')

"" This is a ctags tag, not an HTML one.  'Something you can use c-] on'.
"call s:HL('Tag', '', '', 'bold')

"" hi IndentGuides                  guibg=#373737
"" hi WildMenu        guifg=#66D9EF guibg=#000000

"" }}}
" Gutter {{{

call s:HL('LineNr', 'cloud', 'white')
call s:HL('SignColumn', '', 'white')
call s:HL('FoldColumn', 'cloud', 'white')

" }}}
"" Cursor {{{

"call s:HL('Cursor',  'coal', 'tardis', 'bold')
"call s:HL('vCursor', 'coal', 'tardis', 'bold')
"call s:HL('iCursor', 'coal', 'tardis', 'none')

"" }}}
" Syntax highlighting {{{

call s:HL('Special', 'fire')
call s:HL('Comment',        'gray')
call s:HL('Todo',           'sky', 'bg')
call s:HL('SpecialComment', 'sky', 'bg')
call s:HL('String', 'strings')
call s:HL('Statement',   'fire')
call s:HL('Keyword',     'fire')
call s:HL('Conditional', 'fire')
call s:HL('Operator',    'fire')
call s:HL('Label',       'black')
call s:HL('Repeat',      'fire')
call s:HL('Identifier', 'fire', '', 'none')
call s:HL('Function',   'plum', '', 'none')

"" Preprocessor stuff is lime, to make it pop.
""
"" This includes imports in any given language, because they should usually be
"" grouped together at the beginning of a file.  If they're in the middle of some
"" other code they should stand out, because something tricky is
"" probably going on.
call s:HL('PreProc',   'plum', '', 'none')
"call s:HL('Macro',     'lime', '', 'none')
"call s:HL('Define',    'lime', '', 'none')
"call s:HL('PreCondit', 'lime', '', 'bold')

call s:HL('Constant',  'sky')
call s:HL('Character', 'sky')
call s:HL('Boolean',   'sky')
call s:HL('Number', 'sky')
call s:HL('Float',  'sky')
call s:HL('SpecialChar', 'sky')
call s:HL('Type', 'sky', '', 'none')
call s:HL('StorageClass', 'sky')
call s:HL('Structure', 'sky')
call s:HL('Typedef', 'sky')
call s:HL('Exception', 'fire')

"" Misc
"call s:HL('Error',  'snow',   'taffy', 'bold')
"call s:HL('Debug',  'snow',   '',      'bold')
"call s:HL('Ignore', 'gravel', '',      '')

" }}}
"" Completion Menu {{{

"call s:HL('Pmenu', 'plain', 'deepergravel')
"call s:HL('PmenuSel', 'coal', 'tardis', 'bold')
"call s:HL('PmenuSbar', '', 'deepergravel')
"call s:HL('PmenuThumb', 'brightgravel')

"" }}}
"" Diffs {{{

call s:HL('DiffDelete', '', 'diff_remove_light')
call s:HL('DiffAdd',    '',     'diff_add_light')
call s:HL('DiffChange', '',     'diff_add_dark')
" call s:HL('DiffText',   'snow', 'deepergravel', 'bold')

"" }}}
"" Spelling {{{

"if has("spell")
"    call s:HL('SpellCap', 'dalespale', 'bg', 'undercurl,bold', 'dalespale')
"    call s:HL('SpellBad', '', 'bg', 'undercurl', 'dalespale')
"    call s:HL('SpellLocal', '', '', 'undercurl', 'dalespale')
"    call s:HL('SpellRare', '', '', 'undercurl', 'dalespale')
"endif

"" }}}

"" }}}
"" Plugins {{{

"" CtrlP {{{

"    " the message when no match is found
"    call s:HL('CtrlPNoEntries', 'snow', 'taffy', 'bold')

"    " the matched pattern
"    call s:HL('CtrlPMatch', 'orange', 'bg', 'none')

"    " the line prefix '>' in the match window
"    call s:HL('CtrlPLinePre', 'deepgravel', 'bg', 'none')

"    " the prompt’s base
"    call s:HL('CtrlPPrtBase', 'deepgravel', 'bg', 'none')

"    " the prompt’s text
"    call s:HL('CtrlPPrtText', 'plain', 'bg', 'none')

"    " the prompt’s cursor when moving over the text
"    call s:HL('CtrlPPrtCursor', 'coal', 'tardis', 'bold')

"    " 'prt' or 'win', also for 'regex'
"    call s:HL('CtrlPMode1', 'coal', 'tardis', 'bold')

"    " 'file' or 'path', also for the local working dir
"    call s:HL('CtrlPMode2', 'coal', 'tardis', 'bold')

"    " the scanning status
"    call s:HL('CtrlPStats', 'coal', 'tardis', 'bold')

"    " TODO: CtrlP extensions.
"    " CtrlPTabExtra  : the part of each line that’s not matched against (Comment)
"    " CtrlPqfLineCol : the line and column numbers in quickfix mode (|s:HL-Search|)
"    " CtrlPUndoT     : the elapsed time in undo mode (|s:HL-Directory|)
"    " CtrlPUndoBr    : the square brackets [] in undo mode (Comment)
"    " CtrlPUndoNr    : the undo number inside [] in undo mode (String)

"" }}}
"" EasyMotion {{{

"call s:HL('EasyMotionTarget', 'tardis',     'bg', 'bold')
"call s:HL('EasyMotionShade',  'deepgravel', 'bg')

"" }}}
"" Interesting Words {{{

"" These are only used if you're me or have copied the <leader>hNUM mappings
"" from my Vimrc.
"call s:HL('InterestingWord1', 'coal', 'orange')
"call s:HL('InterestingWord2', 'coal', 'lime')
"call s:HL('InterestingWord3', 'coal', 'saltwatertaffy')
"call s:HL('InterestingWord4', 'coal', 'toffee')
"call s:HL('InterestingWord5', 'coal', 'dress')
"call s:HL('InterestingWord6', 'coal', 'taffy')


"" }}}
"" Makegreen {{{

"" hi GreenBar term=reverse ctermfg=white ctermbg=green guifg=coal guibg=#9edf1c
"" hi RedBar   term=reverse ctermfg=white ctermbg=red guifg=white guibg=#C50048

"" }}}
"" Rainbow Parentheses {{{

"call s:HL('level16c', 'mediumgravel',   '', 'bold')
"call s:HL('level15c', 'dalespale',      '', '')
"call s:HL('level14c', 'dress',          '', '')
"call s:HL('level13c', 'orange',         '', '')
"call s:HL('level12c', 'tardis',         '', '')
"call s:HL('level11c', 'lime',           '', '')
"call s:HL('level10c', 'toffee',         '', '')
"call s:HL('level9c',  'saltwatertaffy', '', '')
"call s:HL('level8c',  'coffee',         '', '')
"call s:HL('level7c',  'dalespale',      '', '')
"call s:HL('level6c',  'dress',          '', '')
"call s:HL('level5c',  'orange',         '', '')
"call s:HL('level4c',  'tardis',         '', '')
"call s:HL('level3c',  'lime',           '', '')
"call s:HL('level2c',  'toffee',         '', '')
"call s:HL('level1c',  'saltwatertaffy', '', '')

"" }}}
"" ShowMarks {{{

"call s:HL('ShowMarksHLl', 'tardis', 'blackgravel')
"call s:HL('ShowMarksHLu', 'tardis', 'blackgravel')
"call s:HL('ShowMarksHLo', 'tardis', 'blackgravel')
"call s:HL('ShowMarksHLm', 'tardis', 'blackgravel')

"" }}}

"" }}}
"" Filetype-specific {{{

"" Vim {{{

call s:HL('vimCommand', 'fire')
call s:HL('vimIsCommand', 'sky')
call s:HL('vimNotFunc', 'fire')
call s:HL('vimLet', 'fire')
call s:HL('vimUserFunc', 'plum')
call s:HL('vimParenSep', 'black')
call s:HL('vimOption', 'sky')
call s:HL('vimSet', 'sky')

"" }}}
" JavaScript {{{

call s:HL('jsGlobalNodeObjects', 'sky')
call s:HL('jsVariableDef', 'sky')
call s:HL('jsThis', 'sky')
call s:HL('jsThis', 'sky')

call s:HL('jsStorageClass', 'fire')
call s:HL('jsImport', 'fire')
call s:HL('jsFrom', 'fire')
call s:HL('jsModuleAs', 'fire')

call s:HL('jsClassDefinition', 'plum')
call s:HL('jsDocType', 'plum')
call s:HL('jsClassFuncName', 'plum')
call s:HL('jsFuncCall', 'plum')
call s:HL('jsGlobalObjects', 'plum')
call s:HL('jsExceptions', 'plum')

" }}}

"" }}}
