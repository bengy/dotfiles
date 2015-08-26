" Set the color scheme.
syntax enable
set background=dark
colorscheme molokai

" Don't wrap lines visually.
set nowrap
" If we do linebreaks in some filetypes break properly (not tearing words apart)
set linebreak
" We don't want width greater than 80.
"set textwidth=80
" Highlight red if a line goes beyond the 80 characters.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" Match every character in column greater or equal 81 as overlength.
match OverLength /\%81v.\+/

" Highlight trailing whitespaces in an orange color.
highlight TrailingWhitespaces ctermbg=red ctermfg=white guibg=#ffa500
match TrailingWhitespaces /\s\+$\| \+\ze\t/

" Display the line number, column number, virtual column number and relative
" position.
set ruler
" Show the line number.
set number
" Highlight current line.
set cursorline

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

" Show info about commands and info about selected lines.
set showcmd

" Always keep 5 lines visible while scolling.
set so=5

" Automatically populate patched fonts to have good looking status bar
let g:airline_powerline_fonts = 1
