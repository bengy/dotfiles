" Vundle requirements.
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required.
Plugin 'gmarik/Vundle.vim'

" Color scheme:
Plugin 'altercation/vim-colors-solarized'

" Syntax definitions:
Plugin 'tpope/vim-git'					                    " Vim files.
Plugin 'pangloss/vim-javascript'			              " Javascript I
Plugin '1995eaton/vim-better-javascript-completion'	" Javascript II
Plugin 'othree/javascript-libraries-syntax.vim'     " Syntax for JS Libraries (incl. Angular)
Plugin 'moll/vim-node'					                    " Node.js
Plugin 'othree/html5.vim'				                    " HTML
Plugin 'digitaltoad/vim-jade'				                " Jade
Plugin '1995eaton/vim-better-css-completion'		    " CSS
Plugin 'kchmck/vim-coffee-script'			              " Coffeescript
Plugin 'chrisbra/csv.vim'				                    " CSV
Plugin 'leshill/vim-json'				                    " JSON
Plugin 'tpope/vim-markdown'				                  " Markdown
Plugin 'wavded/vim-stylus'				                  " Stylus
Plugin 'jason0x43/vim-js-indent'										" Indentation for JS and TS

Plugin 'leafgarland/typescript-vim'									" Typescript syntax

" Commant-t
Plugin 'wincent/command-t'
" <leader> t to bring up the search.
" <C-j> and <C-k> to move up and down.
" <C-s> , <C-v> and <C-t> to open in split window or tab.

" Nice undo history.
Plugin 'sjl/gundo.vim'

" Awsome snippets, who types nowadays anyways :D (said the vim user).
Plugin 'SirVer/ultisnips'
" Snippets separated from engine. Here are some.
Plugin 'honza/vim-snippets'

" Easier navigation with <leader><leader> motion.
Plugin 'Lokaltog/vim-easymotion'

" Git plugin.
" 'fugitive.vim may very well be the best Git
" wrapper of all time.' - The humble tpope.
Plugin 'tpope/vim-fugitive'

" Need this to complete my autocomplete needs :-).
Plugin 'Valloric/YouCompleteMe'

" Supertab to make YCM and Ultisnip work together nicely.
Plugin 'ervandew/supertab'

" Show warnings and errors when writing code. Integrates nicley with YCM.
Plugin 'scrooloose/syntastic'

" Template creation for filetypes.
Plugin 'aperezdc/vim-template'

" Beautiful status bar.
Plugin 'bling/vim-airline'

" End of vundle section
call vundle#end()
filetype plugin indent on " required by vudle


