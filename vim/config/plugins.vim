
" License: MIT

" Using vim-plug to manage plugins.
call plug#begin(g:editor_root . '/plugins')

" Solarized theming.
Plug 'lifepillar/vim-solarized8'

" Beautiful status bar (powerline style).
Plug 'vim-airline/vim-airline'
" And themes for it.
Plug 'vim-airline/vim-airline-themes'

" NERD Tree as a file drawer (move and delete files, look at dirs).
Plug 'preservim/nerdtree'
" Syntax highlight (filetype)
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Fancy icons.
Plug 'ryanoasis/vim-devicons'
" Git status in nerdtree.
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tsony-tsonev/nerdtree-git-plugin'

" Orgmode support.
Plug 'jceb/vim-orgmode'

" Add repeat actions for plugins.
Plug 'tpope/vim-repeat'

" Nice undo history.
Plug 'mbbill/undotree'

" Toggle comments.
Plug 'scrooloose/nerdcommenter'

" Easier navigation with <leader><leader> motion.
Plug 'Lokaltog/vim-easymotion'

" Git plugin.  'Fugitive.vim may very well be the best Git wrapper of all
" time.' - The humble tpope.
Plug 'tpope/vim-fugitive'

" tpope at it again with a better replace
Plug 'tpope/vim-abolish'

" Awsome snippets, who types nowadays anyways :D (said the vim user).
" Snippets separated from engine. Here are some.
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" React Native code snippets
Plug 'morgsmccauley/vim-react-native-snippets'
" ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'
" React code snippets
Plug 'epilande/vim-react-snippets'

" Need this to complete my autocomplete needs :-).
" Plug 'Valloric/YouCompleteMe', {'do': 'python2 ./install.py --all'}
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
" Autoformatting. Uses native formatters.
" Plug 'Chiel92/vim-autoformat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

" Markdown support.
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" JS documentation.
Plug 'yaegassy/coc-jsdoc', {'do': 'yarn install --frozen-lockfile'}



" Fuzy finder.
Plug 'junegunn/fzf.vim'

" Tmux navigation (between switching splits inside vim and inside tmux).
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/vimux'

" Change the surroundings.
Plug 'tpope/vim-surround'


" Language support/enhancement.
" One syntax definition monster that fullfills my needs.
Plug 'sheerun/vim-polyglot'
Plug 'jez/vim-ispc'
Plug 'sirtaj/vim-openscad'

" File templates
Plug 'aperezdc/vim-template'

" Local vimrc files for project specific settings.
Plug 'embear/vim-localvimrc'

Plug 'mtth/scratch.vim'

" Browser vim.
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

call plug#end()
