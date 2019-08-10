""""""""""""""""""""
"      BASICS      "
""""""""""""""""""""
"for parcel
set backupcopy=yes

" Start pathogen package manager
execute pathogen#infect()

" Set backspace to work like other programs
set backspace=indent,eol,start

" Spaces and tabs
set shiftwidth=4                     " number of spaces for autoindent
set tabstop=4                        " tabstop is the number of spaces a tab counts
set softtabstop=4                    " number of spaces inserted per tab
set expandtab                        " turns tabs into spaces
filetype plugin indent on            " load filetype-specific indent files
set linebreak                        " don't break in the middle of words

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
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O
" imap <C-Return> <CR><CR><C-o>k<Tab>

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldnestmax=9
set foldlevelstart=99
let javaScript_fold=1

" NERDtree
noremap <C-n> :NERDTreeToggle<CR>

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""""""""
"      COLORS      "
""""""""""""""""""""
" Line number
hi LineNr ctermbg=16 ctermfg=3

" Cursorline
hi CursorLine cterm=NONE ctermbg=0 " no underline, gray bg
hi CursorLineNr cterm=NONE ctermbg=2 ctermfg=16
autocmd InsertEnter * highlight CursorLine ctermbg=8
autocmd InsertLeave * highlight CursorLine ctermbg=0

" Folding
hi Folded ctermbg=16 ctermfg=6
hi FoldColumn ctermbg=16 ctermfg=6

" Parentheses / brackets / quotes
hi MatchParen ctermbg=0 ctermfg=2

" ALE colors
highlight ALESignColumnWithErrors ctermbg=52
highlight ALESignColumnWithoutErrors ctermbg=16
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"""""""""""""""""""""
"      LINTING      "
"""""""""""""""""""""
" ALE Linting
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_set_highlights = 0
let g:ale_sign_column_always = 1
let g:ale_change_sign_column_color = 1


" ALE Fixing
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'html': ['trim_whitespace'],
\   'css': ['trim_whitespace'],
\   'javascript': ['prettier', 'eslint', 'trim_whitespace'],
\   'jsx': ['prettier', 'eslint', 'trim_whitespace'],
\   'python': ['trim_whitespace'],
\   'c': ['trim_whitespace'],
\}
