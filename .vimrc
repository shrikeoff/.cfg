set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"set hlsearch
set incsearch

"set number
set relativenumber

set cursorline
set mouse=a
set foldcolumn=2
syntax on
set encoding=utf8

augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here
Plugin 'mattn/emmet-vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ap/vim-css-color'
Plugin 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:user_emmet_leader_key='<TAB>'
let g:airline_theme='base16_ocean'

