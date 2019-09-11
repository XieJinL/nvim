" vim oneself mapings
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
"--------------* end *----------------"


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
nnoremap <leader>pt :TagbarOpenAutoClose<CR>

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
nnoremap <leader>pfd :Fardo

"-----* Markdown *------"
nnoremap <leader>pp :MarkdownPreview<CR>
nnoremap <leader>ps :MarkdownPreviewStop<CR>
nnoremap <leader>pmt :TableModeToggle<CR>

"-----* NERDcommenter *-----"


" -----------* autocmd *--------------"
autocmd FileType c inoremap #i #include <><Left>
autocmd FileType c inoremap #d #define 

autocmd Filetype markdown inoremap ,m ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,c `` <++><Esc>F`i
