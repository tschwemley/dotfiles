" General configuration
set number			"Always show line numbers
set nohlsearch		"Don't highlight search results
set nowrap			"Don't wrap lines
set autowrite 		"Save on buffer switch
set tabstop=4		"Set tabs to width of 4
set softtabstop=4	"Number of spaces a tab counts for while performing editing
set expandtab		"Expand tabs by default
set shiftwidth=4	"Number of spaces to use when tabbing
set shiftround		"Use multple of shiftwidth when indenting with < >
set copyindent		"Copy the previous indentation on autoindention
set showcmd         "Show partial command in statusline
set tags=tags;
set exrc            "Allow local vimrc files to be declared
set completeopt=menu
set timeoutlen=300

" File extension specific settings
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype jade setlocal ts=2 sw=2 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab


" Navigation and file management keymappings
let mapleader=","
nmap <leader>w :w!<cr>
nmap <leader>wq :wq!<cr>
nmap <leader>q :q!<cr>
nmap <leader>bd :bd<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bf :bf<cr>
nmap <leader>bl :bl<cr>
imap j<space>j <esc><esc>
imap j<space>j <esc>
nmap <c-j> <pagedown>
nmap <c-k> <pageup>


" Vimrc management
nmap <leader>ev :e ~/.config/nvim/init.vim<cr>
nmap <leader>sov :so ~/.config/nvim/init.vim<cr>


" Plugin management
nmap <leader>pi :PlugInstall<cr>
nmap <leader>pc :PlugClean<cr>
call plug#begin('~/.vim/plug')

Plug 'altercation/vim-colors-solarized' "Solarized theme
Plug 'tomtom/tcomment_vim'              "Easy commenting
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'          "Status line for vim
Plug 'vim-airline/vim-airline-themes'   "Themes for airline
Plug 'easymotion/vim-easymotion'        "Allows easy navigation
Plug 'scrooloose/nerdtree'              "File browsing in vim
Plug 'kien/ctrlp.vim'                   "Vim fuzzy finder
Plug 'tacahiroy/ctrlp-funky'            "Ctags-less fuzzy finding of buffer functions
Plug 'mhinz/vim-signify'                "Vim differences in gutter
Plug 'tpope/vim-surround'               "Easy surrounding of text
Plug 'tpope/vim-fugitive'               "Git wrapper for vim
Plug 'shawncplus/phpcomplete.vim'


call plug#end()


" Solarized settings
syntax enable
set background=dark
colorscheme solarized


" Tcomment settings
map <leader>c <c-_><c-_>


" YouCompleteMe settings
let g:ycm_seed_identifiers_with_syntax = 1 


" Airline settings
set laststatus=2        "Always show the statusline
set noshowmode          "Hide the default mode text
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'


" Nerdtree settings
nnoremap <C-b> :NERDTreeToggle<CR>


" Ctrl-P settings (drastically improves load time)
let g:ctrlp_cache_dir = '~/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s --nocolor -g ""'
endif


" Ctrl-P Funky settings
nnoremap <Leader>f :CtrlPFunky<Cr>
nnoremap <Leader>F :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1


" Fugitive settings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>df :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>


set secure
