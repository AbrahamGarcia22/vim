let mapleader=" "
"plugs
nnoremap <Leader>nt :NERDTreeFind<CR>
map <Leader>s <Plug>(easymotion-s2)
nnoremap<Leader>p :Files<CR>
map <Leader>ag :Ag<CR>
"quick

nnoremap <Leader>; A;<Esc>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>n :noh<CR>

nnoremap <Leader>, a<
nnoremap <Leader>. a>
"Split resize
nnoremap <Leader><S-a> 10<C-w>>
nnoremap <Leader><S-s> 10<C-w><


"Tmux naviagor

nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>

"Faster scrolling

nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

"buffer
map <Leader>ob :Buffers<cr>

"ale
nmap <Leader>k <Plug>(ale_previous_wrap)
nmap <Leader>j <Plug>(ale_next_wrap)
xmap s <Plug>VSurround
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
    execute "tnoremap <buffer> <Leader><C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <Leader><C-l> <C-\\><C-n><C-w><C-l>"
    execute "tnoremap <buffer> <C-v> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap <C-v> :call OpenTerminal()<CR>
