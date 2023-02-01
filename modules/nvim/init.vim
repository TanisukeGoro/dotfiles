"
"  ~/.config/nvim/init.vim
"
"
if &compatible
    set nocompatible               " Be iMproved
endif

let $CACHE = expand('~/.cache')
if !isdirectory($CACHE)
    call mkdir($CACHE, 'p')
endif

if &runtimepath !~# '/dein.vim'
    let s:dein_dir = fnamemodify('dein.vim', ':p')
    if !isdirectory(s:dein_dir)
        let s:dein_dir = $CACHE . '/dein/repos/github.com/Shougo/dein.vim'
        if !isdirectory(s:dein_dir)
            execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
        endif
    endif
    execute 'set runtimepath^=' . substitute(
        \ fnamemodify(s:dein_dir, ':p') , '[/\\]$', '', '')
endif

call dein#load_state('$HOME/.cache/dein')
call dein#begin('$HOME/.cache/dein')

" Let dein manage dein
call dein#load_toml('~/.config/nvim/toml/basic.toml', { 'lazy': 0 })
call dein#load_toml('~/.config/nvim/toml/lang.toml', { 'lazy': 1 })

" You can specify revision/branch/tag.
" call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

" Required:
call dein#end()
call dein#save_state()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

" default settings
" [ set ]
set number
set backspace=indent,eol,start
set laststatus=2
set statusline=%y
set relativenumber
set clipboard+=unnamed
set ruler
" settings
set encoding=utf-8
set fileencoding=utf-8
set backspace=2
set tabstop=2
set shiftwidth=2
set showmatch
set wrapscan
set hlsearch
set showcmd
set title
set cursorline
set cursorcolumn
set nofoldenable
set noswapfile
set expandtab
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase

" autocmd
" autocmd VimEnter * :ZenMode

syntax on

" keymap
let mapleader = ','
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <C-w> :tabclose
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap / /\v
nmap <Leader><Leader> V

nnoremap <silent><C-b> :NERDTreeToggle<CR>

" coc
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>cl  <Plug>(coc-codelens-action)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" denite
nnoremap <silent> <leader>k :Denite file/rec<CR>
nnoremap <silent> <leader>b :Denite buffer<CR>
nnoremap <silent> <leader>o :Denite outline<CR>
nnoremap <silent> <leader>l :Denite line<CR>
nnoremap <silent> <leader>r :Denite file/old<CR>
nnoremap <silent> <leader>h :Denite command_history<CR>
nnoremap <silent> <leader>g :Denite grep<CR>

" CtrlP.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_abbrev = {
  \ 'gmode': 'i',
  \ 'abbrevs': [
    \ {
      \ 'pattern': ' ',
      \ 'expanded': '',
      \ 'mode': 'pfrz',
    \ },
    \ ]
  \ }

" vim-airline
let g:airline#extensions#tabline#enabled = 1
