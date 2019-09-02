"############################# Vundle插件列表 ###############################
" vundle环境设置
filetype off
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
" vundle管理的插件必须位于vundle#begin()和vundle#end()之间
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'scrooloose/nerdtree'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tenfyzhong/CompleteParameter.vim'
Plugin 'ianva/vim-youdao-translater'
Plugin 'yianwillis/vimcdoc'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'indexer.tar.gz'
Plugin 'DfrankUtil'
Plugin 'vimprj'
Plugin 'DrawIt'

call vundle#end()
filetype plugin indent on   " 允许补全



"############################### VIM基本配置 #################################
" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme forest-night

" 定义前缀键，即<leader>
let mapleader=";"

" 语法高亮开启
syntax enable
" 允许使用指定语法高亮配色方案替换默认方案
syntax on

" 定义快捷键快速编辑.vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
" 定义快捷键退出输入以及可视模式
inoremap <leader>ff <esc>
vnoremap <leader>ff <esc>
" 定义快捷键到行首和行尾
nnoremap LB 0
nnoremap LE $
" 定义全选快捷键
nnoremap <C-a> ggVG
" 将选中文本块复制到系统剪贴板
vnoremap <leader>y "+y
" 将系统剪贴板内容粘贴至vim
nnoremap <leader>p "+p
" 关闭当前分割窗口
nnoremap <leader>q :q<CR>
" 保存当前窗口内容
nnoremap <leader>w :w<CR>
" 保存所有窗口并退出vim
nnoremap <leader>WQ :wa<CR>:q<CR>
" 不做任何保存直接退出vim
nnoremap <leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方窗口
nnoremap <leader>lw <C-W>l
" 跳转至上方窗口
nnoremap <leader>kw <C-W>k
" 跳转至下方窗口
nnoremap <leader>jw <C-W>j
" 跳转至左方窗口
nnoremap <leader>hw <C-W>h
" 定义快捷键在结对符之间跳转
nnoremap <leader>M %
" 定义快捷键消除行尾空白字符，包括空格、制表符以及DOS换行符
nnoremap <leader>es :%s/\s*\r\?$<CR>:noh<CR><C-o>
" 定义快捷键取消高亮状态
nnoremap <leader>nh :noh<CR>
" 设置切换buffer快捷键
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bn :bn<CR>
" 设置不同编号buffer间切换快捷键
nnoremap <leader>1 :b 1<CR>
nnoremap <leader>2 :b 2<CR>
nnoremap <leader>3 :b 3<CR>
nnoremap <leader>4 :b 4<CR>
nnoremap <leader>5 :b 5<CR>
nnoremap <leader>6 :b 6<CR>
nnoremap <leader>7 :b 7<CR>
nnoremap <leader>8 :b 8<CR>
nnoremap <leader>9 :b 9<CR>
" 启用:Man命令查看各类man信息
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nnoremap <leader>man :Man 3 <cword><CR>
" 设置快捷键保存环境设置
nnoremap <leader>ss :mksession! my.vim<CR> :wviminfo! my.viminfo<CR>
" 设置快捷键恢复环境设置
nnoremap <leader>rs :source my.vim<CR> :rviminfo my.viminfo<CR>

" 开启实时搜索功能
set incsearch
" 高亮显示搜索结果
set hlsearch
" 搜索时大小写不敏感
set ignorecase
"" 关闭兼容模式
"set nocompatible
" 设置使用鼠标
set mouse=a
" vim自生命令行模式智能补全
set wildmenu
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具栏
set guioptions-=m
set guioptions-=T
" 设置状态栏颜色
set t_Co=256
" 设置每个窗口都有各自的状态栏
set laststatus=2
" 设置命令栏高度
set cmdheight=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 设置高亮行列配色方案
highlight CursorColumn term=reverse ctermbg=234 guibg=#293739 
" 禁止折行
set nowrap
" 允许隐藏未保存buffer
set hidden
" 基于语法、缩进或者标记进行代码折叠
"set foldmethod=syntax
set foldmethod=indent
" 使退格键(backspace)能够正常处理indent, eol, start等
set backspace=2
" 光标移动到buffer顶端和底端时保持3行距离
set scrolloff=3
" 在被分隔的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让vim把连续数量的空格视为一个制表符
set softtabstop=4
" 启动vim时关闭代码折叠
set nofoldenable
" 设置vim的自动文本格式化
set formatoptions=tcql
" 设置vim环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存undo历史
set undofile
set undodir=~/.undo_history/
" 当文件为.txt时自动换行
if expand("%:e") == 'txt'
    set formatoptions+=mM   " 对于中文也能够自动换行
    set textwidth=80
