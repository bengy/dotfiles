" ██╗   ██╗██╗███╗   ███╗
" ██║   ██║██║████╗ ████║
" ██║   ██║██║██╔████╔██║
" ╚██╗ ██╔╝██║██║╚██╔╝██║
"  ╚████╔╝ ██║██║ ╚═╝ ██║
"   ╚═══╝  ╚═╝╚═╝     ╚═╝
"
" Author:  Benjamin Rau
" License: WTFPL

"" All the things related to make coding easier.

" Automatically detect the filetype.
filetype on

" Use plugins to allow custom actions based on filetypes.
filetype plugin on

"" Indentation definitions.
" Allow indentation based on filetypes.
filetype indent on
" In case we have no indentation for this filetype use this defaults:
" Number of spaces that a <Tab> in the file counts for.
set tabstop=4
set softtabstop=4
" We do not want tabs to be expanded.
set noexpandtab
" Number of spaces to use for each step of (auto)indent (e.g using << or >>).
set shiftwidth=4
" Copy indent style from line we are starting the new line from. Useful to
" copy filetype style if we have no filetype indentation options set.
set autoindent

" When editing the snippets file for ultisnips open up a spit window.
let g:UltiSnipsEditSplit="vertical"
