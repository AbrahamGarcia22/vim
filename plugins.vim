call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/vim-lsp'
"Plug 'GrzegorzKozub/vim-elixirls', { 'do': ':ElixirLsCompileSync' }
"Status Bar"
"Plug 'maximbaz/lightline-ale'
"Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
"Syntax
Plug 'sheerun/vim-polyglot'

Plug 'wlangstroth/vim-racket'
"Themes
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'sainnhe/gruvbox-material'

"typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'


"Tree
Plug 'scrooloose/nerdtree'

"Fixers
Plug 'captbaritone/better-indent-support-for-php-with-html'


"tmux
Plug 'christoomey/vim-tmux-navigator'

"autocomplete
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
"GIT
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
"IDE
Plug 'yggdroot/indentline'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
"Plug 'mhinz/vim-signify'
Plug 'frazrepo/vim-rainbow'
Plug 'turbio/bracey.vim'
Plug 'beanworks/vim-phpfmt'
Plug 'sansyrox/vim-python-virtualenv'
Plug 'nvim-lualine/lualine.nvim'
Plug 'hoob3rt/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
call  plug#end()
