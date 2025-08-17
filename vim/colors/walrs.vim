" Desert colorscheme - Walrs template (Full UI)
set background=dark
let g:colors_name = 'walrs'

" Terminal colors
let g:terminal_ansi_colors = ['#282828', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#a89984', '#928374', '#fb4934', '#b8bb26', '#fabd2f', '#83a598', '#d3869b', '#8ec07c', '#ebdbb2']

" Basic syntax highlighting (prettier version)
hi Normal         guifg=#ebdbb2 guibg=#282828  ctermfg=15 ctermbg=0
hi Comment        guifg=#928374  gui=italic      ctermfg=8
hi Constant       guifg=#fb4934                  ctermfg=9
hi String         guifg=#b8bb26                 ctermfg=10
hi Character      guifg=#d3869b                 ctermfg=13
hi Number         guifg=#fabd2f                 ctermfg=11
hi Boolean        guifg=#cc241d                  ctermfg=1
hi Float          guifg=#8ec07c                 ctermfg=14
hi Identifier     guifg=#689d6a                  ctermfg=6
hi Function       guifg=#458588  gui=bold        ctermfg=4  cterm=bold
hi Statement      guifg=#d79921  gui=bold        ctermfg=3  cterm=bold
hi Conditional    guifg=#cc241d                  ctermfg=1
hi Repeat         guifg=#98971a                  ctermfg=2
hi Label          guifg=#b16286                  ctermfg=5
hi Operator       guifg=#a89984                  ctermfg=7
hi Keyword        guifg=#83a598 gui=bold        ctermfg=12 cterm=bold
hi Exception      guifg=#fb4934                  ctermfg=9
hi PreProc        guifg=#b16286                  ctermfg=5
hi Include        guifg=#d3869b                 ctermfg=13
hi Define         guifg=#8ec07c                 ctermfg=14
hi Macro          guifg=#83a598                 ctermfg=12
hi PreCondit      guifg=#fabd2f                 ctermfg=11
hi Type           guifg=#689d6a  gui=bold        ctermfg=6  cterm=bold
hi StorageClass   guifg=#458588                  ctermfg=4
hi Structure      guifg=#b8bb26                 ctermfg=10
hi Typedef        guifg=#928374                  ctermfg=8
hi Special        guifg=#cc241d                  ctermfg=1
hi SpecialChar    guifg=#98971a                  ctermfg=2
hi Tag            guifg=#d79921                  ctermfg=3
hi Delimiter      guifg=#a89984                  ctermfg=7
hi SpecialComment guifg=#928374  gui=italic      ctermfg=8
hi Debug          guifg=#fb4934                  ctermfg=9


" Status line and UI
hi StatusLine guifg=#282828 guibg=#fabd2f gui=bold ctermfg=0 ctermbg=11 cterm=bold
hi StatusLineNC guifg=#282828 guibg=#282828 ctermfg=8 ctermbg=7
hi WildMenu guifg=#282828 guibg=#b16286 ctermfg=0 ctermbg=5
hi ModeMsg guifg=#d3869b gui=bold ctermfg=13 cterm=bold
hi MoreMsg guifg=#98971a gui=bold ctermfg=2 cterm=bold
hi Question guifg=#b8bb26 gui=bold ctermfg=10 cterm=bold
hi WarningMsg guifg=#cc241d gui=bold ctermfg=1 cterm=bold
hi ErrorMsg guifg=#fb4934 guibg=#ebdbb2 gui=reverse ctermfg=9 ctermbg=15 cterm=reverse

" Splits and separators
hi VertSplit guifg=#cc241d guibg=NONE ctermfg=1 ctermbg=NONE
hi WinSeparator guifg=#cc241d guibg=NONE ctermfg=1 ctermbg=NONE

" Line numbers and cursor (prettier version)
hi LineNr         guifg=#928374   guibg=NONE        ctermfg=8
hi CursorLineNr   guifg=#8ec07c  gui=bold          ctermfg=14 cterm=bold
hi CursorLine     guibg=#282828                     ctermbg=0
hi CursorColumn   guibg=#282828                     ctermbg=0
hi ColorColumn    guibg=#cc241d   guifg=NONE        ctermbg=1

" Search and selection
hi Visual        guifg=#282828   guibg=#98971a   ctermfg=0  ctermbg=2
hi VisualNOS     guifg=#ebdbb2  guibg=#928374   ctermfg=15 ctermbg=8
hi Search        guifg=#282828   guibg=#d3869b  ctermfg=0  ctermbg=13
hi IncSearch     guifg=#282828   guibg=#fb4934   ctermfg=0  ctermbg=9
hi MatchParen    guifg=#ebdbb2  guibg=#cc241d   ctermfg=15 ctermbg=1


" Tabs
hi TabLine guifg=#a89984 guibg=#282828 cterm=NONE ctermfg=7 ctermbg=0
hi TabLineSel guifg=#282828 guibg=#458588 cterm=bold ctermfg=15 ctermbg=4
hi TabLineFill guifg=NONE guibg=#282828 cterm=NONE ctermfg=NONE ctermbg=8

" Popup menus (prettier colors)
hi Pmenu           guifg=NONE  guibg=NONE  ctermfg=15 ctermbg=0
hi PmenuSel        guifg=NONE  guibg=NONE  ctermfg=0  ctermbg=4
hi PmenuSbar       guibg=NONE              ctermbg=1
hi PmenuThumb      guibg=NONE              ctermbg=6
hi PmenuMatch      guifg=NONE  guibg=NONE  ctermfg=2  ctermbg=8
hi PmenuMatchSel   guifg=NONE  guibg=NONE  ctermfg=0  ctermbg=2



" Folding
hi Folded guifg=#83a598 guibg=#928374 ctermfg=12 ctermbg=8
hi FoldColumn guifg=#b16286 guibg=#282828 ctermfg=5 ctermbg=0

" Special elements
hi NonText guifg=#928374 ctermfg=8
hi SpecialKey guifg=#98971a ctermfg=2
hi Title guifg=#cc241d gui=bold ctermfg=1 cterm=bold
hi Directory guifg=#83a598 ctermfg=12
hi Conceal guifg=#a89984 ctermfg=7
hi Underlined guifg=#458588 gui=underline ctermfg=4 cterm=underline
hi Cursor guifg=#282828 guibg=#ebdbb2 ctermfg=0 ctermbg=15
hi lCursor guifg=#282828 guibg=#fb4934 ctermfg=0 ctermbg=9

" Spelling
hi SpellBad guifg=#cc241d guisp=#cc241d gui=undercurl ctermfg=1 cterm=underline
hi SpellCap guifg=#458588 guisp=#458588 gui=undercurl ctermfg=4 cterm=underline
hi SpellLocal guifg=#d3869b guisp=#d3869b gui=undercurl ctermfg=13 cterm=underline
hi SpellRare guifg=#98971a guisp=#98971a gui=undercurl ctermfg=2 cterm=underline

" Diffs
hi DiffAdd guifg=#282828 guibg=#98971a ctermfg=0 ctermbg=2
hi DiffChange guifg=#282828 guibg=#458588 ctermfg=0 ctermbg=4
hi DiffDelete guifg=#282828 guibg=#cc241d ctermfg=0 ctermbg=1
hi DiffText guifg=#282828 guibg=#ebdbb2 gui=bold ctermfg=0 ctermbg=15 cterm=bold

" Signs and diagnostics
hi SignColumn guibg=NONE ctermbg=NONE
hi Error guifg=#fb4934 guibg=#ebdbb2 gui=reverse ctermfg=9 ctermbg=15 cterm=reverse
hi Todo guifg=#282828 guibg=#b16286 gui=bold ctermfg=0 ctermbg=5 cterm=bold

" Quick fix
hi QuickFixLine guifg=#282828 guibg=#fabd2f ctermfg=0 ctermbg=11

" Toolbar (for gvim)
hi ToolbarLine guibg=#928374 ctermbg=8
hi ToolbarButton guifg=#282828 guibg=#d3869b gui=bold ctermfg=0 ctermbg=13 cterm=bold

" Debug
hi debugPC guifg=#a89984 gui=reverse ctermfg=7 cterm=reverse
hi debugBreakpoint guifg=#8ec07c gui=reverse ctermfg=14 cterm=reverse
