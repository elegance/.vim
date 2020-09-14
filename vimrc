set tabstop=4                " 设置tab键的宽度                                    
set clipboard=unnamed,unnamedplus " 未命名复制 ，+ 命名复制 共享至系统复制板                                                        
set shiftwidth=4             " 换行时行间交错使用\个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4     " 自动缩进4空格
set nu                       " 显示行号
"set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录

set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2

set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

language messages zh_CN.utf-8

" leader key 记录
" vim 默认 leaderkey为 反斜杠 ："\", 即： let mapleader="\"
" emmet-vim: Ctry + y
" commenter: \

" ====================== tips begin
" 按键映射 - 前缀结合
" nore:  no recursion 不会递归映射, 例如 noremap Y y  与 noremap y Y 同时存在不会出现问题。
" n: 普通模式下生效
" v: 可视模式下生效
" i: 插入模式下生效
" c: 命令行模式下生效

" unmap后面跟着一个按键组合，表示删除这个映射。
" ====================== tips end

" 按键记录
" native
nmap <C-e> :browse oldfiles<CR> " Recent files

" preservim/nerdtree
nmap <tab> :NERDTreeToggle<CR>" Open and close the NERD_tree.vim separately

" junegunn/fzf.vim
" 需先安装：https://github.com/junegunn/fzf 与 https://github.com/ggreer/the_silver_searcher
nnoremap <silent> <Leader>n :Files<CR>
nnoremap <silent> <Leader>f :Ag<CR>