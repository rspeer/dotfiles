"Rob's .vimrc file.
"
"I discovered from the comments that this file has been around on my computers
"since about 2000. Up until 2013 it still began with the following
"increasingly inaccurate comment:
"
""Linux-Mandrake configuration.
""Chmouel Boudjnah <chmouel@mandrakesoft.com>
"
"Chmouel Boudjnah set up some things that were designed to be helpful to
"newbies, and made them the default in the OS. Some of those things I've
"turned off, and some of them don't work anymore, but it was a great start.
"Thanks, Chmouel.

"Syntax highlighting.
syntax on

"Display a status-line.
set statusline=~

"I don't need what ctrl-A and ctrl-E do by default in vim. Somewhere I picked
"up the Emacs keystrokes, so let's make them do that instead.
nmap <C-a> I
nmap <C-e> A
imap <C-a> <Esc>I
imap <C-e> <Esc>A

"Capital Q for word wrap.
nmap Q gqap
command Code set textwidth=0 ts=4 sts=4 nowrap

"Default tab for 4
set ts=4 sts=4
set expandtab

"If I want things to wrap, I'll do it myself.
set textwidth=0

"Make the backspace key do what you expect. (Is this still necessary?)
set bs=2

"Incremental search
set incsearch

"Show the position of the cursor.
set ruler

"Show matching parenthese.
set showmatch

set autoindent
set ttyscroll=0
set shiftwidth=4
set modeline
set modelines=5
set fillchars="vert:|,fold: "

"Turn off the toolbar. Turn on something else; I forget.
set guioptions-=T
set guioptions+=C

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
colo koehler

"if !exists("autocommands_loaded")
"  let autocommands_loaded = 1
"  autocmd BufRead,BufNewFile,FileReadPost *.py source ~/.vim/python.vim
"endif

nmap ; :
nnoremap <silent> k gk
nnoremap <silent> j gj

set wildmenu
set wildmode=list:longest,full
filetype plugin on
