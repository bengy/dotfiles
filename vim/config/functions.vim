" Author:  Benjamin Rau
" License: MIT

"" Make things function the way you want them to.
" Execute the command and read the result into the buffer
:command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>
