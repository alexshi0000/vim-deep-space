" Deep Space - An intergalactically friendly color scheme for Vim
" Author: Brandon Siders
" License: MIT

highlight clear

if exists('syntax_on')
    syntax reset
endif

set background=dark
let g:colors_name = 'deep-space'

let g:deepspace_italics = get(g:, 'deepspace_italics', 0)

" Color Palette
let s:gray1     = '#1b202a'
let s:gray2     = '#232936'
let s:gray3     = '#323c4d'
let s:gray4     = '#41516a'
let s:gray5     = '#9aa7bd'
let s:red       = '#b15e7c'
let s:green     = '#709d6c'
let s:yellow    = '#b5a262'
let s:blue      = '#608cc3'
let s:purple    = '#8f72bf'
let s:cyan      = '#56adb7'
let s:orange    = '#b3785d'
let s:pink      = '#c47ebd'

function! s:HL(group, fg, bg, attr)
    let l:attr = a:attr
    if !g:deepspace_italics && l:attr ==# 'italic'
        let l:attr = 'italic'
    endif

    if !empty(a:fg)
        exec 'hi ' . a:group . ' guifg=' . a:fg
    endif
    if !empty(a:bg)
        exec 'hi ' . a:group . ' guibg=' . a:bg
    endif
    if !empty(a:attr)
        exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
    endif
endfun

hi ExtraWhitespace guifg=#c47ebd guibg=#c47ebd
hi NERDTreeOpenable guifg=#41516a
hi NERDTreeClosable guifg=#9aa7bd

" Editor Highlights
call s:HL('ColorColumn',                    '',         s:gray2,    '')
call s:HL('Cursor',                         s:gray2,    s:gray5,    '')
call s:HL('CursorColumn',                   '',         s:gray2,    '')
call s:HL('CursorLine',                     '',         s:gray2,    'none')
call s:HL('Directory',                      s:blue,     '',         '')
call s:HL('DiffAdd',                        s:gray3,    s:green,    'none')
call s:HL('DiffChange',                     s:gray3,    s:yellow,   'none')
call s:HL('DiffDelete',                     s:gray3,    s:red,      'none')
call s:HL('DiffText',                       s:gray3,    s:blue,     'none')
call s:HL('ErrorMsg',                       s:red,      s:gray1,    'bold')
call s:HL('VertSplit',                      s:gray4,    s:gray4,    'none')
call s:HL('Folded',                         s:gray5,     s:gray4,    '')
call s:HL('FoldColumn',                     s:pink,     s:gray2,    '')
call s:HL('SignColumn',                     s:gray2,    s:gray1,    '')
call s:HL('LineNr',                         s:gray4,    s:gray1,         '')
call s:HL('CursorLineNr',                   s:gray5,    s:gray2,    'none')
call s:HL('MatchParen',                     s:pink,     s:gray1,     'underline')
call s:HL('ModeMsg',                        s:green,    '',         '')
call s:HL('MoreMsg',                        s:green,    '',         '')
call s:HL('NonText',                        s:gray4,    s:gray1,         '')
call s:HL('Normal',                         s:gray5,    s:gray1,    'none')
call s:HL('Pmenu',                          s:gray5,    s:gray3,    '')
call s:HL('PmenuSel',                       s:gray2,    s:blue,     '')
call s:HL('PmenuSbar',                      s:gray3,    s:gray4,    '')
call s:HL('PmenuThumb',                     s:gray4,    s:gray5,    '')
call s:HL('Question',                       s:green,    '',         '')
call s:HL('Search',                         s:gray1,    s:pink,   '')
call s:HL('SpecialKey',                     s:pink,    '',         '')
call s:HL('SpellCap',                       s:blue,     '',         'undercurl')
call s:HL('SpellBad',                       s:red,      '',         'undercurl')
call s:HL('StatusLine',                     s:gray5,    s:gray3,    'none')
call s:HL('StatusLineNC',                   s:gray2,    s:gray4,    '')
call s:HL('TabLine',                        s:gray5,    s:gray3,    'none')
call s:HL('TabLineFill',                    s:gray4,    s:gray1,    'none')
call s:HL('TabLineSel',                     s:gray2,    s:blue,    '')
call s:HL('Title',                          s:yellow,   '',         'none')
call s:HL('Visual',                         '',    s:gray3,    '')
call s:HL('WarningMsg',                     s:red,      '',         '')
call s:HL('WildMenu',                       s:gray2,    s:blue,     '')

" Standard Syntax
call s:HL('Comment',                        s:gray4,    '',         'italic')
call s:HL('Constant',                       s:green,      '',         '')
call s:HL('String',                         s:yellow,    '',         'italic')
call s:HL('Character',                      s:yellow,    '',         '')
call s:HL('Identifier',                     s:purple,   '',         'none')
call s:HL('Function',                       s:purple,   '',         'italic')
call s:HL('Statement',                      s:red,     '',         'none')
call s:HL('Operator',                       s:cyan,     '',         'none')
call s:HL('PreProc',                        s:cyan,     '',         '')
call s:HL('Define',                         s:blue,     '',         '')
call s:HL('Macro',                          s:cyan,     '',         'italic')
call s:HL('Type',                           s:red,   '',         'none')
call s:HL('Structure',                      s:blue,     '',         '')
call s:HL('Special',                        s:cyan,     '',         '')
call s:HL('Underlined',                     s:blue,     '',         'none')
call s:HL('Error',                          s:red,      s:gray1,    'underline')
call s:HL('Todo',                           s:pink,     s:gray1,    'underline')

