set packpath+=~/.vim
" dein.vim configuration --------------------------{{{
  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.config/nvim'))
call dein#add('neomake/neomake')
call dein#add('vim-airline/vim-airline')
call dein#add('Shougo/deoplete.nvim')
call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-fugitive')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('Shougo/neopairs.vim')                " Place parenthesis pair auto
call dein#add('Shougo/context_filetype.vim')        " Add context filetype feat
call dein#add('Konfekt/FastFold')                   " fast code fold
call dein#add('davidhalter/jedi')                   " python autocompletion
call dein#add('zchee/deoplete-jedi')                " additional to jedi
if dein#check_install()
  call dein#install()
  let pluginsExist=1
endif

call dein#end()

filetype plugin indent on
syntax enable
" dein.vim configuration -----------------------}}}
"
" System Settings ------------------------------------ {{{
set termguicolors			" use terminal colors
set clipboard+=unnamedplus		" ctrl+c from anywhere, paste here with p
colors desert				" colorscheme
set number				" line numbers
set relativenumber			" Relative line numbers
set numberwidth=3			" distance of line number to window edge
set pastetoggle=<f3>			" toggle paste mod with F3
set nopaste				" set normale mode: nopaste
autocmd BufWritePre *.py %s/\s\+$//e	" Autoremove trailing white spaces at save (python only)
set showmode				" show paste/visual (working mode)
set noswapfile				" do not create a swp file
filetype on				" show working file type?
set tabstop=4				" set tabstop to 4 chars (python related)
set softtabstop=4			" insert/delete 4 spaces when hitting a TAB/BACKSPACE
set expandtab				" insert spaces when hitting TABs
set spell spelllang=en_us		" spellchecker eng/US
set autoindent				" align the new line indent with the prev line
set shiftwidth=4			" operation indents 4 columns
set conceallevel=0			" do not hide wraped content
set virtualedit=			" enable editing in visual mode?
set wildmenu				" commandline completion
set wildmode=longest:list,full		" visual display of completion and first chosing
set autoread				" enable live changes view after invoking !ls or similar (outside commands)
set laststatus=2			" enable the statusline always
set wrap linebreak nolist		" ??
" leader is ,
let mapleader = ','			" leaderkey definition
set undofile
set undodir=$HOME/.VIM_UNDO_FILES	" vims undofiles folder
					" Remember cursor position between vim
					" sessions
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \   exe "normal! g'\"" |
            \ endif			" center buffer around cursor when opening files
autocmd BufRead * normal zz
set colorcolumn=80			" draw a colored line after 80 chars (python)
set cursorline              " Highlight cursor line
" System Settings ------------------------------------ }}}

" System Mappings ------------------------------------ {{{
"
nnoremap Q <nop>
vnoremap // y/<C-R>
map <C-n> :NERDTreeToggle<CR>
map q <Nop>				" disable record mode
set statusline=[%4L]
" System Mappings ------------------------------------ }}}
"
"
" Neomake settings
autocmd BufWritePost,BufEnter *.py Neomake

" Deoplete settings 
let g:deoplete#enable_at_startup=1      "Enable Deoplete at the beginning
let g:deoplete#enable_ignore_case=1     " input is not case sens. for completition
let g:deoplete#enable_smart_case=1        " if input has upper case, dont ignore it
