call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'itchyny/vim-haskell-indent'
call plug#end()
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set cmdheight=1
set shortmess+=IsTWxwrnml
set number
set mouse=a
set wildmenu
set lazyredraw
set incsearch
set ignorecase
set foldenable
"set relativenumber
"set cursorline
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
noremap <C-h> :History:<CR>
set history=10000
noremap ⇒ :cn<CR>
noremap ℚ :!ctags -R .
noremap <C-b> :Buffers<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
let g:haddock_browser = 'fdhsdhfasdf'
let g:airline_powerline_fonts = 1
set termguicolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:ale_fix_on_save = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = {'ruby':['rubocop'], 'javascript': ['prettier', 'eslint']}
