" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=8        " tab width is 8 spaces
set shiftwidth=8     " indent also with 8 spaces
set noexpandtab        " no expand tabs to spaces
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

" turn syntax highlighting on
set t_Co=256
syntax on
"colorscheme wombat256

" turn line numbers on
set number

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
" set tags+=~/.vim/tags/cpp
" set tags+=~/.vim/tags/gl
" set tags+=~/.vim/tags/sdl
" set tags+=~/.vim/tags/qt4

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
" let g:DoxygenToolkit_authorName="John Doe <john@doe.com>"

" Enhanced keyboard mappings
"
" in normal mode F2 will save the file
nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
imap <F2> <ESC>:w<CR>i
"  make with F4 
nmap <F4> :make<CR>
" in insert mode F4 will exit insert, make, enters insert again
imap <F4> <ESC>:make<CR>i
" recreate tags file with F5
map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
map <F6> :Dox<CR>
" build using makeprg with <F7>
map <F7> :make<CR>
" build using makeprg with <S-F7>
map <S-F7> :make clean all<CR>
" goto definition with F12
map <F12> <C-]>

"autocomplete braces
inoremap { {<CR>}<Esc>ko

"autocomplete parentheses
"inoremap ( ()<Esc>i

set nobackup
set noswapfile
source ~/cscope_maps.vim

" press F5 to reload cscope tags
map <F5> :!cscope -Rb<CR>:cs reset<CR><CR>  
set title
