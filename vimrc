
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" settings "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
set hlsearch
set incsearch
set tabstop=4
set shiftwidth=4
syntax on
set showcmd
set smartcase


" 总是显示状态栏
" set laststatus=2
" 显示光标当前位置
" set ruler
" 高亮显示当前行/列
set cursorline
"set cursorcolumn

" Turn off cursor blinking: just need to turn off => Settings -> Keyboard -> CursorBlinking
"set gcr=a:block-blinkon0

" set for vim-cursorword
set list lcs=tab:\|\ 

se t_Co=256
set tags=./tags;,tags
let g:NERDTreeWinPos="right"

" set for supertab
let g:SuperTabMappingForward = "<tab>"
let g:SuperTabMappingBackward= "s-tab"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"" Use quickfix window to show cscope results
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"
nmap <c-\>w :copen<CR>
nmap <c-\>ww :cclose<CR>

nmap <F2> :copen<CR>
nmap <F3> :cclose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug-in "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged') 
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/LeaderF'
Plug 'vim-scripts/a.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'brookhong/cscope.vim'
"Plug 'chazy/cscope_maps'
Plug 'steffanc/cscopemaps.vim'
Plug 'yggdroot/indentline'
Plug 'vim-scripts/autoload_cscope.vim'
Plug 'itchyny/vim-cursorword'
call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set color scheme "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark    " Setting dark mode
"set bg=light
"set guioptions=                 "去掉两边的scrollbar
"set guifont=Monaco:h17          "设置字体和字的大小

" change function color
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81
