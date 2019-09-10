" 
"  __  __     __     _____ __  __ ____   ____ 
" |  \/  |_   \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | \ \ / / | || |\/| | |_) | |    
" | |  | | |_| |\ V /  | || |  | |  _ <| |___ 
" |_|  |_|\__, | \_/  |___|_|  |_|_| \_\\____|
"         |___/                               

" auto load for first time uses
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set nocompatible
" 按缩进折叠indent, 语法折叠syntax
set foldmethod=indent
" 启动vim时关闭折叠
set nofoldenable
set foldlevel=99
" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
" z为有关折叠的前缀键

" Editor Setup
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8
set clipboard+=unnamedplus
" set colorcolumn=80
set mouse=n
set hidden
set undofile
" set spell spellang=en_us

" set leader
let mapleader=' '

" set themes
set background=dark
colorscheme gruvbox8
let g:gruvbox_transp_bg = 1
let &t_ut=''
let t_Co=256

" display
set number
set wrap
set relativenumber
set tw=0
set cursorline
set ruler
set list
set listchars=trail:▫,tab:
set scrolloff=6
set viewoptions=cursor
set lazyredraw
set inccommand=split
set visualbell

" search
exec 'nohlsearch'
set ignorecase
set smartcase

" tab
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
" 代码格式化的一些选项
set formatoptions-=tc

" auto to dir
set autochdir

" show commend meun
set wildmode=longest,list,full
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc

" split window behaviors
set splitright
set splitbelow

" 打开自动定位到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" vim mapings
" SOS
cnoremap w!! w !sudo tee % > /dev/null
nnoremap <F2> :edit ~/.config/nvim/init.vim<CR>
" normal mode mapings
nnoremap <leader>s :w<cr>
nnoremap <leader>S :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader><cr> :nohl<cr>
nnoremap <leader>f /<++><cr>:nohlsearch<cr>c4l
nnoremap J 6j
nnoremap K 6k
nnoremap H 0
nnoremap L $

" window mapings
nnoremap <leader>w/ <C-w>v
nnoremap <leader>w- <C-w>s
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>w= <C-w>=
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
nnoremap <Left> <C-w>>
nnoremap <Right> <C-w><
" nnoremap <leader><Left> <C-w>t<C-w>H
" nnoremap <leader><Right> <C-w>t<C-w>K
nnoremap <leader><Left> :bprevious<cr>
nnoremap <leader><Right> :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bD :bdelete %<CR>

" Tab mapings
nnoremap <leader>tN :tabe<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader><Down> :tabnext<CR>
nnoremap <leader><Up> :tabprevious<CR>

" inster mode mapings
inoremap jk <Esc>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>0i
inoremap <C-d> <del>


" visual mode mapings
vnoremap H 0
vnoremap L $

" vim 插件
call plug#begin('~/.config/nvim/plugged')

" 代码补全插件
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-clangx'
" Plug 'zchee/deoplete-jedi'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-pyclang'

" 美化插件
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-gruvbox8'
Plug 'mhinz/vim-startify'

" 代码缩进提示
Plug 'Yggdroot/indentLine'

" 目录树
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" 代码跳转
" Plug 'ludovicchabant/vim-gutentags'

" 查看代码定义
Plug 'majutsushi/tagbar'

" 高亮感兴趣的单词
Plug 'lfv89/vim-interestingwords'

" 格式化代码
Plug 'sbdchd/neoformat'

" 静态检查代码，显示错误
Plug 'w0rp/ale'

" 括号补全插件
Plug 'Raimondi/delimitMate'

" vim-surround
Plug 'tpope/vim-surround'

" 模糊查找
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'

" far
Plug 'brooth/far.vim'

" Undo Tree
Plug 'mbbill/undotree/'

" Markdown
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'dhruvasagar/vim-table-mode'
Plug 'dkarter/bullets.vim'

call plug#end()

" ncm2补全插件设置
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
let ncm2#popup_delay = 2
let g:ncm2#matcher = "substrfuzzy"
let g:ncm2#match_highlight = 'bold'
let g:ncm2_jedi#python_version=3
set shortmess+=c
set notimeout


" NERDTree
nnoremap tt :NERDTreeToggle<cr>
let NERDTreeMapToggleHidden = "zh"

" NERDTree-git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" airline
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '¶'
let g:airline_theme='light'

" ale
let g:ale_linters = {'c': ['clang']}
nnoremap <Leader>pat :ALEToggle<CR>
nnoremap <Leader>pad :ALEDetail<CR>

" indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" tagbar
nnoremap <leader>pt :TagbarOpenAutoClose<CR>

" vim-interestingwords
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
" let g:interestingWordsRandomiseColors = 1

" neoformat
nnoremap <leader>pn :Neoformat<CR>

" FZF
nnoremap <C-p> :FZF<CR>

" Undo Tree
nnoremap <leader>pu :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1

" far
nnoremap <leader>F :Far  %<left><left>
nnoremap <leader>pfd :Fardo
" set lazyredraw
" set regexpengine=1

" Markdown
nnoremap <leader>pp :MarkdownPreview<CR>
nnoremap <leader>ps :MarkdownPreviewStop<CR>
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_auto_close = 1
nnoremap <leader>pmt :TableModeToggle<CR>
let g:table_mode_corner='|'
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \]
