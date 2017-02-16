" ===============================================================
" github
" 
" URL: https://github.com/albertorestifo/github.vim
" Author: Alberto Restifo &lt;alberto@hike.ninja&gt;
" License: MIT
" Last Change: 2017/02/16 12:06
" ===============================================================

let g:colors_name="github"
hi clear
if exists("syntax_on")
  syntax reset
endif
set background=light

hi Bold gui=bold cterm=bold
hi ColorColumn guibg=#f8f8f8 ctermbg=15 gui=NONE cterm=NONE
hi Cursor guibg=#333333 ctermbg=236 gui=NONE cterm=NONE
hi CursorIM guibg=#333333 ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guibg=#f8f8f8 ctermbg=15 gui=NONE cterm=NONE
hi CursorLineNumber guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guibg=#eaffea ctermbg=255 gui=NONE cterm=NONE
hi DiffChange guibg=#eaffea ctermbg=255 gui=NONE cterm=NONE
hi DiffDelete guibg=#ffecec ctermbg=255 gui=NONE cterm=NONE
hi DiffText guibg=#55a532 ctermbg=71 gui=NONE cterm=NONE
hi ErrorMsg guifg=#bd2c00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#d8d8d8 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi VertSplit guifg=#d8d8d8 ctermfg=188 guibg=#f8f8f8 ctermbg=15 gui=NONE cterm=NONE
hi IncSearch guibg=#ffe3b4 ctermbg=223 gui=NONE cterm=NONE
hi Italic gui=italic cterm=italic
hi LineNr guifg=#969896 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guibg=#ffe3b4 ctermbg=223 gui=NONE cterm=NONE
hi NonText guifg=#d8d8d8 ctermfg=188 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=#333333 ctermfg=236 guibg=#ffffff ctermbg=15 gui=NONE cterm=NONE
hi PMenu guifg=#333333 ctermfg=236 guibg=#e0e0e0 ctermbg=254 gui=NONE cterm=NONE
hi PMenuSel guifg=#ffffff ctermfg=15 guibg=#464a4d ctermbg=239 gui=NONE cterm=NONE
hi PmenuSbar guibg=#464a4d ctermbg=239 gui=NONE cterm=NONE
hi PmenuThumb guibg=#969896 ctermbg=246 gui=NONE cterm=NONE
hi Question guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guibg=#ffe3b4 ctermbg=223 gui=NONE cterm=NONE
hi SpellBad guibg=#bd2c00 ctermbg=124 gui=NONE cterm=NONE
hi SpellLocal guibg=#bd2c00 ctermbg=124 gui=NONE cterm=NONE
hi SpellCap guibg=#bd2c00 ctermbg=124 gui=NONE cterm=NONE
hi SpellRare guibg=#bd2c00 ctermbg=124 gui=NONE cterm=NONE
hi StatusLine guifg=#ffffff ctermfg=15 guibg=#464a4d ctermbg=239 gui=NONE cterm=NONE
hi StatusLineNC guifg=#464a4d ctermfg=239 guibg=#e0e0e0 ctermbg=254 gui=NONE cterm=NONE
hi TabLine guifg=#464a4d ctermfg=239 guibg=#e0e0e0 ctermbg=254 gui=NONE cterm=NONE
hi TabLineFill guibg=#464a4d ctermbg=239 gui=NONE cterm=NONE
hi TabLineSel guifg=#333333 ctermfg=236 guibg=#ffffff ctermbg=15 gui=NONE cterm=NONE
hi Title guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Visual guibg=#c8c8fa ctermbg=189 gui=NONE cterm=NONE
hi WarningMsg guifg=#ed6a43 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#464a4d ctermfg=239 guibg=#e0e0e0 ctermbg=254 gui=NONE cterm=NONE
hi Comment guifg=#969896 ctermfg=246 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=#183691 ctermfg=24 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Label guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Keyword guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined gui=underline cterm=underline
hi Error guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Todo guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeParen guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeBracket guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeObject guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeSpecialIdent guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeDotAccess guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeParens guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi coffeeCurly guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrRegion guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBraces guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssVendor guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPseudoClass guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttributeSelector guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssSelectorOp2 guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goTypeName guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goType guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goFormatSpecifier guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goBuiltIns guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goField guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi goLabel guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTagName guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlArg guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTitle guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlTag guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlSpecialTagName guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi htmlLink guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsStorageClass guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunction guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncCall guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExceptions guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateVar guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsImport guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFrom guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExport guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=#ed6a43 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassDefinition guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassMethodType guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsClassFuncName guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsThis guifg=#ed6a43 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsSuper guifg=#ed6a43 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsDocType guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsDocParam guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsDocTypeNoParam guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#55a532 ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#ef9700 ctermfg=208 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#bd2c00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#bd2c00 ctermfg=124 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimVar guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommand guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimEnvvar guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimIscommand guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimLet guifg=#a71d5d ctermfg=125 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimOption guifg=#0086b3 ctermfg=31 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTagName guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlTag guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttrib guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEqual guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlEndTag guifg=#795da3 ctermfg=97 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockMappingKey guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=#63a35c ctermfg=71 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlBlockCollectionItemStart guifg=#333333 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

let g:terminal_color_foreground = "#333333"
let g:terminal_color_background = "#ffffff"

" ===================================
" Generated by Estilo 1.3.1
" https://github.com/jacoborus/estilo
" ===================================
