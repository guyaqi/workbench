" vim config


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'preservim/nerdtree'
Plug 'zxqfl/tabnine-vim'
Plug 'luochen1990/rainbow'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" seoul256 config
colo seoul256

" nerdTree config
autocmd VimEnter * NERDTree | wincmd p
let NERDTreeShowHidden=1
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" rainbow bucket
let g:rainbow_active = 1

" basis
set number
set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8
set cursorline
set scrolloff=5
set sidescrolloff=15
set laststatus=2

" tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

