 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Misc.
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Runtime
set runtimepath^=~/my-machine/vim/bundle/

" How many line of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Read when file is changed outside
set autoread

" Highlight search results
set hlsearch

" Ignore case when searching
set ignorecase

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Return to last edit position when opening files
 au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Keystrokes
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" f key advances words at a time
map f W 

" d key goes back words at a time 
map d B


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Scrolling
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <silent> <C-u> :call smooth_scroll#up(5, 0, 2)<CR>
noremap <silent> <C-d> :call smooth_scroll#down(5, 0, 2)<CR>
noremap <silent> <C-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <C-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Text, tab and indent related
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Use spaces instead of tabs
 set expandtab

 " Be smart when using tabs
 set smarttab

 " 1 tab == 4 spaces
 set shiftwidth=4
 set tabstop=4

 " Linebreak on 500 characters
 set lbr
 set tw=500

 set ai "Auto indent
 set si "Smart indent
 set wrap "Wrap lines

 """"""""""""""""""""""""""""""
 " => Status line
 """"""""""""""""""""""""""""""
 " Always show the status line
 set laststatus=2

 " Format the status line
 set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

 
" Colorscheme
 set background=dark
syntax on
 colorscheme peaksea

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Parenthesis/bracket
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 vnoremap $1 <esc>`>a)<esc>`<i(<esc>
 vnoremap $2 <esc>`>a]<esc>`<i[<esc>
 vnoremap $3 <esc>`>a}<esc>`<i{<esc>
 vnoremap $$ <esc>`>a"<esc>`<i"<esc>
 vnoremap $q <esc>`>a'<esc>`<i'<esc>
 vnoremap $e <esc>`>a"<esc>`<i"<esc>

 " Map auto complete of (, ", ', [
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

 """"""""""""""""""""""""""""""
 " => Python section
 """"""""""""""""""""""""""""""
 let python_highlight_all = 1
 au FileType python syn keyword pythonDecorator True None False self

 au BufNewFile,BufRead *.jinja set syntax=htmljinja
 au BufNewFile,BufRead *.mako set ft=mako

 au FileType python map <buffer> F :set foldmethod=indent<cr>

 au FileType python inoremap <buffer> $r return
 au FileType python inoremap <buffer> $i import
 au FileType python inoremap <buffer> $p print
 au FileType python inoremap <buffer> $f # --- <esc>a
 au FileType python map <buffer> <leader>1 /class
 au FileType python map <buffer> <leader>2 /def
 au FileType python map <buffer> <leader>C ?class
 au FileType python map <buffer> <leader>D ?def
 au FileType python set cindent
 au FileType python set cinkeys-=0#
 au FileType python set indentkeys-=0#
 au FileType python set colorcolumn=88
