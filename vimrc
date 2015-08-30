set nocompatible 	" no vi stuff

"""""""""""""""""""""""""
"	VUNDLE
"""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" general code editing
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'

" IDE features
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'	" needed for unite
Plugin 'easymotion/vim-easymotion'

" JS plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

call vundle#end()

filetype plugin indent on
syntax on
let mapleader=','

nmap <silent> <Leader>pi :PluginInstall<cr>

" no arrow keys here :)
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"UI
" set background=dark
" color solarized

" highlight cursor and column line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn

" editor settings
set t_Co=256		" terminal has 256 colors
set number		" line numbers are a must
set showmatch		" show matching brackets..
set matchtime=2		" ..for .2 seconds
set showcmd		" show command in status bar
set laststatus=2	" 2 lines for status bar
set clipboard=unnamed 	" make yanked text available outside of vim
set scrolloff=5

" indentation
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" window/tab navigation
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_auto_jump = 1

" unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :Unite -direction=below -buffer-name=files -start-insert -winheight=10 file_rec/git<cr>
