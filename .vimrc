" Start pathogen package manager
execute pathogen#infect()

" Spaces and tabs
set shiftwidth=4                     " number of spaces for autoindent 
set tabstop=4                        " tabstop is the number of spaces a tab counts
set softtabstop=4                    " number of spaces inserted per tab
set expandtab                        " turns tabs into spaces
filetype plugin indent on            " load filetype-specific indent files

" Commenting overrides
autocmd FileType c setlocal commentstring=//\ %s
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType html setlocal commentstring=<!--\ %s\ -->
autocmd FileType javascript setlocal commentstring=//\ %s

" UI config
set number relativenumber            " show hybrid line nums
set showcmd                          " show command in bottom bar
syntax on                            " syntax highlighting
set timeoutlen=450 ttimeoutlen=10   " mapping timeout = 450ms, keycode timeout = 10ms

" Current line highlight
set cursorline                       " highlight current line

" Searches
set incsearch                        " search as characters as entered
set hlsearch                         " highlight matches

" Key mapping
" remap <ESC> to get rid of highlights
nnoremap <silent> <ESC><ESC> <ESC>:nohlsearch<CR><ESC>

" Map spacebar to toggle folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Autoclose quotes and brackets
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" imap <C-Return> <CR><CR><C-o>k<Tab>  

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldnestmax=9
set foldlevelstart=99
let javaScript_fold=1

" NERDtree
map <C-Space> :NERDTreeToggle<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""
"      COLORS      "
""""""""""""""""""""

" ACME colors

" Line number
" hi LineNr ctermfg=144

" Cursorline 
" hi CursorLine cterm=NONE ctermbg=187 " no underline, gray bg
" hi CursorLineNr cterm=NONE ctermbg=104 ctermfg=230
" autocmd InsertEnter * highlight CursorLine ctermbg=195
" autocmd InsertLeave * highlight CursorLine ctermbg=187

" Parentheses / brackets / quotes
" hi MatchParen ctermbg=10 ctermfg=230


" Dark colors

" Line number
hi LineNr ctermbg=0 ctermfg=3

" Cursorline
hi CursorLine cterm=NONE ctermbg=234 " no underline, gray bg
hi CursorLineNr cterm=NONE ctermbg=46 ctermfg=0
autocmd InsertEnter * highlight CursorLine ctermbg=236
autocmd InsertLeave * highlight CursorLine ctermbg=234

" Folding
hi Folded ctermbg=234 ctermfg=6
hi FoldColumn ctermbg=234 ctermfg=6

" Parentheses / brackets / quotes
hi MatchParen ctermbg=0 ctermfg=46

