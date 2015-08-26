" Update the error list
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Syntastic
let g:syntastic_c_checkers=['make']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*gbar

" Ignore those angular attributes to show up as errors


let g:ycm_global_ycm_extra_conf='~/.vim/youcompleteme/.ycm_extra_conf.py'
" let g:ycm_path_to_python_interpreter='/usr/bin/python/'
" use omnicomplete whenever there's no completion engine in youcompleteme (for
" example, in the case of PHP)
set omnifunc=syntaxcomplete#Complete

" Start autocompletion after the first character
let g:ycm_min_num_of_chars_for_completion = 1
" Seed the compelter list with the keywords of the programming language
let g:ycm_seed_identifiers_with_syntax = 1

