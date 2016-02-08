" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
" Author:  Benjamin Rau
" License: WTFPL

"" Make your text editor look fancier than you do.

" Use color syntax highlighting.
syntax enable

" Choose between dark/light theme (if theme supports it).
set background=dark
" Enable the solarized theme.
colorscheme solarized
" Customize the airline statusline.
" Automatically populate patched fonts to have good looking status bar.
let g:airline_powerline_fonts = 1
" Set the theme to match our color theme.
let g:airline_theme='solarized'

" Highlight red if a line goes beyond the 80 characters.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" Match every character in column greater or equal 81 as overlength.
match OverLength /\%81v.\+/

" Highlight trailing whitespaces in an orange color.
highlight TrailingWhitespaces ctermbg=red ctermfg=white guibg=#ffa500
match TrailingWhitespaces /\s\+$\| \+\ze\t/

" Always keep 5 lines visible while scolling.
set so=5

" Display the line number, column number, virtual column number and relative
" position.
set ruler
" Show the line number.
set number
" Highlight current line.
set cursorline

" Don't wrap lines visually.
set nowrap

" This is a sequence of letters which describes how automatic formatting is to
" be done.
" letter    meaning when present in 'formatoptions'
" ------    ---------------------------------------
" c         Auto-wrap comments using textwidth, inserting
"           the current comment leader automatically.
" q         Allow formatting of comments with 'gq'.
" r         Automatically insert the current comment leader
"           after hitting <Enter> in Insert mode.
" t         Auto-wrap text using textwidth (does not apply
"           to comments)
set formatoptions=c,q,r,t

" Show tabs and trailing whitespaces.
set list listchars=tab:→\ ,trail:·
" Define how they should look like (gray with no special background).
:hi SpecialKey ctermbg=8 ctermfg=59 cterm=NONE
