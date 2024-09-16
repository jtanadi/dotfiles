""""""""""""""""""""
"      BASICS      "
""""""""""""""""""""
"for parcel
set backupcopy=yes

"for vimwiki
set nocompatible
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md', 'path': '~/Work/phdWiki/'}]

" To turn off feature where every MD file is a wiki
let g:vimwiki_global_ext = 0

" For reference:
" let g:vimwiki_list = [{'path': '~/mywiki/', 'path_html': '~/mywiki_html'}]

" Start pathogen package manager
execute pathogen#infect()

" Use mouse normally
set mouse=a
let g:NERDTreeMouseMode=3

" Set backspace to work like other programs
set backspace=indent,eol,start

" Spaces and tabs
set shiftwidth=2                     " number of spaces for autoindent
set tabstop=2                        " tabstop is the number of spaces a tab counts
set softtabstop=2                    " number of spaces inserted per tab
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

" Moving blocks of text A-j moves up, A-k moves down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Paste image
map <M-p> :PasteImage<CR>

" Markdown Preview
nmap <C-p> <Plug>MarkdownPreview


""""""""""""""""""""
"      COLORS      "
""""""""""""""""""""

" Line number
"hi LineNr ctermbg=16 ctermfg=3
"
"" Cursorline
"hi CursorLine cterm=NONE ctermbg=235 " no underline, gray bg
"hi CursorLineNr cterm=NONE ctermbg=2 ctermfg=16
"autocmd InsertEnter * highlight CursorLine ctermbg=237
"autocmd InsertLeave * highlight CursorLine ctermbg=235
"
"" Folding
"hi Folded ctermbg=16 ctermfg=6
"hi FoldColumn ctermbg=16 ctermfg=6
"
"" Parentheses / brackets / quotes
"hi MatchParen ctermbg=239 ctermfg=6

" ALE colors
highlight ALESignColumnWithErrors ctermbg=217
highlight ALESignColumnWithoutErrors ctermbg=0
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" highlight ALESignColumnWithErrors ctermbg=217
highlight SignColumn ctermbg=0

"""""""""""""""""""""
"     CoC.nvim      "
"""""""""""""""""""""
" always show signcolumns
set signcolumn=yes

set updatetime=300

" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"
" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

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
\   'python': ['trim_whitespace'],
\   'c': ['trim_whitespace'],
\}

"""""""""""""""""""""
"      PLUGINS      "
"""""""""""""""""""""
" Using vim-plug
call plug#begin()
   Plug 'lervag/vimtex'
   Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
   Plug 'HakonHarnes/img-clip.nvim'
   Plug 'vimwiki/vimwiki'
   Plug 'rakr/vim-one'
call plug#end()

let g:airline_theme='one'
colorscheme one
set background=dark
let g:one_allow_italics=1
