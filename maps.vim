let mapleader=" "

"plugs
nnoremap <Leader>nt :NERDTreeFind<CR>
map <Leader>s <Plug>(easymotion-s2)
nnoremap<Leader>p :Files<CR>
map <Leader>ag :Ag<CR>

"quick

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

"Split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><


"Tmux naviagor

nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

"Faster scrolling

noremap <C-j> 10<C-e> 
nnoremap <C-k> 10<C-y>

"buffer
map <Leader>ob :Buffers<cr>

"Terminal

set splitright
function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://bash"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-v> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-v> :call OpenTerminal()<CR>
