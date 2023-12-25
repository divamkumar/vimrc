" Set the cursor to a a blinking block at all times
" let &t_EI = "\e[1 q"

" Store the last 1000 commands in the history
set history=1000

" Show cursor position
set ruler

" Show the command being typed next to the cursor position
set showcmd

" Show the menu of commands that match the incomplete command
set wildmenu

" Set at least 5 lines above the top when zt, zz, zb are pressed, and also when scrolling
set scrolloff=5

" Highlight the matched terms to the search
set hlsearch

" Ignore case when searching by default
set ignorecase

" Use case when searching only if the case is typed in the search
set smartcase

" Setting related to storing backup files (e.g. filename~ files)
" set backup
" set bex=SOMETHING

" Set linebreak such that it doesn't cut off a word when wrapping around
set lbr
set wrap

" Syntax highlighting is on
syntax on

" Show line numbers
set number

" Have relative line numbers by default
set relativenumber

" Use normal line numbers in insert mode but relative line numbers in normal mode
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Change tabs to use 2 space characters instead. User :retab to make these changes to change all the tabs with these settings in the buffer.
function! UseSpaces()
  set tabstop=2 " Size of a hard tabstop (ts)
  set shiftwidth=2 smarttab " User 2-space indents. Smarttab is for setting tab key for indentation instead of for inserting tab characters when at the beginning of a line)
  set expandtab " Only use space characters, never tab characters
  set tabstop=8 softtabstop=0 " Set tabstops to be different from the indentation width, in order to reduce chance of tab characters masquerading as proper indents
  set autoindent " Copy indent form current line when starting a new line
  set smartindent " Apply syntax-aware indentation e.g. removing indent when putting } in C++)
endfunction

function! UseTabs()
  set tabstop=4 " Size of a hard tabstop (ts)
  set shiftwidth=4 " Size of an indentation (sw)
  set noexpandtab " Always use tabs instead of space characters (noet)
  set autoindent " Copy indent from current line when starting a new line
  set smartindent " Apply syntax-aware indentation e.g. removing indent when putting } in C++)
endfunction

call UseSpaces() " UseSpaces() by default

let mapleader=","

"===============================================================================================================================
" The following is vim movement tips that will serve as quick documentation for me
"  - caw = Change a word
"  - f/F = Search forwards and backwards within a long string
"  - w/W b/B = move to next word/capitalized word forward and backwards respectively
"  - :terminal = create a terminal buffer; type exit into the bash shell to close the buffer
"  - CTRL+W j,k,h,l = move up, down,left, right respectively between buffer windows
"  - CTRL+W w = switch between window
"  - CTRL+W +,- = adjust the window size of the buffer
"  - :b = open buffer panel and tab to choose a buffer
"  - :bd = buffer delete; you can tab to see the options to delete as well
"  - :e allows you to select another file to edit
"  - z+Enter/zt = place cursor at the top of the window (with respect to scrolloff setting)
"  - z+./zz = place cursor at center of the window
"  - z+_/zb = place cursor at the bottom of the window (with respect to scrolloff setting)
"  - "*y = when yanking lines, using this will yank to the system clipboard to allow the pasting from vim to anywhere outside of the terminal (e.g. to a search bar, etc.)
"  - :'<,'>w !clip.exe = this does the same thing as the above command except specifically when working within WSL
"  - :set list = this allows you to see the exact tab charater vs space characters when using UseSpace() or UseTabs() function when making makefiles or c++ programs
