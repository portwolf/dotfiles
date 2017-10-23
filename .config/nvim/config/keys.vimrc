" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" System Mappings ------------------------------------ {{{
"
nnoremap Q <nop>
nnoremap <silent> <C-l> :nohl<CR><C-l>
vnoremap // y/<C-R>
map <C-n> :NERDTreeToggle<CR>
map q <Nop>				" disable record mode
set statusline=[%4L]
" System Mappings ------------------------------------ }}}