else
    set textwidth=0
endif

" 使vim打开文件时定位到上次退出时光标所在位置
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$")
    \ |   execute "normal! g'\""
    \ |endif

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC



"############################### 自定义功能 #################################
"""""""""""""""""""""""""""""""" <替换函数> """""""""""""""""""""""""""""""""
" 参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <leader>r :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

""""""""""""""""""""""""""""" <自动添加文件头> """"""""""""""""""""""""""""""
" 新建.c,.cpp,.h文件，自动插入文件头
autocmd BufNewFile *.cpp,*.[ch] exec ":call SetFileInfo()"
" 定义函数SetFileInfo，自动插入文件头
function! SetFileInfo() 
    call setline(1, "/*************************************************************************") 
    call append(line("."), "	> File Name     : ".expand("%")) 
    call append(line(".")+1, "	> Author        : huangtao") 
    call append(line(".")+2, "	> Mail          : jxht929@126.com") 
    call append(line(".")+3, "	> Created Time  : ".strftime("%c")) 
    call append(line(".")+4, "	> Description   : ")
    call append(line(".")+5, " ************************************************************************/") 
    call append(line(".")+6, "")
    " 如果文件类型为.cpp文件 
    if expand("%:e") == 'cpp' 
        call append(line(".")+7, "#include <iostream>")
        call append(line(".")+8, "using namespace std;")
        call append(line(".")+9, "")
        " 自动定位到文件末尾
        normal G
    endif
    " 如果文件类型为.c文件
    " 
    " 文件类型为.c文件
    if expand("%:e") == 'c'
        call append(line(".")+7, "#include <stdio.h>")
        call append(line(".")+8, "")
        " 自动定位到文件末尾
        normal G
    endif
    if expand("%:e") == 'h'
        " 定义函数NameToMacro，将文件名转化成宏名
        function! NameToMacro(filename, expansion)
            let fileMacro = "_".toupper(a:filename)."_".toupper(a:expansion)."_"
            return fileMacro
        endfunc
        " 写宏定义判断
        call append(line(".")+7, "#ifndef ".NameToMacro(expand("%:r"), expand("%:e")))
        call append(line(".")+8, "#define ".NameToMacro(expand("%:r"), expand("%:e")))
        call append(line(".")+9, "")
        call append(line(".")+10, "")
        call append(line(".")+11, "")
        call append(line(".")+12, "#endif   //".NameToMacro(expand("%:r"), expand("%:e")))
        " 新建文件后，自动定位到文件中间，便于输入
        normal 12G
    endif
endfunc 



"################################ 插件设置 ##################################
" vim-airline : 优化vim界面
" 使用powerline打过补丁的字体
let g:airline_powerline_fonts=1

" Guides : 将相同缩进的代码关联起来
" 快捷键i开/关缩进可视化
nnoremap <silent> <leader>i <Plug>IndentGuidesToggle
" 随vim启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1


" vim-protodef : 根据类声明自动生成类实现的代码框架
" 其默认生成快捷键为<leader>PP
" 设置pullproto.pl脚本路径
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
" 成员函数的实现数需与声明顺序一致
let g:disable_protodef_sorting=1

" vim-signature : 书签可视化工具
" 设置快捷键
let g:SignatureMap={
        \ 'Leader'              :   "m",
        \ 'PlaceNextMark'       :   "m,",
        \ 'ToggleMarkAtLine'    :   "m.",
        \ 'PurgeMarksAtLine'    :   "m-",
        \ 'DeleteMark'          :   "dm",
        \ 'PurgeMarks'          :   "mda",
        \ 'PurgeMarkers'        :   "m<BS>",
        \ 'GotoNextLineAlpha'   :   "']",
        \ 'GotoPrevLineAlpha'   :   "'[",
        \ 'GotoNextSpotAlpha'   :   "`]",
        \ 'GotoPrevSpotAlpha'   :   "`[",
        \ 'GotoNextLineltByPos'   :   "]'",
        \ 'GotoPrevLineByPos'   :   "['",
        \ 'GotoNextSpotByPos'   :   "m>",
        \ 'GotpPrevSpotByPos'   :   "m<",
        \ 'GotoNextMarker'      :   "[+",
        \ 'GotoPrevMarker'      :   "[-",
        \ 'GotoNextMarkerAny'   :   "]=",
        \ 'GotoPrevMarkerAny'   :   "[=",
        \ 'ListLocalMarks'      :   "m/",
        \ 'ListLocalMarkers'    :   "m?"
        \ }

