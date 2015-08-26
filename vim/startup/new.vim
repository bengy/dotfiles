" tComment
" http://www.vim.org/scripts/script.php?script_id=1173
" gc        - comment the highlighted text
" gcc       - comment out the current line

" Supertab
" http://www.vim.org/scripts/script.php?script_id=182
" :SuperTabHelp
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabMidWordCompletion = 1

" SnipMate
" http://www.vim.org/scripts/script.php?script_id=2540
" ,, - complete and tab to next section
" ,n - show list of snippets for this filetype

" bundle/snipmate/after/plugin/snipmate
ino <silent> <leader>, <c-r>=TriggerSnippet()<cr>
snor <silent> <leader>, <esc>i<right><c-r>=TriggerSnippet()<cr>
ino <silent> <leader>\< <c-r>=BackwardsSnippet()<cr>
snor <silent> <leader>\< <esc>i<right><c-r>=BackwardsSnippet()<cr>
ino <silent> <leader>n <c-r>=ShowAvailableSnips()<cr>

" Surround
" http://www.vim.org/scripts/script.php?script_id=1697
" default shortcuts

" Gist - github pastbin
" http://www.vim.org/scripts/script.php?script_id=2423
" :Gist
" :Gist -p (private)
" :Gist -l
" :Gist XXXX (fetch Gist XXXX and load)
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Syntastic
" Config syntastic

" vim-makegreen && vim-nosecompiler
" unit testing python code in during editing
" I use files in the same dir test_xxxx.*
" if we're already on the test_xxx.py file, just rerun current test file
" function MakeArgs()
"     if empty(matchstr(expand('%'), 'test_'))
"     " if no test_ on the filename, then add it to run tests
"     let make_args = 'test_%'
"     else
"     let make_args = '%'
"     endif
"
"     :call MakeGreen(make_args)
" endfunction
"
" autocmd FileType python map <buffer> <leader>t :call MakeArgs()<CR>


