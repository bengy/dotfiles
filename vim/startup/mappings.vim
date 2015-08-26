" Custom mapping for the mapleader (very custom - just like everybody :D)
let mapleader = ","
let g:mapleader = ","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Show undo history.
nmap <silent> <leader>u :GundoToggle<CR>

" Auto center after moving around.
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" YCM compilation and jump to definition.
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <Leader>jd  :YcmCompleter GoTo<CR>
nnoremap <F3> :YcmCompleter GoTo<CR>
"
"" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
"" so that you can undo CTRL-U after inserting a line break.
"inoremap <C-U> <C-G>u<C-U>
"

"" gO to create a new line below cursor in normal mode
"nmap g<C-O> o<ESC>k
"" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
"nmap gO O<ESC>j

" Use gitignore for command-t
nnoremap <LEADER>cti :call WildignoreFromGitignore()<cr>
nnoremap <LEADER>cwi :set wildignore=''<cr>:echo 'Wildignore cleared'<cr>

" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

