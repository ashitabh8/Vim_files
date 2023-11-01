call plug#begin('~/.config/nvim/autoload/plugged')

    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    " Plug 'jiangmiao/auto-pairs'
    " Plug 'ggandor/lightspeed.nvim'
    Plug 'justinmk/vim-sneak'
    Plug 'tpope/vim-surround'
    " Plug 'easymotion/vim-easymotion'
    Plug 'unblevable/quick-scope'
    Plug 'tpope/vim-commentary'
    Plug 'spinks/vim-leader-guide'
    Plug 'dylanaraps/wal.vim'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Plug 'airblade/vim-rooter'
    Plug 'dpelle/vim-LanguageTool'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mhinz/vim-startify'

call plug#end()
