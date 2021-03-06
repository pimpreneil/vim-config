set fileformat=unix
set encoding=utf-8
syn on

" Wrap long lines, but not at the middle of a word.
set wrap
set formatoptions=l
set lbr

" Make backspace work like most other apps
set backspace=2

set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4

" Folding options
set foldmethod=indent
set foldnestmax=10
set nofoldenable  " Don't fold by default.
set foldlevel=1

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" Adds automatically 'set nocompatible' option.
runtime! debian.vim

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Use Project
runtime! ~/.vim/plugin/Project.vim

" Disabling any noisy or flashy beep
set vb t_vb=

" Using tags file
set tags+=.ctags

call pathogen#infect()
call pathogen#runtime_append_all_bundles()
