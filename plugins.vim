
call plug#begin('~/.vim/plugged')

Plug 'prabirshrestha/vim-lsp'
"Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }
"Status Bar"
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
"Syntax
Plug 'sheerun/vim-polyglot'

Plug 'wlangstroth/vim-racket'
"Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'


"Tree
Plug 'scrooloose/nerdtree'


"tmux
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

"IDE
Plug 'yggdroot/indentline'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call  plug#end()
