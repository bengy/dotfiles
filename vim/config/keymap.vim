" Author:  Benjamin Rau
" License: MIT

"" Here are all the mappings that make you faster (as well as those you saw somewhere but have now forgotten about them).

" See :help index.txt for used mappings.

" Custom mapping for the mapleader (very custom - just like everybody :D).
let mapleader = ","
let g:mapleader = ","

" Quickly edit the vimrc file.
nmap <silent> <leader>ce :e $MYVIMRC<CR>
let g:config_path = expand('<sfile>:p')
nmap <silent> <leader>cev :execute 'edit' g:config_path<CR>
" Live reload the vimrc file.
nmap <silent> <leader>cr :so $MYVIMRC<CR>

" Auto center after moving around.
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

" Remove highlighting with Ctl + /.
nnoremap <silent> <C-_> :nohlsearch<Bar>:echo<CR>

" Show undo history.
nmap <silent> <leader>u :UndotreeToggle<CR>


" Open Nerd Tree.
map <leader>n :NERDTreeToggle<CR>

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
" let g:UltiSnipsExpandTrigger="<c-e>"
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)
" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <leader>r  <Plug>(coc-codeaction-selected)
nmap <leader>r  <Plug>(coc-codeaction-selected)

" Add new snippets on the fly.
nnoremap <leader>s :UltiSnipsEdit<cr>

" Resize with alt+H/J/K/L.
nnoremap <silent> <M-H> :vertical resize +5<cr>
nnoremap <silent> <M-L> :vertical resize -5<cr>
nnoremap <silent> <M-J> :resize +5<cr>
nnoremap <silent> <M-K> :resize -5<cr>

" Navigate with alt key then in terminal mode.
if has('nvim')
  tnoremap <M-h> <C-\><C-n><C-w>h
  tnoremap <M-j> <C-\><C-n><C-w>j
  tnoremap <M-k> <C-\><C-n><C-w>k
  tnoremap <M-l> <C-\><C-n><C-w>l
endif

" Toogle highlight overlength
nnoremap <leader>hol :call ToggleOverLength()<CR>

" CommandT like fuzzy file finder
command! -bang -nargs=? -complete=dir AllFiles
    \ call fzf#vim#files(<q-args>, {'source': 'rg --files --hidden --follow --no-ignore'}, <bang>0)
nnoremap <leader>t :FZF<cr>
nnoremap <leader>T :AllFiles<cr>
nnoremap <leader>f :Lines<cr>
nnoremap <leader>F :Rg<cr>

" Open file from the current path.
map <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>v :vs <C-R>=expand("%:p:h") . "/" <CR>
map <leader>x :split <C-R>=expand("%:p:h") . "/" <CR>

function! NERDTreeMapOpenSplit(node)
  call a:node.open({'where': 'h'})
endfunction
autocmd VimEnter * call NERDTreeAddKeyMap({
  \ 'key': 'x',
  \ 'callback': 'NERDTreeMapOpenSplit',
  \ 'quickhelpText': 'open horizontal split',
  \ 'scope': 'FileNode' })

function! NERDTreeMapPreviewSplit(node)
  call a:node.open({'where': 'h', 'stay': 1})
endfunction
autocmd VimEnter * call NERDTreeAddKeyMap({
  \ 'key': 'gx',
  \ 'callback': 'NERDTreeMapPreviewSplit',
  \ 'quickhelpText': 'preview horizontal split',
  \ 'scope': 'FileNode' })

function! NERDTreeMapOpenVSplit(node)
  call a:node.open({'where': 'v'})
endfunction
autocmd VimEnter * call NERDTreeAddKeyMap({
  \ 'key': 'v',
  \ 'callback': 'NERDTreeMapOpenVSplit',
  \ 'quickhelpText': 'open vertical split',
  \ 'scope': 'FileNode' })

function! NERDTreeMapPreviewVSplit(node)
  call a:node.open({'where': 'v', 'stay': 1})
endfunction
autocmd VimEnter * call NERDTreeAddKeyMap({
  \ 'key': 'gv',
  \ 'callback': 'NERDTreeMapPreviewVSplit',
  \ 'quickhelpText': 'preview vertical split',
  \ 'scope': 'FileNode' })
