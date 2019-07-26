set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set cmdheight=1
set shortmess+=IsTWxwrnml
set number
set mouse=a
filetype on
filetype plugin on
filetype indent on
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nowrap
colorscheme apprentice
set hidden
noremap <C-p> :Files<CR>
noremap <C-t> :Tags<CR>
noremap <C-g>c :Gcommit<CR>
noremap <C-g>a :Gwrite<CR>
noremap <C-g>n :GitGutterNextHunk<CR>
noremap <C-g>p :GitGutterPrevHunk<CR>
noremap <C-k>t :NERDTreeToggle<CR>
noremap <C-k>f :NERDTreeFind<CR>
noremap ⇒ :cn<CR>
noremap ℚ :!ctags -R .
noremap <C-b> :Buffers<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
set termguicolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
