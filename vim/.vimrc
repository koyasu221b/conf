" syntax highlighting
syntax on

" enables filetype detection
filetype on

" enable indent file for different filetyp
filetype indent on

" enable plugin 
filetype plugin on

" enable the status line at the bottom of the window. By default, it displays the line number, the column number
set ruler

" indent setting
set autoindent
set smartindent

" tab setting
set tabstop=4 "the width for tab"
set shiftwidth=4 "reindent's (>> or <<) width"
set softtabstop=2 "control how many columns vim uses when you hit Tab in insert mode"
set expandtab "change the tab to space"

" searching 
set incsearch "vim start searching when you type the first character of the search string."
set hlsearch "highlight search"
set ignorecase "ignore case
set smartcase  " distiguish Apple, APple, Apple

set showcmd
set number
set modeline
set background=dark
set nobackup
set nocompatible               " be iMproved
set backspace=indent,eol,start

"tell Vim where to look for the tags file.
set tags=./tags;

"Use ack instead of grep "For example :grep controller
set grepprg=ack

imap jj <ESC>
"NERDTree
nmap <silent> <F5> :NERDTree<CR>

" power line
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
"To display the status line always, set the following option in your vimrc:
set laststatus=2
filetype off                   " required!

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

Plugin 'scrooloose/nerdtree'

Plugin 'Rykka/InstantRst'

" C
Plugin 'vim-scripts/c.vim'
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
autocmd filetype lisp,scheme,art setlocal equalprg=scmindent.rkt

 " js
"Plugin 'othree/html5.vim'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'pangloss/vim-javascript'
"let g:javascript_enable_domhtmlcss = 1
"Plugin 'moll/vim-node'
"Plugin 'wookiehangover/jshint.vim'
"let JSHintUpdateWriteOnly=1
"Plugin 'Shutnik/jshint2.vim'
"Plugin 'mattn/emmet-vim'
"Plugin 'maksimr/vim-jsbeautify'
"Plugin 'einars/js-beautify'

" react js
Plugin 'mxw/vim-jsx'

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


" provides insert mode auto-completion for quotes, parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" rainbow 
"Plugin 'luochen1990/rainbow'
"let g:rainbow_active = 1
Plugin 'losingkeys/vim-niji'
let g:niji_dark_colours = [
    \ [ '81', '#5fd7ff'],
    \ [ '99', '#875fff'],
    \ [ '1',  '#dc322f'],
    \ [ '76', '#5fd700'],
    \ [ '3',  '#b58900'],
    \ [ '2',  '#859900'],
    \ [ '6',  '#2aa198'],
    \ [ '4',  '#268bd2'],
    \ ]

Plugin 'vim-scripts/paredit.vim'

 " Send command from vim to a running tmux session
Plugin 'jgdavey/tslime.vim'
let g:tslime_ensure_trailing_newlines = 1
let g:tslime_normal_mapping = '<localleader>t'
let g:tslime_visual_mapping = '<localleader>t'
let g:tslime_vars_mapping = '<localleader>T'
vmap <C-c><C-c> <Plug>SendSelectionToTmux
nmap <C-c><C-c> <Plug>NormalModeSendToTmux
nmap <C-c>r <Plug>SetTmuxVars

" powerline bar
Plugin 'Lokaltog/vim-powerline'

" quick comment
Plugin 'tomtom/tcomment_vim'

" Most Recently Used files
Plugin 'yegappan/mru'

" find file on:ctrl p , off:ctrl g , mode:ctrl f
Plugin 'kien/ctrlp.vim'

" take /yourdir/ as root directory
noremap <C-a> :CtrlP ~/<CR>

" matchit, find the ending put % on the tag
Plugin 'tmhedberg/matchit'

" indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" code-complete engine for Vim
Plugin 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

"automatically adjust shiftwidth and expandtab by files
Plugin 'tpope/vim-sleuth'
" ack
" usage :Ack [options] {pattern} [{directories}]
Plugin 'mileszs/ack.vim'

" GO
Plugin 'fatih/vim-go'
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" automatically insert import paths
let g:go_fmt_command = "goimports" 

" clojure
Plugin 'tpope/vim-fireplace'

" scala
Plugin 'ktvoelker/sbt-vim'
Plugin 'derekwyatt/vim-scala'

" Elixir
Plugin 'elixir-lang/vim-elixir'
"Lisp
Plugin 'kovisoft/slimv'

"DirDiff 
"Usage DirDiff <dir1> <dir2>
Plugin 'will133/vim-dirdiff'

call vundle#end()
filetype plugin indent on

" Color Scheme
set term=screen-256color
Plugin '29decibel/codeschool-vim-theme'
Plugin 'flazz/vim-colorschemes'
set t_Co=256
set background=dark
color Tomorrow-Night
colorscheme codeschool

au FileType arc call PareditInitBuffer()
au BufRead,BufNewFile *.scss set filetype=scss.css
au BufReadPost *.html set syntax=JavaScript


let g:syntastic_check_on_open=1
filetype plugin indent on     " required!

" Indent Python in the Google way.

setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"
" Highlight comments in italics
highlight Comment cterm=italic
