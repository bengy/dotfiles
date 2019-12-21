" Author:  Benjamin Rau
" License: MIT

"" Set the filetype for files without extensions.
autocmd BufRead,BufNewFile .tern-project set filetype=json
autocmd BufRead,BufNewFile .jshintrc set filetype=json
autocmd BufRead,BufNewFile .jsbeautifyrc set filetype=json
autocmd BufRead,BufNewFile .jscscr set filetype=json
autocmd BufRead,BufNewFile .eslintrc set filetype=json
autocmd BufRead,BufNewFile coc-settings.json set filetype=jsonc
