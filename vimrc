" Copyright (c) 2011, Christopher Mark Gore,
" All rights reserved.
"
" 8729 Lower Marine Road, Saint Jacob, Illinois 62281 USA.
" Web: http://cgore.com
" Email: cgore@cgore.com
"
" Redistribution and use in source and binary forms, with or without
" modification, are permitted provided that the following conditions are met:
"
" * Redistributions of source code must retain the above copyright
" notice, this list of conditions and the following disclaimer.
"
" * Redistributions in binary form must reproduce the above copyright
" notice, this list of conditions and the following disclaimer in the
" documentation and/or other materials provided with the distribution.
"
" * Neither the name of Christopher Mark Gore nor the names of other
" contributors may be used to endorse or promote products derived from
" this software without specific prior written permission.
"
" THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
" IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
" ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
" LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
" CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
" SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
" INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
" CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
" ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
" POSSIBILITY OF SUCH DAMAGE.

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
set vb t_vb=
set foldlevelstart=99
set nonu
set magic
set printoptions=paper:letter

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
  set guifont=Courier\ 11
  set guioptions=aAcgi
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

au BufRead,BufNewFile *.prawn set filetype=ruby

au BufRead,BufNewFile *.asd set filetype=lisp

au FileType c,cpp set expandtab shiftwidth=4 foldmethod=syntax
au FileType html,htmldjango,xml,sgml,xhtml set expandtab shiftwidth=2 foldmethod=syntax
au FileType lisp set lisp expandtab shiftwidth=2 foldmethod=indent
au FileType perl set expandtab shiftwidth=4 foldmethod=indent
au FileType python set expandtab shiftwidth=4 foldmethod=indent
au FileType ruby,eruby set expandtab shiftwidth=2 foldmethod=syntax
au FileType sh,bash,zsh set expandtab shiftwidth=4 foldmethod=syntax
au FileType sql set expandtab shiftwidth=2 foldmethod=indent
au FileType tex set expandtab shiftwidth=2
au FileType vim set expandtab shiftwidth=2 foldmethod=syntax
