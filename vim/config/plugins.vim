" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
" Author:  Benjamin Rau
" License: WTFPL

"" Using vim-plug to manage plugins.
call plug#begin(g:editor_root . '/plugins')

" Solarized theming.
Plug 'altercation/vim-colors-solarized'

" Beautiful status bar (powerline style).
Plug 'vim-airline/vim-airline'
" And themes for it.
Plug 'vim-airline/vim-airline-themes'

" NERD Tree as a file drawer (move and delete files, look at dirs).
Plug 'scrooloose/nerdtree'

" Nice undo history.
Plug 'sjl/gundo.vim'

" Toggle comments.
Plug 'scrooloose/nerdcommenter'

" Easier navigation with <leader><leader> motion.
Plug 'Lokaltog/vim-easymotion'

" Git plugin.  'Fugitive.vim may very well be the best Git wrapper of all
" time.' - The humble tpope.
Plug 'tpope/vim-fugitive'

" Awsome snippets, who types nowadays anyways :D (said the vim user).
" Snippets separated from engine. Here are some.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Need this to complete my autocomplete needs :-).
Plug 'Valloric/YouCompleteMe', {'do': 'python2 ./install.py --all'}

" Fuzy finder.
Plug 'junegunn/fzf', {'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Syntax checker. Integrates nicley with YCM and vim-airline.
Plug 'benekastah/neomake'

" Tmux navigation (between switching splits inside vim and inside tmux).
Plug 'christoomey/vim-tmux-navigator'

" Change the surroundings.
Plug 'tpope/vim-surround'

" Autoformatting. Uses native formatters.
Plug 'Chiel92/vim-autoformat'

" Language support/enhancement.
" One syntax definition monster that fullfills my needs.
Plug 'sheerun/vim-polyglot'

call plug#end()
