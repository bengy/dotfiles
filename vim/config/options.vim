" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
" Author:  Benjamin Rau
" License: WTFPL


"" Toggle different settings for vim.

" Do not keep backup files around after a write was sucessfull.
set nobackup
" But write backups to make sure that we have a backup in case Vim failed to
" overwrite a file and crashes.
set writebackup

"" Search-related options.
" Highlight the last used search pattern.
set hlsearch
" While typing a search command, show immediatly where the so far typed
" pattern matches.
set incsearch
" Ignore case in search pattern.
set ignorecase
" Override the 'ignorecase' option if the search pattern contains upper case
" matches.
set smartcase
" For regular expressions turn magic on. See help magic.
set magic

" Keep 250 lines of command line history (as if more than 20 needed :D).
set history=250

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Don't redraw while executing macros (good performance config).
set lazyredraw
" Smother changes.
set ttyfast

" Always jump to the current files directory.
set autochdir

" Allow hidden buffer changes (no saving between switching).
set hidden
