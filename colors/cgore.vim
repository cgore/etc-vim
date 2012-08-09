" Copyright (c) 2011-2012, Christopher Mark Gore,
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
"   notice, this list of conditions and the following disclaimer.
"
" * Redistributions in binary form must reproduce the above copyright
"   notice, this list of conditions and the following disclaimer in the
"   documentation and/or other materials provided with the distribution.
"
" * Neither the name of Christopher Mark Gore nor the names of other
"   contributors may be used to endorse or promote products derived from
"   this software without specific prior written permission.
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

" This is based upon the koehler color file, tweaked to my personal preferences.
" Hopefully you will find it useful.

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "gore"
hi Normal         guifg=white    guibg=#002B36
hi Scrollbar      guifg=darkcyan guibg=cyan
hi Menu           guifg=black    guibg=cyan
hi SpecialKey     term=bold          cterm=bold  ctermfg=darkred  guifg=#cc0000
hi NonText        term=bold          cterm=bold  ctermfg=darkred  gui=bold      guifg=#cc0000
hi Directory      term=bold          cterm=bold  ctermfg=brown  guifg=#cc8000
hi ErrorMsg       term=standout      cterm=bold  ctermfg=grey  ctermbg=red  guifg=White  guibg=Red
hi Search         term=reverse       ctermfg=white  ctermbg=red      guifg=white  guibg=Red
hi MoreMsg        term=bold          cterm=bold  ctermfg=darkgreen	gui=bold  guifg=SeaGreen
hi ModeMsg        term=bold          cterm=bold  gui=bold  guifg=White	guibg=Blue
hi LineNr         term=underline     cterm=bold  ctermfg=darkcyan	guifg=Yellow
hi Question       term=standout      cterm=bold  ctermfg=darkgreen	gui=bold  guifg=Green
hi StatusLine     term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi StatusLineNC   term=reverse	     ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Title          term=bold          cterm=bold  ctermfg=darkmagenta  gui=bold	guifg=Magenta
hi Visual         term=reverse	     cterm=reverse  gui=reverse
hi WarningMsg     term=standout      cterm=bold  ctermfg=darkred guifg=Red
hi Cursor                                                     guifg=bg       guibg=Green
hi Comment        term=bold          cterm=bold ctermfg=cyan     guifg=#80a0ff  guibg=#00303C
hi Constant       term=underline     cterm=bold ctermfg=magenta  guifg=#ffa0a0
hi String         term=underline     cterm=bold ctermfg=magenta  guifg=#c0f0ff
hi Special        term=bold          cterm=bold ctermfg=red      guifg=Orange
hi Identifier	  term=underline     ctermfg=brown  guifg=#40ffff
hi Statement	  term=bold          cterm=bold ctermfg=yellow	gui=bold  guifg=#ffff60
hi PreProc        term=underline     ctermfg=darkmagenta   guifg=#ff80ff
hi Type           term=underline     cterm=bold ctermfg=lightgreen  gui=bold  guifg=#60ff60
hi Error          term=reverse	     ctermfg=darkcyan  ctermbg=black  guifg=Red	guibg=Black
hi Todo           term=standout      ctermfg=black	ctermbg=darkcyan  guifg=Blue  guibg=Yellow
hi CursorLine	  term=underline     guibg=#555555 cterm=underline
hi CursorColumn	  term=underline     guibg=#555555 cterm=underline
hi MatchParen	  term=reverse       ctermfg=blue guibg=Blue
hi TabLine        term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineFill	  term=bold,reverse  cterm=bold ctermfg=lightblue ctermbg=white gui=bold guifg=blue guibg=white
hi TabLineSel	  term=reverse	     ctermfg=white ctermbg=lightblue guifg=white guibg=blue
hi Folded         term=standout      ctermfg=11 ctermbg=8 guifg=Cyan guibg=#000040
hi OverLength     term=reverse       ctermbg=darkred ctermfg=white guibg=#702929
hi TrailingSpace  term=reverse       ctermbg=darkred ctermfg=white guibg=#702929
hi ShowAllTabs    term=reverse       ctermbg=darkred ctermfg=white guibg=#702929

match ShowAllTabs /\t\+/
match OverLength /.\%>80v/
match TrailingSpace /\s\+$/

hi link IncSearch	Visual
hi link Character	Constant
hi link Number		Constant
hi link Boolean		Constant
hi link Float		Number
hi link Function	Identifier
hi link Conditional	Statement
hi link Repeat		Statement
hi link Label		Statement
hi link Operator	Statement
hi link Keyword		Statement
hi link Exception	Statement
hi link Include		PreProc
hi link Define		PreProc
hi link Macro		PreProc
hi link PreCondit       PreProc
hi link StorageClass	Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
