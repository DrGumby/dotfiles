" Vimrc configuration file
" Author: Kamil Vojanec
" Email: xvojan00@stud.fit.vutbr.cz

let VIM_DIR = $VIM "windows
let VIM_DIR = "~/.vim"

set nocompatible
filetype on
set laststatus=2
set number
set ignorecase
set ruler
syntax enable



if !has('gui_running')
	set t_Co=256
endif

"Indent settings
set tabstop=4
set shiftwidth=4
set expandtab
set wm=5 "set right side wrapping
set autoindent

"Plugin admin
set background=dark
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/syntastic'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Valloric/YouCompleteMe'
Plugin 'DoxygenToolkit.vim'
call vundle#end()
filetype plugin indent on


colorscheme neodark

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
map <C-n> :NERDTreeToggle<CR>


"Remap ctrl+s to save
nnoremap <C-s> :w<cr>
inoremap <C-s> <Esc>:w <cr>
vnoremap <C-s> <Esc>:w <cr>
