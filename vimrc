
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


" set for vim-cursorword
set list lcs=tab:\|\ 

se t_Co=256
set tags=./tags;,tags
let g:NERDTreeWinPos="right"

" set for supertab
let g:SuperTabMappingForward = "<tab>"
let g:SuperTabMappingBackward= "s-tab"


"if filereadable("cscope.out") " 若当前目录下存在cscope数据库，添加该数据库到vim
"	cs add cscope.out
"elseif $CSCOPE_DB != "" " 否则只要环境变量CSCOPE_DB不为空，则添加其指定的数据库到vim
"	cs add $CSCOPE_DB
"endif

" Use both cscope and ctag
"set cscopetag

" Show msg when cscope db added
"set cscopeverbose

" Use tags for definition search first
"set cscopetagorder=1

" Use quickfix window to show cscope results
"set cscopequickfix=s-,c-,d-,i-,t-,e-
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope 自动加载cscope.out文件
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set csverb
    set cspc=3
    "add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out
    "else search cscope.out elsewhere
    else
        let cscope_file=findfile("cscope.out",".;")
        let cscope_pre=matchstr(cscope_file,".*/")
        if !empty(cscope_file) && filereadable(cscope_file)
            set nocsverb
            exe "cs add" cscope_file cscope_pre
            set csverb
        endif
    endif
endif


nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>

nmap <c-\>q :copen<CR>
nmap <c-\>qc :cclose<CR>

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
Plug 'yggdroot/indentline'
Plug 'vim-scripts/autoload_cscope.vim'
Plug 'itchyny/vim-cursorword'
call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set color scheme "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark    " Setting dark mode

" change function color
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81