" tagbar : 提取文件标识符，并按语法规则归类
" 设置显示/隐藏标签子窗口快捷键
nnoremap <leader>il :TagbarToggle<CR>
" 设置标签子窗口在主编辑区左边
let tagbar_left=1
" 设置标签子窗口的宽度
let tagbar_width=32
" 标签子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置ctags对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'c:classes:0:1',
        \ 'd:macros:0:1',
        \ 'e:enumerators:0:0',
        \ 'f:functions:0:1',
        \ 'g:enumeration:0:1',
        \ 'l:local:0:1',
        \ 'm:members:0:1',
        \ 'n:namespaces:0:1',
        \ 'p:function_prototypes:0:1',
        \ 's:structs:0:1',
        \ 't:typedefs:0:1',
        \ 'u:unions:0:1',
        \ 'v:global:0:1',
        \ 'x:external:0:1'
    \ ],
    \ 'sro'         : '::',
    \ 'kind2scope'  : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind'  : {
        \ 'enum'        : 'g',
        \ 'namespace'   : 'n',
        \ 'class'       : 'c',
        \ 'struct'      : 's',
        \ 'union'       : 'u'
    \}
\}

" indexer : 周期性自动生成标签文件并通知vim引入该标签文件
" 设置调用ctags参数
" 默认--c++-kinds=+p+l,重新设置为--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认--fields=+iaS不满足YCM要求，需改为--fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"

" ctrlsf.vim : 内容查找，并显示上下文内容
" 设置ctrlsf后端使用的ack路径
let g:ctrlsf_ackprg='/usr/bin/ack'
" 设置快捷键，在工程内全局查找光标所在关键字
nnoremap <leader>sp :CtrlSF<CR>
" 设置显示/隐藏搜索窗口快捷键
nnoremap <leader>st :CtrlSFToggle<CR>

" vim-multiple-cursors : 多光标编辑功能
" 设置开始多光标快捷键
let g:multi_cursor_start_word_key='<S-n>'
" 设置跳到下一个光标位置快捷键
let g:multi_cursor_next_key='<S-n>'
" 设置跳过下一个光标位置快捷键
let g:multi_cursor_skip_key='<S-k>'

" UltiSnips : 提供常用模板结构补全
" 设置ultisnips模板所在目录
let g:UltiSnipsSnippetsDir='/.vim/bundle/ultisnips/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]
" 设置补全快捷键，防止与YCM冲突
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><S-tab>"

" YouCompleteMe : 代码补全
" 设置跳转到声明和定义的快捷键
nnoremap <leader>ji :YcmCompleter GoToInclude<CR>
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-c>a
" YCM 补全菜单配色
highlight Pmenu ctermfg=67 guifg=#465457 guibg=#000000                  " 菜单
highlight PmenuSel ctermfg=81 ctermbg=238 guifg=#AFD700 guibg=#403D3D   " 选中项
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 配置python解释器路径及全局配置文件路径
let g:ycm_server_python_interpreter='/usr/bin/python2'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载本目录下的 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 取消诊断参数数量限制
let g:max_diagnostics_to_display=0

" NERDtree : 显示文件列表
" 设置快捷键显示/隐藏NERDtree窗口
nnoremap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应buffer
let NERDTreeAutoDeleteBuffer=1

" MiniBufExplorer : 管理buffer窗口
" 设置快捷键显示/隐藏minibufexplore窗口
nnoremap <leader>bl :MBEToggle<CR>
" 设置当前激活buffer颜色
highlight link MBEVisibleActiveNormal Statement
let g:did_minibufexplorer_syntax_inits=1
" 开启自动打开minibufexplorer
let g:MiniBufExplAutoStart=1
" 设置自动打开minibufexplorer时buffer的数量
let g:MiniBufExplBuffersNeeded=1

" wildfire.vim : 自动选中结对符内的文本
" 设置快捷键
" 这里不使用nnoremap和vnoremap是因为该插件的源码
" 中rhs还映射了其他函数，若使用则会导致映射无效
map <space> <plug>(wildfire-fuel)
vmap <leader><space> <plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects=["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]

" gundo.vim : 支持分支的undo
" 调用gundo树
nnoremap <leader>ud :GundoToggle<CR>
" 让gundo使用python3
let g:gundo_prefer_python3=1

" vim-youdao-translater : 使用有道在线词典实现翻译
" 分别设置在一般模式、可视模式和命令模式下的查询快捷键
nnoremap <silent> <leader>tn :<C-u>Ydc<CR>
vnoremap <silent> <leader>tv :<C-u>Ydv<CR>
noremap <leader>tc :<C-u>Yde<CR>
