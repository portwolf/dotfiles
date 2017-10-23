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
set cursorcolumn            " Highlight cursor column
set background=dark         " set dark background
set backspace=2
set backup
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en             " Help language
set hlsearch
set incsearch
set langnoremap
set nolangremap
set listchars=tab:.\ ,trail:·,eol:¬
set nomodeline
set mouse=a
set ruler
set showcmd
set showmatch
set smartindent
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*
" System Settings ------------------------------------ }}}
