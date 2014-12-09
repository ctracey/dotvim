" Filetype plugin tells matchit about pairs and probably more.
" This didn't work until I moved it before Pathogen.
filetype on
filetype indent on
filetype plugin on

" pathogen plugin manager
call pathogen#infect()

" new vim
set nocompatible

" vim options
set number
set hlsearch

" stop highlighting search matches on <esc>
nnoremap <esc> :noh<return><esc>

" Allow hiding edited bufferes
set hidden

"" Tabs and indenting
set bs=2
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent

" Don't automatically insert linebreaks in long lines
set wrap linebreak textwidth=0

" Don't automatically show long lines wrapped
set nowrap

" Show $ at end of thing being changed
set cpoptions+=$

" Show status line even if single window
set laststatus=2

" Syntax highlighting
syntax enable

" System clipboard sharing
set clipboard=unnamed

" Leader and friends
map , \

" Reselect visual area when changing indent in visual mode (from @notahat)
vnoremap < <gv
vnoremap > >gv

" Copy absolute path of current file to clipboard
nnoremap <C-p> :let @+=expand("%:p")<CR>

" Misc
set wildmode=longest,list,full
set wildmenu

" Mouse support
set mouse=a
set ttymouse=xterm2   " Allows mouse dragging

"navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"remove whitespace on file write
autocmd BufWritePre *.coffee :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.yml :%s/\s\+$//e
" ===================================================
" PLUGINS
" ===================================================

" NERDTree settings
let g:NERDTreeChDirMode=2
map <Leader>n :NERDTree<CR>
map <leader>r :NERDTreeFind<cr>

" Color scheme
" colorscheme solarized
colorscheme tomorrow-night-dark

" Highligh trailing white spaces on non-insert mode
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" CtrlP
let g:ctrlp_map = '<Leader>f'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_max_files=0

" let g:ctrlp_user_command = 'find %s -type f'
map <Leader>b :CtrlPMRU<CR>

" RSpec.vim mappings
let g:rspec_command = "!bundle exec rspec {spec}"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" add ruby debugger breakpoint
map <Leader>d Orequire 'pry-rails'; binding.pry #RUBY-BREAKPOINT
map <Leader>D Orequire 'byebug'; byebug #RUBY-BREAKPOINT
map <Leader>B :Ag RUBY-BREAKPOINT -G.*.rb<CR>
