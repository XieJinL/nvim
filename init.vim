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
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

set nocompatible
" 按缩进折叠indent, 语法折叠syntax
set foldmethod=indent
" 启动vim时关闭折叠
set nofoldenable
set foldlevel=99
" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

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
set formatoptions-=tc

" auto to dir
set autochdir

" show commend meun
set wildmode=longest,list,full
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc

" split window behaviors
set splitright
set splitbelow

" 设置Universal CTags
set tags=./.tags;,.tags

" 打开自动定位到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


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
" jsfaint/gen_tags.vim

" 查看代码定义
" Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'

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

" 代码注释
Plug 'scrooloose/nerdcommenter'

" Markdown
Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'dhruvasagar/vim-table-mode'
Plug 'dkarter/bullets.vim'

"Bookmakrs
Plug 'kshenoy/vim-signature'

" HTML, CSS, JavaScript, JSON, etc.
Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }
Plug 'pangloss/vim-javascript', { 'for' :['javascript', 'vim-plug'] }
Plug 'mattn/emmet-vim'

" ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" others
Plug 'gcmt/wildfire.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'ryanoasis/vim-devicons'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'

call plug#end()

" ncm2补全插件设置
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
let ncm2#popup_delay = 2
let g:ncm2#matcher = "substrfuzzy"
let g:ncm2#match_highlight = 'bold'
let g:ncm2_jedi#python_version=3
set shortmess+=c
set notimeout

" NERDTree
let NERDTreeMapToggleHidden = "zh"
let NERDTreeDirArrowExpandable=">"
let NERDTreeDirArrowCollapsible="v"

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
let g:ale_linters = {'c': ['gcc'],
      \ 'cpp': ['g++']}
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" vim-interestingwords
let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']
" let g:interestingWordsRandomiseColors = 1

" Undo Tree
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1

" far
" set lazyredraw
" set regexpengine=1

" Markdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_auto_close = 0
let g:mkdp_command_for_global = 0
let g:table_mode_corner='|'
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \]

" wildfire
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "ip", "it"]

" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0

" tabular
"nnoremap <Leader>a= :Tabularize /=<CR>

" vista
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista_default_executive = 'ctags'
" To enable fzf's preview window set g:vista_fzf_preview.
" The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
" For example:
let g:vista_fzf_preview = ['right:50%']

" Ranger.vim
let g:ranger_map_keys = 0

" vimviki
let g:vimwiki_list = [{'path': '~/Nutstore Files/Nutstore/VNOTEBOOK/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
" goyo
" g:goyo_width (default: 80)
" g:goyo_height (default: 85%)
" g:goyo_linenr (default: 0)

" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }


"-----加载keybings.vim------"
source ~/.config/nvim/keybindings.vim
