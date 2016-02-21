" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
" Author:  Benjamin Rau
" License: WTFPL

"" Using vundle to manage plugins.

" Automatically install vundle if not installed already.
" Inspired by Erik Zaadi
" (http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/).
let need_bundle_install=0
" First check if vundle is installed already by checking if the readme exists.
let vundle_readme=g:editor_root . '/bundle/vundle/README.md'
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent call mkdir(g:editor_root . '/bundle', "p")
    silent execute "!git clone https://github.com/gmarik/vundle "
                    \. g:editor_root . "/bundle/vundle"
    let need_bundle_install=1
endif

"" Vundle options (required).
set nocompatible
filetype off
" Using editor_root to make this work with vim and nvim.
let &rtp = &rtp . ',' . g:editor_root . '/bundle/vundle/'
call vundle#begin(g:editor_root . '/bundle')

" Let Vundle manage Vundle (required).
Plugin 'gmarik/Vundle.vim', {'name': 'vundle'}

"" Plugins go below this line.

" Solarized theming.
Plugin 'altercation/vim-colors-solarized'

" Beautiful status bar (powerline style).
Plugin 'vim-airline/vim-airline'
" And themes for it.
Plugin 'vim-airline/vim-airline-themes'

" NERD Tree as a file drawer (move and delete files, look at dirs).
Plugin 'scrooloose/nerdtree'

" CtrlP: Fuzzy search for openening files super fast.
Plugin 'kien/ctrlp.vim'

" Nice undo history.
Plugin 'sjl/gundo.vim'

" Easier navigation with <leader><leader> motion.
Plugin 'Lokaltog/vim-easymotion'

" Git plugin.  'Fugitive.vim may very well be the best Git wrapper of all
" time.' - The humble tpope.
Plugin 'tpope/vim-fugitive'

" Awsome snippets, who types nowadays anyways :D (said the vim user).
Plugin 'SirVer/ultisnips'
" Snippets separated from engine. Here are some.
Plugin 'honza/vim-snippets'

" Need this to complete my autocomplete needs :-).
Plugin 'Valloric/YouCompleteMe'

" Syntax checker. Integrates nicley with YCM and vim-airline.
Plugin 'scrooloose/syntastic'

" Tmux navigation (between switching splits inside vim and inside tmux).
Plugin 'christoomey/vim-tmux-navigator'

" Syntax definitions:
"Plugin 'tpope/vim-git'									" Git files.
"Plugin 'pangloss/vim-javascript'						" Javascript I
"Plugin '1995eaton/vim-better-javascript-completion'	" Javascript II
"Plugin 'othree/javascript-libraries-syntax.vim'		" Syntax for JS Libraries (incl. Angular)
"Plugin 'moll/vim-node'									" Node.js
"Plugin 'othree/html5.vim'								" HTML
"Plugin 'digitaltoad/vim-jade'							" Jade
"Plugin '1995eaton/vim-better-css-completion'			" CSS
"Plugin 'kchmck/vim-coffee-script'						" Coffeescript
"Plugin 'chrisbra/csv.vim'								" CSV
"Plugin 'leshill/vim-json'								" JSON
"Plugin 'tpope/vim-markdown'							" Markdown
"Plugin 'wavded/vim-stylus'								" Stylus
"Plugin 'jason0x43/vim-js-indent'						" Indentation for JS and TS
"Plugin 'leafgarland/typescript-vim'					" Typescript syntax
" Template creation for filetypes.
"Plugin 'aperezdc/vim-template'

"" Plugins go above this line.

" If vundle was installed this time, automatically start the plugin
" installation.
if need_bundle_install == 1
    echo "Installing Vundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

"" End of vundle section (required).
call vundle#end()
filetype plugin indent on


