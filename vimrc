"==============================================================================
" 插件配置 by Vundle
"==============================================================================
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All of your Plugins must be added behind the following line
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" auto compelete
Plugin 'Valloric/YouCompleteMe'

" 配色方案
" colorscheme neodark
Plugin 'KeitaNakamura/neodark.vim'

" colorscheme monokai
Plugin 'crusoexia/vim-monokai'

" vim-go
Plugin 'fatih/vim-go'

" 导航目录侧边栏
" Plugin 'scrooloose/nerdtree'

" 自动补全各种扩号
Plugin 'jiangmiao/auto-pairs'

" Vim 状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git 状态
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()

" "Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"==============================================================================
" vim 内置配置 
"==============================================================================
"
" 设置字体
set guifont=Menlo\ Regular:h16

" 设置行号
set nu

" 突出显示当前行
set cursorline

" 显示括号匹配
set showmatch

" 设置Tab长度为4空格
set tabstop=4

" 设置自动缩进长度为4空格
set shiftwidth=4

" 继承前一行的缩进方式，适用于多行注释
set autoindent

" 启用自动补全
filetype plugin indent on

"==============================================================================
" 主题配色 
"==============================================================================
"
" 设置主题
colorscheme neodark

" 开启24bit颜色会更漂亮
set termguicolors

" 主题背景: dark-深色, light-浅色
set background=dark 

"==============================================================================
" vim-go 插件
"==============================================================================
"
" 格式化将默认的 gofmt 替换
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1
let g:godef_split=2

"==============================================================================
" GVim 配置,比如 Macvim
"==============================================================================
"
if has('gui_running')
    " 设置启动时窗口的大小
	set lines=999 columns=999 linespace=4
	set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
	set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
endif

