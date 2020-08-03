" General configuration
set autowrite 		"Save on buffer switch
set colorcolumn=120 "120 character limit"
set copyindent		"Copy the previous indentation on autoindention
set cot=menu        "Use menu instead of buffer for complete options menu
set expandtab		"Expand tabs by default
set exrc            "Allow local vimrc files to be declared
set fo-=ro           "Disable enter continuing comments
set ignorecase      "Case insensitive search
set lazyredraw      "Don't redrawa screen on macro, register typing
set mouse=a         "Allow mouse usage/scrolling
set nofoldenable foldmethod=syntax foldlevel=1 foldcolumn=1
set nohlsearch		"Don't highlight search results
set noswapfile      "No swap files
set nowrap			"Don't wrap lines
set number			"Always show line numbers
set scrolloff=2     "Minimal number of screen lines to keep above and below cursor
set shiftround		"Use multple of shiftwidth when indenting with < >
set shiftwidth=4	"Number of spaces to use when tabbing
set showcmd         "Show partial comand in statusline
set smartcase       "Disable ignore case when searching with uppeer case characters
set softtabstop=4	"Number of spaces a tab counts for while performing editing
set tabstop=4		"Set tabs to width of 4
set tags=tags;      "Tags file name
set timeoutlen=300  "Delay before commands


" File extension specific settings
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype typescript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype jade setlocal ts=2 sw=2 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype sql setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab


" Navigation and file management keymappings
let mapleader=","
nnoremap <leader>w :w!<cr>
nnoremap <C-s> :w!<cr>
nnoremap <leader>wq :wq!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bf :bf<cr>
nnoremap <leader>bl :bl<cr>
inoremap j<space>j <esc>


" Vimrc management
nnoremap <leader>ev :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>sov :so ~/.config/nvim/init.vim<cr>

" Search project
nnoremap <leader>sr :terminal ag -R 

" Plugin management
nmap <leader>pi :PlugInstall<cr>
nmap <leader>pc :PlugClean<cr>
call plug#begin('~/.vim/plug')

" Aesthetics
Plug 'altercation/vim-colors-solarized' "Solarized theme
Plug 'junegunn/rainbow_parentheses.vim' "Shows matching brackets and parentheses in matching colors
Plug 'ryanoasis/vim-devicons'           "Adds filetype glyphs to various vim plugins
Plug 'vim-airline/vim-airline'          "Status line for vim
Plug 'vim-airline/vim-airline-themes'   "Themes for vim-airline

" Functionality
Plug 'airblade/vim-gitgutter'                       "Show git changes in gutter
Plug 'easymotion/vim-easymotion'                    "Allows easy navigation
Plug 'jiangmiao/auto-pairs'                         "Auto pair brackets
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "TODO: come up with a sensible description 
Plug 'junegunn/fzf.vim'                             "TODO: come up with a sensible description
Plug 'junegunn/vim-easy-align'                      "Adds easy aligning by symbols/characters
Plug 'lilydjwg/colorizer'                           "Shows color previews for CSS properties
Plug 'ludovicchabant/vim-gutentags'                 "Ctags support
Plug 'majutsushi/tagbar'                            "Shows file tags/definitions
Plug 'mhinz/vim-grepper'                            "Enables grep searching of buffer/all buffers/project
Plug 'preservim/nerdcommenter'                      "Commenting plugin
Plug 'preservim/nerdtree'                           "File explorer plugin
Plug 'tpope/vim-fugitive'                           "Git plugin for vim
Plug 'tpope/vim-sensible'                           "Defaults for common behavior and settings
Plug 'tpope/vim-surround'                           "Plugin for easy 'surrounding' of brachets, parens, tags, etc.
Plug 'universal-ctags/ctags'
Plug 'xuyuanp/nerdtree-git-plugin'                  "Show git file status in NERDTree
Plug 'yggdroot/indentline'                          "Show thin vertical lines for indendted code

" Programming
Plug 'sheerun/vim-polyglot'                                     "Collection of language packs for vim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }   "Autocomplete in vim
Plug 'vim-test/vim-test'                                        "Easy test running from within vim
Plug 'w0rp/ale'                                                 "Vim linting engine

call plug#end()


" Airline settings
set laststatus=2        "Always show the statusline
set noshowmode          "Hide the default mode text
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'


let g:deoplete#enable_at_startup = 1
set completeopt-=preview


" Fugitive settings
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>df :Gdiff<cr>
nnoremap <leader>gb :Gblame<cr>


" FZF settings
nnoremap <c-p> :Files<CR>


" Nerdcommenter settings
nnoremap <leader>c :call NERDComment(0,"toggle")<CR>
vnoremap <leader>c :call NERDComment(0,"toggle")<CR>


" Nerdtree settings
nnoremap <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


" Solarized settings
syntax enable
set background=dark
colorscheme solarized


"Tagbar settings
nmap <leader>tl :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/snap/bin/ctags'
let g:tagbar_use_cache = 0


" Faster load of large files
" file is large from 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

set secure

