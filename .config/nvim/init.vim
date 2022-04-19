call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
call plug#end()

colorscheme iceberg

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

set tabstop=2 shiftwidth=2 expandtab termguicolors

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

