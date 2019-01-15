set number relativenumber

set cursorline
hi CursorLine cterm=NONE ctermbg=186
autocmd InsertEnter * highlight CursorLine ctermbg=195
autocmd InsertLeave * highlight CursorLine ctermbg=186

hi CursorLineNr cterm=NONE ctermbg=104 ctermfg=white
