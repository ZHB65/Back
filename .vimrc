"set cindent
set ruler
set showmode
set shiftwidth=4
set tabstop=4
set expandtab
set incsearch
set number
set hls
set nocompatible
set sw=2
set guifontset=8x16,kc15f,-*-16-*-big5-0 
set cursorline
"set fenc=big5 enc=big5 tenc=utf8
syntax on
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
highlight CursorLine cterm=none ctermbg=0 
set background=dark
if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif
imap <C-F11> <C-R>=strftime("%x %X")<BAR><CR>. owen_wen@htc.com.<ESC> <C-R>
nnoremap <F12> :TlistToggle<CR>
nnoremap <silent> <F3> :NERDTree<CR>
filetype plugin on
"let g:neocomplcache_enable_at_startup = 1 
colorscheme desert