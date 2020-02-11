set ignorecase
:map <C-n> :set nu<CR>
:map <C-o> :set nonu<CR>
":map <C-t> :%s/    / /g<CR>
:map <C-a> :.,$d<CR>
:imap <C-L> ---------------------------------------------------------------------------------------------<CR>
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬
set ruler

"modelines allow you to set variables specific to a file. By default, the
"first and last five lines are read by vim for variable settings.
set modeline

"This makes Vim show a status line even when only one window is shown.
set ls=2

syntax enable
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set autoindent

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1
