" Spaces and tabs
set shiftwidth=4                     " number of spaces for autoindent 
set tabstop=4                        " tabstop is the number of spaces a tab counts
set softtabstop=4                    " number of spaces inserted per tab
set expandtab                        " turns tabs into spaces
filetype indent on                   " load filetype-specific indent files

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
" remap <ESC> to get right of highlights
nnoremap <silent> <ESC><ESC> <ESC>:nohlsearch<CR><ESC>

" Autoclose quotes and brackets
inoremap " ""<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O     -> not sure what this does yet
" inoremap {;<CR> {<CR>};<ESC>O   -> not sure what this does yet
" imap <C-Return> <CR><CR><C-o>k<Tab>  


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
hi LineNr ctermbg=16 ctermfg=46

" Cursorline dark
hi CursorLine cterm=NONE ctermbg=234 " no underline, gray bg
hi CursorLineNr cterm=NONE ctermbg=46 ctermfg=16
autocmd InsertEnter * highlight CursorLine ctermbg=236
autocmd InsertLeave * highlight CursorLine ctermbg=234

" Parentheses / brackets / quotes
hi MatchParen ctermbg=16 ctermfg=46

