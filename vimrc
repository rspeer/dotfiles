"Rob's .vimrc file.
"
"I discovered that this file has been around on my computers since about 2000.
"Up until 2013 it still began with the following increasingly inaccurate
"comment:
"
""Linux-Mandrake configuration.
""Chmouel Boudjnah <chmouel@mandrakesoft.com>
"
"Chmouel Boudjnah set up some things that were designed to be helpful to
"newbies, and made them the default in the OS. Some of those things I've
"turned off, and some of them don't work anymore, but it was a great start.
"Thanks, Chmouel.

"Some initial setup that's required for vundle:
set nocompatible
filetype off

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

"Miscellaneous editing options.
"I don't have to add very many of these, because I use the 'vim-sensible'
"plugin.
set shiftwidth=4
set fillchars="vert:|,fold: "

"Turn off the toolbar. Turn on something else; I forget.
set guioptions-=T
set guioptions+=C

"I'm a lamer who navigates with arrow keys, so let's make 'k' and 'j' do
"something slightly different and useful, which is to navigate long lines
"according to what's up or down on the screen.
nnoremap <silent> k gk
nnoremap <silent> j gj

"Life's too short to hit shift.
nmap ; :

"Bundle pre-configuration
autocmd FileType python map <buffer> <Leader>8 :call Flake8()<CR>

"vundle configuration
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"My vundles
Bundle 'tpope/vim-sensible'
Bundle 'kevinw/pyflakes-vim'
Bundle 'nvie/vim-flake8'
Bundle 'ervandew/supertab'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'airblade/vim-gitgutter'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/TaskList.vim'

"Bundle configuration
let g:airline_left_sep = ''
let g:airline_right_sep = ''

set t_Co=256
set background=dark
"set updatetime=2000

nmap <Leader>o :NERDTreeToggle<CR>
nmap <Leader>l :TagbarToggle<CR>
nmap [5;5~ <C-PageUp>
nmap [6;5~ <C-PageDown>
nmap [5;5~ <C-PageUp>a
nmap [6;5~ <C-PageDown>a

let g:NERDTreeChdirMode=2
let g:NERDTreeQuitOnOpen=1
"let g:tagbar_autoclose=1
let g:tagbar_sort = 0
let g:tagbar_autoshowtag = 1
