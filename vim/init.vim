" Author:  Benjamin Rau
" License: MIT

"" Config files are located in config folder and sorted thematically.
"" Not using the plugin folder in order to reload them when I want to.

" Make config files compatible with neovim and vim.
" Get the directory this config file resides in.
let g:editor_root=fnamemodify(resolve(expand($MYVIMRC)), ':h')

" Set the location for the vim folder (we won't need .vim in our home).
let &runtimepath.=',' . g:editor_root

" Clean all the autocmd commands to prevent multiple executions on reload.
autocmd!

" First load up the plugins.
runtime config/plugins.vim

" Set some vim options.
runtime config/options.vim

" Set up the appearence.
runtime config/appearence.vim

" Load the keybindings.
runtime config/keymap.vim

" Load the fun stuff.
runtime config/coding.vim

" Load file type detection.
runtime config/filetypes.vim

" Load the personal definitions and changes.
runtime config/functions.vim

" Load the abbreviations.
runtime config/abbr.vim

" Load the personal definitions and changes.
runtime config/personal.vim

