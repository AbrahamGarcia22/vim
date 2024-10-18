set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set colorcolumn=80
set noshowmode
set inccommand=nosplit
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

let $FZF_DEFAULT_COMMAND=""
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim
so ~/.vim/automations.vim
"call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
"IDE

"Plug 'easymotion/vim-easymotion'
"Plug 'scrooloose/nerdtree'
"Plug 'christoomey/vim-tmux-navigator'
"call plug#end()

"colorscheme gruvbox
"let g:gruvbox_contrast_dark="hard"
"let mapleader=" "
"let NERDTreeQuitOnOpen=1
"let g:kite_supported_languages = ['*']
nmap <Leader>s <Plug>(easymotion-s2)
autocmd FileType vim setlocal foldmethod=marker

"nmap <Leader>nt :NERDTreeFind<CR>
"
