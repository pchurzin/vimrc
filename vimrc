" theneedtocode vimrc file
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc
"
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype off

" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"
" Add smart commands for comments like:
" gcc - Toggle comment for the current line
" gc  - Toggle comments for selected region or number of strings
" Very usefull
Bundle 'tomtom/tcomment_vim'
Bundle 'gregsexton/MatchTag'
Bundle 'edsono/vim-matchit' "match xml tags and more

" less support
Bundle "KohPoll/vim-less"

" Prefixr
Bundle "vim-scripts/prefixer.vim"

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif

filetype plugin indent on
set history=50		" keep 50 lines of command line history
set number
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands

" Search options

" Add the g flag to search/replace by default
set gdefault

" Highlight search results
set hlsearch

" Ignore case in search patterns
set ignorecase

" Override the 'ignorecase' option if the search patter ncontains upper case characters
set smartcase

" Live search. While typing a search command, show where the pattern
set incsearch

" Show matching brackets
set showmatch

" Make < and > match as well
set matchpairs+=<:>

set showmode

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
set smartindent
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set encoding=utf-8
colorscheme desert

" russian
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"Project plugin settings
nmap <silent> <F9> <Plug>ToggleProject
" Add '-' as recognized word symbol. e.g dw delete all 'foo-bar' instead just 'foo'
set iskeyword+=-
