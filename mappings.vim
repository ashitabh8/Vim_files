" set autochdir

vnoremap < <gv
vnoremap > >gv
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>v :vsplit<Space>
nnoremap aa A
nnoremap a; A;<Esc>`.
nnoremap <C-i> I
" nnoremap == <C-w><C-w> 
" nnoremap nl innoremap <lt>Leader>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>rc :vsplit $MYVIMRC<CR> 
nnoremap <Leader>vm :vsplit ~/.config/nvim/vim-plug/mappings.vim<CR>
nnoremap <Leader><Leader>p :e ~/.config/nvim/vim-plug<CR>
nnoremap <Leader>rs :source $MYVIMRC<CR>
nnoremap <Leader>V :vert term<CR>
nnoremap ,, :bn<CR>
nnoremap ;; <C-w><C-w>
nnoremap tt :tabnext<CR>
nnoremap tp :tabprev<CR>
nnoremap gz g;zz
nnoremap <Esc><Esc> :w<CR>
nnoremap qq :wq<CR>
tnoremap <C-,> <C-\><C-n>

" nnoremap z <Plug>
map fx <Plug>Sneak_s
map FX <Plug>Sneak_S 
vmap s S
nmap <Leader><Leader> H<Plug>Sneak_s
autocmd FileType python nnoremap <Leader>p :w<CR>:!clear;python %<CR>

let g:sneak#label = 1
" nmap s H<Plug>Sneak_s
" nnoremap ss Hs
" map  <Leader>w <Plug>(easymotion-bd-w)
" nmap <Leader>w <Plug>(easymotion-overwin-w)
" nmap s <Plug>(easymotion-overwin-f2)

nmap <C-d> <Meta>



function! Scratch()
    split
    noswapfile hide enew
    setlocal buftype=nofile
    setlocal bufhidden=hide
    "setlocal nobuflisted
    "lcd ~
    file scratch
endfunction

nnoremap <Leader>gs :call Scratch()<CR>
