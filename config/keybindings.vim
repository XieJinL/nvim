" set leader
let mapleader=' '

" vim oneself mapings
cnoremap w!! w !sudo tee % > /dev/null
nnoremap <F2> :edit ~/.config/nvim/init.vim<CR>
nnoremap <F5> :!ctags -R<CR>

" normal mode mapings
nnoremap <leader>s :w<cr>
nnoremap <leader>S :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader><cr> :nohl<cr>
nnoremap <leader>f /<++><cr>:nohlsearch<cr>"_c4l

" window mapings
nnoremap <leader>w/ <C-w>v
nnoremap <leader>w- <C-w>s
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <leader>w= <C-w>=
nnoremap <leader>wo <C-w>o
nnoremap <leader>wc <C-w>c
" nnoremap <leader>wq <C-w>q
nnoremap <Up> <C-w>+
nnoremap <Down> <C-w>-
nnoremap <Left> <C-w>>
nnoremap <Right> <C-w><
" nnoremap <leader>wth <C-w>t<C-w>H
" nnoremap <leader>wtk <C-w>t<C-w>K
nnoremap <leader><Left> :bprevious<cr>
nnoremap <leader><Right> :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bD :bdelete %<CR>

" Tab mapings
nnoremap <leader>tN :tabe<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tD :tabclose<CR>
nnoremap <leader><Down> :tabnext<CR>
nnoremap <leader><Up> :tabprevious<CR>
if !has('nvim')
  nnoremap tt :Vex<CR>
endif

" show HEX and return
nnoremap <leader>xd :%!xxd<CR>
nnoremap <leader>xr :%!xxd -r<CR>

" set coding gbk or utf-8
nnoremap <leader>eg :e ++enc=gbk<CR>
nnoremap <leader>eu :e ++enc=utf8<CR>

" use ]+space create spaceline
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" inster mode mapings
inoremap jk <Esc>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-d> <del>

" visual mode mapings


" command mode mapings
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <del>

"-------------------------------------"
"--------------* end *----------------"
"-------------------------------------"


if has('nvim')
  "-----* ncm2 *------"
  inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
  inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

  "-----* NERDTree *------"
  nnoremap tt :NERDTreeToggle<cr>

  "------* ale *------"
  nnoremap <Leader>pat :ALEToggle<CR>
  nnoremap <Leader>pad :ALEDetail<CR>

  "------* TagBar *-----"
  " nnoremap <leader>pt :TagbarOpenAutoClose<CR>
  map <silent> T :Vista!!<CR>
  map <silent> <C-t> :Vista finder<CR>

  "------* vim-interestingwords *-----"
  nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
  nnoremap <silent> <leader>K :call UncolorAllWords()<cr>

  "------* neoformat *------"
  nnoremap <leader>pn :Neoformat<CR>

  "------* FZF *------"
  nnoremap <C-p> :FZF<CR>

  "------* Undo Tree *-----"
  nnoremap <leader>pu :UndotreeToggle<CR>

  "------* far *-----"
  nnoremap <leader>F :Far  %<left><left>
  nnoremap <leader>pfd :Fardo<CR>

  "-----* Markdown *------"
  nnoremap <leader>pp :MarkdownPreview<CR>
  nnoremap <leader>ps :MarkdownPreviewStop<CR>
  nnoremap <leader>pmt :TableModeToggle<CR>

  "-----* Ranger-vim *-----"
  nnoremap <leader>R :Ranger<CR>

  "-----* Goyo *-----"
  nnoremap <leader>G :Goyo<CR>

  "-----* vimWiki *-----"
  " :h vimwiki-commands
  " :h vimwiki

endif