" CSS/Sass/Less
call s:HL('cssAttrComma',                   s:green,    '',         '')
call s:HL('cssAttributeSelector',           s:green,    '',         '')
call s:HL('cssBraces',                      s:gray5,    '',         '')
call s:HL('cssClassName',                   s:orange,   '',         '')
call s:HL('cssClassNameDot',                s:cyan,   '',         '')
call s:HL('cssIdentifier',                  s:orange,   '',         '')
call s:HL('cssImportant',                   s:purple,   '',         '')
call s:HL('cssMediaType',                   s:orange,   '',         '')
call s:HL('cssProp',                        s:cyan,    '',         '')
call s:HL('cssSelectorOp',                  s:red,     '',         '')
call s:HL('cssSelectorOp2',                 s:red,     '',         '')

call s:HL('sassAmpersand',                  s:blue,     '',         '')
call s:HL('sassClass',                      s:orange,   '',         '')
call s:HL('sassClassChar',                  s:orange,   '',         '')

call s:HL('lessAmpersand',                  s:blue,     '',         '')
call s:HL('lessClass',                      s:orange,   '',         '')
call s:HL('lessClassChar',                  s:orange,   '',         '')
call s:HL('lessFunction',                   s:yellow,   '',         '')
call s:HL('lessCssAttribute',               s:gray5,    '',         '')

" NERDTree
hi NERDTreeCWD guifg=#709d6c

" Git
call s:HL('gitcommitComment',               s:gray4,    '',         'italic')
call s:HL('gitcommitOnBranch',              s:gray4,    '',         'italic')
call s:HL('gitcommitFile',                  s:cyan,     '',         '')
call s:HL('gitcommitHeader',                s:purple,   '',         '')
call s:HL('gitcommitBranch',                s:orange,   '',         '')
call s:HL('gitcommitUnmerged',              s:green,    '',         '')
call s:HL('gitcommitUntrackedFile',         s:cyan,     '',         '')
call s:HL('gitcommitSelectedFile',          s:green,    '',         '')
call s:HL('gitcommitDiscardedFile',         s:red,      '',         '')
call s:HL('gitcommitUnmergedFile',          s:yellow,   '',         '')
call s:HL('gitcommitSelectedType',          s:green,    '',         '')
call s:HL('gitcommitDiscardedType',         s:red,      '',         '')
hi link gitcommitNoBranch       gitcommitBranch
hi link gitcommitUntracked      gitcommitComment
hi link gitcommitDiscarded      gitcommitComment
hi link gitcommitSelected       gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow  gitcommitSelectedFile
hi link gitcommitUnmergedArrow  gitcommitUnmergedFile

" HTML
call s:HL('htmlArg',                        s:green,   '',         '')
call s:HL('htmlEndTag',                     s:cyan,   '',         '')
call s:HL('htmlTag',                        s:cyan,   '',         '')
call s:HL('htmlTagName',                    s:purple,     '',         '')
call s:HL('htmlTitle',                      s:gray5,    '',         '')

" Javascript
call s:HL('javaScriptBraces',               s:gray5,    '',         '')
call s:HL('javaScriptIdentifier',           s:pink,     '',         '')
call s:HL('javaScriptFunction',             s:pink,     '',         '')
call s:HL('javaScriptNumber',               s:red,      '',         '')
call s:HL('javaScriptReserved',             s:blue,     '',         '')
call s:HL('javaScriptRequire',              s:cyan,     '',         '')
call s:HL('javaScriptNull',                 s:pink,      '',         '')

" Ruby
call s:HL('rubyBlockParameterList',         s:purple,   '',         '')
call s:HL('rubyInterpolationDelimiter',     s:purple,   '',         '')
call s:HL('rubyStringDelimiter',            s:green,    '',         '')
call s:HL('rubyRegexpSpecial',              s:cyan,     '',         '')

" Vim-Fugitive
call s:HL('diffAdded',                      s:green,    '',         '')
call s:HL('diffRemoved',                    s:red,      '',         '')

" Vim-Gittgutter
hi link GitGutterAdd    SignifySignAdd
hi link GitGutterChange SignifySignChange
hi link GitGutterDelete SignifySignDelete
call s:HL('GitGutterChangeDelete',          s:orange,   '',         '')

" Vim-Signify
call s:HL('SignifySignAdd',                 s:green,    '',         '')
call s:HL('SignifySignChange',              s:yellow,   '',         '')
call s:HL('SignifySignDelete',              s:red,      '',         '')

" Ctrlp

hi! link CtrlPMatch TODO
hi! link CtrlPNoEntries SpellBad
hi! link CtrlPPrtBase Comment
hi! link CtrlPPrtCursor TabLineSel
hi! link CtrlPLinePre JavaScriptReserved

call s:HL('CtrlPMode1', s:blue, s:gray3, '')
call s:HL('CtrlPMode2', s:gray3, s:blue, '')
call s:HL('CtrlPStats', s:gray5, s:gray2,'')


if has("nvim") && exists("&termguicolors") && &termguicolors
    let g:terminal_color_0  = "#1b202a"
    let g:terminal_color_8  = "#51617D"
    let g:terminal_color_1  = "#b15e7c"
    let g:terminal_color_9  = "#b3785d"
    let g:terminal_color_2  = "#709d6c"
    let g:terminal_color_10 = "#709d6c"
    let g:terminal_color_3  = "#b5a262"
    let g:terminal_color_11 = "#d5b875"
    let g:terminal_color_4  = "#608cc3"
    let g:terminal_color_12 = "#608cc3"
    let g:terminal_color_5  = "#8f72bf"
    let g:terminal_color_13 = "#c47ebd"
    let g:terminal_color_6  = "#56adb7"
    let g:terminal_color_14 = "#8f72bf"
    let g:terminal_color_7  = "#323c4d"
    let g:terminal_color_15 = "#9aa7bd"
endif
