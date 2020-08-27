"===============================================================================
" Plugin source
"===============================================================================
"'Shougo/deoplete.vim'

"===============================================================================
" Plugin Configurations
"===============================================================================
set rtp+=~/work/deoplete.nvim/
set rtp+=~/work/nvim-yarp
set rtp+=~/work/vim-hug-neovim-rpc
let g:deoplete#enable_at_startup = 1

set completeopt+=noinsert

" set completeopt-=preview
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

"===============================================================================
" Plugin Keymappings
"===============================================================================
" N/A

"===============================================================================
" Unite Keymap Menu Item(s)
"===============================================================================
" N/A
