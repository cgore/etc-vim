" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set backspace=indent,eol,start
set backup
set history=5000
set ruler
set showcmd
set incsearch
set linebreak
set nocindent autoindent smartindent
set smarttab
set showmatch
set visualbell " Get rid of the annoying beep.
set foldlevelstart 99

syntax on
set tags=tags;/ " TODO: This might need to be modified.

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
set background=dark
if has("gui_running")
  colorscheme gore
  set columns=80 lines=40
  set guifont=Monospace\ 10
  set guioptions=aArmgit
endif

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 80 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event
  " handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal g`\"" |
        \ endif

augroup END

au FileType c,cpp set expandtab shiftwidth=4 foldmethod=syntax nu nuw=5
au FileType html,htmldjango,xml,sgml,xhtml set expandtab shiftwidth=2 foldmethod=syntax
au FileType lisp set lisp expandtab shiftwidth=2 foldmethod=indent
au FileType perl set expandtab shiftwidth=4 foldmethod=indent nu nuw=5
au FileType python set expandtab shiftwidth=4 foldmethod=indent nu nuw=5
au FileType ruby,eruby set expandtab shiftwidth=2 foldmethod=syntax nu nuw=5
au FileType sh,bash,zsh set expandtab shiftwidth=4 foldmethod=syntax
au FileType sql set expandtab shiftwidth=2 foldmethod=indent nu nuw=5
au FileType vim set expandtab shiftwidth=2 foldmethod=syntax nu nuw=5
