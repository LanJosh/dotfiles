set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'

call vundle#end()

" SHORTCUTS
let mapleader = "'"
nmap <leader>ne :NERDTreeToggle<cr>

" GLOBAL SPACING SETTINGS
set tabstop=4
set shiftwidth=4
set expandtab
filetype indent on

" VIM UI SETTINGS
syntax on
set number
set ruler

" VIM COPY SETTINGS
set clipboard=unnamed

" FILE SPECIFIC SPACING SETTINGS
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" SYNTASTIC SETTINGS
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" SYNTASTIC CHECKERS
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']

