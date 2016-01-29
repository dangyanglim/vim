set nocompatible

filetype off                  " required!  

set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  

" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'vimplugin/project.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle '1995eaton/vim-better-javascript-completion'
Bundle 'zzdhidden/vim-javascript-indent'
Bundle 'mklabs/vim-nodemate'
Bundle 'othree/html5.vim'
Plugin 'maksimr/vim-jsbeautify'

Bundle 'winmanager'
Bundle 'taglist.vim'
Bundle 'minibufexplorerpp'
Bundle 'omnicppcomplete'
Bundle 'AutoComplPop'
Bundle 'c.vim'
Bundle 'Syntastic'
Bundle 'Emmet.vim'
Bundle 'snipMate'

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

filetype plugin indent on     " required!



set nobackup

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
        set mouse=n
endif

syntax enable
syntax on
"set ai
set si  
set ruler    "显示状态行
set showmatch   "括号匹配模式
set tags+=tags

set background=dark "设置背景颜色
set nu
set foldmethod=syntax
set nofoldenable

"let g:Tlist_Use_Right_Window=1 " 在右边显示taglist窗口
let g:AutoOpenWinManager=1
"let g:winManagerWindowLayout='BufExploer,FileExplorer'
let g:winManagerWindowLayout='BufExploer,FileExplorer|TagList'
let g:winManagerWidth=30
map wm :WMToggle<cr>

set completeopt=longest,menu
"set completeopt=menu,menuone " 关掉智能补全时的预览窗口
let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1 " enable the global scope search
let OmniCpp_DisplayMode=1 " Class scope completion mode: always show all members
let OmniCpp_DefaultNamespaces=["std"]
let OmniCpp_ShowScopeInAbbr=1
let OmniCpp_ShowAccess=1


let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level       = 2  "从第二层开始可视化显示缩进


let javascript_enable_domhtmlcss=1

""syntax
"" Set symbol characters
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"在打开文件的时候检查
"let g:syntastic_check_on_open=0
""" Open and close error list console automatically
"let g:syntastic_auto_loc_list=1

"map <c-f> :call JsBeautify()<CR>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>


