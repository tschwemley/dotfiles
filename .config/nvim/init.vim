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
set noswapfile      "No swap files
set tags=tags;      "Tags file name
set exrc            "Allow local vimrc files to be declared
set cot=menu        "Use menu instead of buffer for complete options menu
set timeoutlen=300  "Delay before commands
set colorcolumn=81  "80 character limit"

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


" Navigation and file management keymappings
let mapleader=","
nnoremap <leader>w :w!<cr>
nnoremap <leader>wq :wq!<cr>
nnoremap <leader>q :q!<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bf :bf<cr>
nnoremap <leader>bl :bl<cr>
nnoremap <leader>y "+y<cr>
inoremap j<space>j <esc><esc>
inoremap j<space>j <esc>
nnoremap <c-j> <pagedown>
nnoremap <c-k> <pageup>


" Vimrc management
nnoremap <leader>ev :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>sov :so ~/.config/nvim/init.vim<cr>

" Search project
nnoremap <leader>sr :terminal ag -R 

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
Plug 'shawncplus/phpcomplete.vim'       "Better php autocompletion
Plug 'jiangmiao/auto-pairs'             "Auto match brackets, quotes, etc.
Plug 'tschwemley/typescript-vim'       "Typescript syntax
Plug 'ludovicchabant/vim-gutentags'     "Auto tag management
Plug 'majutsushi/tagbar'                "Tag bar
Plug 'tobyS/pdv'                        "PHP Doc
Plug 'tobyS/vmustache'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jason0x43/vim-js-indent'
" Plug 'scrooloose/syntastic'


call plug#end()


" Solarized settings
syntax enable
set background=dark
colorscheme solarized


" Tcomment settings
map <leader>c <c-_><c-_>


" YouCompleteMe settings
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_key_list_select_completion = ['<S-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-q>', '<Up>']


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


"Tagbar settings
nmap <leader>tl :TagbarToggle<CR>


" Pdv settings
let g:pdv_template_dir = $HOME ."/.vim/plug/pdv/templates/"
nnoremap <leader>d :call pdv#DocumentWithSnip()<CR>


" Faster load of large files
" file is large from 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
 autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function LargeFile()
 " no syntax highlighting etc
 set eventignore+=FileType
 " save memory when other file is viewed
 setlocal bufhidden=unload
 " is read-only (write with :w new_filename)
 setlocal buftype=nowrite
 " no undo possible
 setlocal undolevels=-1
 " display message
 autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction


set secure
