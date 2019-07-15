set termguicolors
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set cmdheight=1
set shortmess+=IsTWxwrnml
set number
filetype on
filetype plugin on
filetype indent on
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
set nowrap
colorscheme apprentice
set hidden
noremap <C-p> :Files<CR>
noremap <C-t> :Tags<CR>
noremap <C-i> :IndentGuidesToggle<CR>
noremap <C-x> :bd<CR>
noremap <C-c> :Gcommit<CR>
noremap <C-a> :Gwrite<CR>
noremap <Left> :bn<CR>
noremap <Right> :bp<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
