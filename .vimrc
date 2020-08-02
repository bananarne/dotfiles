call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'itchyny/vim-haskell-indent'
Plug 'fszymanski/fzf-quickfix', {'on': 'Quickfix'}
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'StanAngeloff/php.vim'
Plug 'stephpy/vim-php-cs-fixer'
Plug 'leafgarland/typescript-vim'
call plug#end()
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set cmdheight=1
set shortmess+=IsTWxwrnml
set number
set mouse=a
set wildmenu
set lazyredraw
set ttyfast
set noincsearch
set relativenumber
set ignorecase
set foldenable
set noswapfile
set cursorline
set viminfo='10,\"100,:800,%,n~/.viminfo
set re=1
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
noremap <C-g>g :Gstatus<CR>
noremap <C-g>d :Gdiff<CR>
noremap <C-g>a :Gwrite<CR>
noremap <C-g>s :Gstatus<CR>
noremap <C-g>n :GitGutterNextHunk<CR>
noremap <C-g>p :GitGutterPrevHunk<CR>
noremap <C-g><C-p> :Gpush<CR>
noremap <C-k>t :NERDTreeToggle<CR>
noremap <C-k>f :NERDTreeFind<CR>
noremap <C-h> :History:<CR>
noremap <C-f> :Files<CR>
noremap <C-A> :Rg -uuu
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

augroup send_to_term
  autocmd!
  autocmd TerminalOpen * if &buftype ==# 'terminal' |
        \   let t:send_to_term = +expand('<abuf>') |
        \ endif
augroup END

function! Send_to_term(keys)
  let bufnr = get(t:, 'send_to_term', 0)
  if bufnr > 0 && bufexists(bufnr) && getbufvar(bufnr, '&buftype') ==# 'terminal'
    let keys = substitute(a:keys, '\n$', '', '')
    call term_sendkeys(bufnr, keys . "\<cr>")
  else
    echom "Error: No terminal"
  endif
endfunction

augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
augroup END
autocmd BufWritePost * GitGutter
