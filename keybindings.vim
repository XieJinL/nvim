" vim oneself mapings
cnoremap w!! w !sudo tee % > /dev/null
nnoremap <F2> :edit ~/.config/nvim/init.vim<CR>
nnoremap <F5> :!ctags -R<CR>

" normal mode mapings
nnoremap <leader>s :w<cr>
nnoremap <leader>S :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>qq :q<cr>
nnoremap <leader><cr> :nohl<cr>
nnoremap <leader>f /<++><cr>:nohlsearch<cr>c4l
" nnoremap J 6j
" nnoremap K 6k
" nnoremap H 0
" nnoremap L $

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
inoremap <C-d> <del>


" visual mode mapings
" vnoremap H 0
" vnoremap L $
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

" -----------* autocmd *--------------"
"  c
"autocmd Filetype c iabbrev #in #include <><Left>
autocmd FileType c inoremap <buffer> #in #include <><Left>
autocmd FileType c inoremap <buffer> #de #define 
autocmd FileType c iabbrev <buffer> iff if()<cr>{<cr><tab><++><cr>}<esc>3k0f(a
autocmd FileType c iabbrev <buffer> forr for(;<++>;<++>)<cr>{<cr><tab><++><cr>}<esc>3k0f(a
" autocmd FileType c iabbrev <buffer> funn (<++>)<cr>{<cr><tab><++><cr>}<esc>3k0f(i

"  cplusplus
autocmd FileType cpp inoremap <buffer> #in #include <><Left>
autocmd FileType cpp inoremap <buffer> #de #define 
autocmd FileType cpp iabbrev <buffer> iff if()<cr>{<cr><tab><++><cr>}<esc>3k0f(a
autocmd FileType cpp iabbrev <buffer> forr for(;<++>;<++>)<cr>{<cr><tab><++><cr>}<esc>3k0f(a
" autocmd FileType cpp iabbrev <buffer> funn (<++>)<cr>{<cr><tab><++><cr>}<esc>3k0f(i

"  markdown
autocmd Filetype markdown inoremap <buffer> ,m ```{}<Enter><++><Enter>```<Enter><Enter><++><Esc>4k$i
autocmd Filetype markdown inoremap <buffer> ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap <buffer> ,e ***<CR><CR>
autocmd Filetype markdown inoremap <buffer> ,p ![](<++>)<Esc>F]i
autocmd Filetype markdown inoremap <buffer> ,l [](<++>)<Esc>F]i
autocmd FileType markdown inoremap <buffer> ,1 # <CR><CR><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,2 ## <CR><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,3 ### <CR><++><Esc>kA
autocmd FileType markdown inoremap <buffer> ,4 #### <CR><++><Esc>kA

" HTML and CSS
autocmd Filetype html iabbrev <buffer> hhead <!DOCTYPE html><CR><html><CR><head><CR><++><CR></head><CR><body><CR><++><CR></body><CR></html><ESC>gg<space>f
autocmd Filetype html inoremap <buffer> ,1 <h1></h1><Esc>0f>a
autocmd Filetype html inoremap <buffer> ,2 <h2></h2><Esc>0f>a
autocmd Filetype html inoremap <buffer> ,3 <h3></h3><Esc>0f>a
autocmd Filetype html inoremap <buffer> ,4 <h4></h4><Esc>0f>a
