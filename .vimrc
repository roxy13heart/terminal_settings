" Name this file .vimrc (the dot is important) and put it in your home directory

set undofile
set undodir=~/.vim/undodir/












" GENERAL OPTIONS
behave xterm
set viminfo='20,\"500,%	" ' Maximum number of previously edited files for which the marks
			"   are remembered.  
			" " Maximum number of lines saved for each register.
			" % When included, save and restore the buffer list.  If Vim is
			"   started with a file name argument, the buffer list is not
			"   restored.  If Vim is started without a file name argument, the
			"   buffer list is restored from the viminfo file.  Buffers
			"   without a file name and buffers for help files are not written
			"   to the viminfo file.
set history=500		" keep {number} lines of command line history

" TAB HANDLING, C program formatting:
set tabstop=8		" ts, number of spaces that a tab *in an input file* is equivalent to
set softtabstop=3       "     number of spaces that a tab *pressed by the user* is equivalent to
set shiftwidth=3	" sw, number of spaces shifted left and right when issuing << and >>
			"  commands
set expandtab           " don't output tabs; replace with spaces.
set autoindent          " follow current indentation
set smartindent         " obey brace-indentation rules
set wrap                " whether to wrap lines
" Make breaks more obvious
set showbreak=+++\ \  
set number		" number lines
set nocompatible
set incsearch
set showmatch
set backspace=2

syntax on
set cinoptions=:0,p0,t0
set cinwords=if,unless,else,while,until,do,for,switch,case
set formatoptions=tcqr
set cindent

" VIM DISPLAY OPTIONS
set showmode		" show which mode (insert, replace, visual)
set ruler
set title
set showcmd		" show commands in status line when typing
set wildmenu	

" KEY MAPPINGS

:map <F2> :set filetype=c<cr>i/*<cr>CPE 101 Winter 2014<cr>-------------------<cr>Assignment: <cr><cr>Author: <cr>Last Modified: <cr>/<cr><cr>#include <unistd.h><cr>#include <sys/types.h><cr><cr>#include <stdlib.h><cr>#include <stdio.h><cr>#include <math.h><cr>#include <string.h><cr>#include <ctype.h><cr><cr>int main(int argc, char *argv[]) {<cr><cr>return EXIT_SUCCESS;<cr>}<cr><esc>

" F5 Creates a README (that you can fill in)
" Don't use this if the file already exists.
:map <F5> :e README<cr>1GiName: <cr>Login: <cr>Section: CPE 101-XX Winter 2014<cr>Instructor: <cr>Project: Lab: <cr>Last Modified: <cr><esc><cr>


"  Tab Clears up formatting by doing the following:
"  Ensure UNIX formatting (no CR chars, NL after the last line).
"  Insert a tab at the end of the current line (to avoid errors in next
"      step).
"  Then replace all tabs with 2 spaces.  That is, "detab".
"  Then, remove any spaces at the end of lines (this corrects the inserted
"      tab).
"  Then, clean up some annoying highlights in the file.
"  Note: this detabbing should work for tabs at the beginning of the line, but
"      will probably be somewhat wrong for tabs later in the line, but
"      wherever they used to be, they'll now be gone.
:map <Tab> mz:set fileformat=unix<cr>:set endofline<cr>A<C-V><Tab><esc>:%s/<C-V><Tab>/   /g<cr>:%s/\s*$//<cr>:nohlsearch<cr>ggVG=`z

" F6 works like tab, but works even in insert mode.
:map <F6> <Tab>
:imap <F6> <esc>mz<Tab>`za

" ABBREVIATIONS
:ab cmain <cr>int main(int argc, char *argv[]) {<cr>return 0;<cr><bs>}<cr><esc>kkO<tab>	<esc>
