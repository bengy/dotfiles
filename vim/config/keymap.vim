" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
" Author:  Benjamin Rau
" License: WTFPL

"" Here are all the mappings that make you faster (as well as those"" you saw somewhere but have now forgotten about them).

" See :help index.txt for used mappings.

" Custom mapping for the mapleader (very custom - just like everybody :D).
let mapleader = ","
let g:mapleader = ","

" Quickly edit the vimrc file.
nmap <silent> <leader>ev :e $MYVIMRC<CR>
let config_path = expand('<sfile>:p:h')
nmap <silent> <leader>evc :execute 'edit' config_path<CR>
" Live reload the vimrc file.
nmap <silent> <leader>rv :so $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Auto center after moving around.
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Remove highlighting with Ctl + /.
:nnoremap <silent> <C-_> :nohlsearch<Bar>:echo<CR>

" Show undo history.
nmap <silent> <leader>u :GundoToggle<CR>

" Open Nerd Tree.
map <leader>n :NERDTreeToggle<CR>

" Open Fuzzy file finder in file mode.
nmap <leader>t :CtrlP<CR>

" Open Fuzzy file finder in buffer mode.
nmap <leader>b :CtrlPBuffer<CR>

" Use switch between window panes with alt+h/j/k/l.
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-p> :TmuxNavigatePrevious<cr>
" Autosave on switching panes.
let g:tmux_navigator_save_on_switch = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" Add new snippets on the fly.
nnoremap <leader>s :UltiSnipsEdit<cr>
