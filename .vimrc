"syntax highlighting
syntax on

"enables filetype detection
filetype on

"enable indent file for different filetyp
filetype indent on

"enable plugin 
filetype plugin on

set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set number
set shiftwidth=4
set softtabstop=4
set modeline
set expandtab
set background=dark
set nobackup
set nocompatible               " be iMproved
set autoindent
set t_Co=256

imap jj <ESC>
"NERDTree
nmap <silent> <F5> :NERDTree<CR>

" power line
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
"To display the status line always, set the following option in your vimrc:
set laststatus=2
filetype off                   " required!

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 " let Vundle manage Vundle
 " required! 
Plugin 'gmarik/vundle'

 " original repos on github
Plugin 'tpope/vim-fugitive'
 
 " syntasitc
Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntasitc_python_checkers = ['flake8']

Plugin '29decibel/codeschool-vim-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'

Plugin 'Rykka/InstantRst'

 " python 
 " Got to definition <C-c>g 
Plugin 'klen/python-mode'

let g:pymode_lint=0
let g:pymode_folding=0
let g:pymode_rope_vim_completion = 1
let g:pymode_rope = 1
let g:pymode_lint_message=0
"let g:pymode_rope_lookup_projdct = 1

 " racket
Plugin 'wlangstroth/vim-racket'

 " js
Plugin 'othree/html5.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
let g:javascript_enable_domhtmlcss = 1
Plugin 'moll/vim-node'
Plugin 'wookiehangover/jshint.vim'
let JSHintUpdateWriteOnly=1
"Plugin 'Shutnik/jshint2.vim'
Plugin 'mattn/emmet-vim'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'

" This is a Vim plugin that provides Tern-based JavaScript editing support.
Plugin 'marijnh/tern_for_vim'

 " css
"Plugin 'skammer/vim-css-color'
Plugin 'JulesWang/css.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'

 "rails
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" SnipMate
" type tag <tab>
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

" Surround
Plugin 'tpope/vim-surround'

Plugin 'avakhov/vim-yaml'

 " show diff 
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_max_signs = 500

Plugin 'losingkeys/vim-niji'

" provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" rainbow 
Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1

 " Send command from vim to a running tmux session
Plugin 'jgdavey/tslime.vim'
let g:tslime_ensure_trailing_newlines = 1

" powerline bar
Plugin 'Lokaltog/vim-powerline'

" quick comment
Plugin 'tomtom/tcomment_vim'

" Most Recently Used files
Plugin 'yegappan/mru'

" find file on:ctrl p , off:ctrl g , mode:ctrl f
Plugin 'kien/ctrlp.vim'

" matchit, find the ending put % on the tag
Plugin 'tmhedberg/matchit'

" indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" code-complete engine for Vim
Plugin 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview



call vundle#end()
filetype plugin indent on

colorscheme codeschool
"colorscheme distinguished
"colorscheme python
au FileType arc call PareditInitBuffer()
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufReadPost *.html set syntax=JavaScript


let g:syntastic_check_on_open=1
