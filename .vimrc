" Make tabs a pre-defined number of spaces.
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Ensure that no line can exceed 80 characters.
set autoindent
set textwidth=80

" Create "word processor" mode for use when required.
" Create function
func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu

" Define how to activate it.
" When in command mode, call "WP".
com! WP call WordProcessorMode()
 
" Color theme. There are dozens. Todo: Check the web for monokai at http://vimcolors.com/.
" colorscheme darkblue

" Use Vumdle to manage 3rd-party packages.
" In-between "Vundle#begin()" and "vundle#End()" is where you add the packages to install.
" Once added, in command mode, run ":PluginInstall".
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Plugin 'L9'
call vundle#end()
filetype plugin indent on

