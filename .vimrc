syntax on
filetype indent plugin on
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
filetype off                   " required!
autocmd filetype lisp,scheme,art,rkt setlocal equalprg=scmindent.rkt
autocmd bufread,bufnewfile *.lisp,*.scm setlocal equalprg=scmindent.rkt

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

Plugin '29decibel/codeschool-vim-theme'
Plugin 'scrooloose/nerdtree'
"Plugin 'davidhalter/jedi-vim'
Plugin 'flazz/vim-colorschemes'
"Plugin 'Rykka/riv.vim'
Plugin 'Rykka/InstantRst'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'avakhov/vim-yaml'
 " show diff 
Plugin 'airblade/vim-gitgutter'
Plugin 'losingkeys/vim-niji'
 " When you enter a '(' then a matching ')' is automatically inserted.
Plugin 'Townk/vim-autoclose'
 " When you enter a '(' then a matching ')' is automatically inserted. only
 " for lisp family
"Plugin 'vim-scripts/paredit.vim'
Plugin 'wlangstroth/vim-racket'
Plugin 'luochen1990/rainbow'
 " Send command from vim to a running tmux session
Plugin 'jgdavey/tslime.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

let g:paredit_mode = 1
au FileType arc call PareditInitBuffer()

let g:syntastic_check_on_open=1 
let g:syntasitc_python_checkers = ['flake8']

let sco_api_doc = { 'path': '~/work/saas/sco_api_doc/sco_api_doc/sphinx/sco_api',}
let g:riv_projects = [sco_api_doc]

filetype plugin indent on     " required!

"VIM Setting

" set color
set t_Co=256
colorscheme codeschool
"colorscheme desert
"colorscheme python

imap jj <ESC>
"NERDTree
nmap <silent> <F5> :NERDTree<CR>

" python-mode
let g:pymode_lint=0
let g:pymode_folding=0
let g:pymode_rope_vim_completion = 1
let g:pymode_rope = 1
let g:pymode_lint_message=0
"let g:pymode_rope_lookup_projdct = 1

" gutter
let g:gitgutter_max_signs = 500

  " By default vim will indent arguments after the function name
  " but sometimes you want to only indent by 2 spaces similar to
  " how DrRacket indents define. Set the `lispwords' variable to
  " add function names that should have this type of indenting.
  
set lispwords+=public-method,override-method,private-method,syntax-case,syntax-rules

let g:rainbow_active = 1

" tslime {{{
let g:tslime_ensure_trailing_newlines = 1
"let g:tslime_normal_mapping = '<leader>t'
"
" power line
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
"To display the status line always, set the following option in your vimrc:
set laststatus=2
