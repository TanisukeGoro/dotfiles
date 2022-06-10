if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
    call dein#begin('$HOME/.cache/dein')

    " Let dein manage dein
    call dein#load_toml('~/.config/nvim/toml/basic.toml', { 'lazy': 0 })
    call dein#load_toml('~/.config/nvim/toml/lang.toml', { 'lazy': 1 })

    " You can specify revision/branch/tag.
    " call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

    " Required:
    call dein#end()
    call dein#save_state()
endif

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
autocmd VimEnter * :ZenMode

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

lua << EOF
  require("zen-mode").setup {
    window = {
        backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
            -- height and width can be:
            -- * an absolute number of cells when > 1
            -- * a percentage of the width / height of the editor when <= 1
            -- * a function that returns the width or the height
        width = 120, -- width of the Zen window
        height = 1, -- height of the Zen window
            -- by default, no options are changed for the Zen window
            -- uncomment any of the options below, or add other vim.wo options you want to apply
        options = {
            -- signcolumn = "no", -- disable signcolumn
            -- number = false, -- disable number column
            -- relativenumber = false, -- disable relative numbers
            -- cursorline = false, -- disable cursorline
            -- cursorcolumn = false, -- disable cursor column
            -- foldcolumn = "0", -- disable fold column
            -- list = false, -- disable whitespace characters
        },
    },
    plugins = {
        -- disable some global vim options (vim.o...)
        -- comment the lines to not apply the options
        options = {
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        },
        twilight = { enabled = false }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = false }, -- disables git signs
        tmux = { enabled = false }, -- disables the tmux statusline
            -- this will change the font size on kitty when in zen mode
            -- to make this work, you need to set the following kitty options:
            -- - allow_remote_control socket-only
            -- - listen_on unix:/tmp/kitty
        kitty = {
            enabled = false,
            font = "+4", -- font size increment
        },
    },
    -- callback where you can add custom code when the Zen window opens
       on_open = function(_)
        vim.cmd 'cabbrev <buffer> q let b:quitting = 1 <bar> q'
        vim.cmd 'cabbrev <buffer> wq let b:quitting = 1 <bar> wq'
      end,
      on_close = function()
        if vim.b.quitting == 1 then
          vim.b.quitting = 0
          vim.cmd 'q'
        end
      end,
    }
EOF
