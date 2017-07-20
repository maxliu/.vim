filetype off
call pathogen#infect()
call pathogen#helptags() 
syntax on 
filetype plugin indent on


" for ultisnips"
" Track the engine.
""Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
""Plugin 'honza/vim-snippets'
"
" " Trigger configuration. Do not use <tab> if you use
"" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" end of for ultisnips

" Default
let g:clojure_fuzzy_indent = 1
let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let']
let g:clojure_fuzzy_indent_blacklist = ['-fn$', '\v^with-%(meta|out-str|loading-context)$']
"
" " Legacy comma-delimited string version; the list format above is
" " recommended. Note that patterns are implicitly anchored with ^ and $.
" let g:clojure_fuzzy_indent_patterns = 'with.*,def.*,let.*'''""')''']'''''']"

set laststatus=2
set statusline=%F%m%r%h%w  " \[POS=%l,%v][%p%%]\%{strftime(\"%m/%d/%y\ -\ %H:%M\")}
hi statusline ctermbg=red ctermfg=darkgreen
set cmdheight=2
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

setlocal noswapfile
set bufhidden=hide

set nobackup
"let g:EasyMotion_leader_key='<Leader>'

let g:pymode_options_colorcolumn=0
hi colorcolumn ctermbg=8

:nn <TAB> <C-W><C-W>
:nn <F2> :CleanWindows<CR>
:nn <F5> :Autoadd<CR>
:nn <Leader>r :Autoadd<CR>
nmap <F8> :TagbarToggle<CR>
:nn <F10> :MyNerdTreeCtrl<CR>
:nn <Leader>nn :MyNerdTreeCtrl<CR>
:nn <Leader>nf :NERDTreeFind<CR>
:nn <F4> :Autoawin<CR>
:map <Leader>rr :wa<Bar>execute '!tmux send-keys -t right "python  %:t" C-M' <C-M>'""'

set nu
"set relativenumber
set noswapfile
set hlsearch
set incsearch

set tabstop=4 

let g:ackprg="/usr/bin/ack -s -H --nocolor --nogroup --column"

"let g:ackprg="ag --vimgrep"

" vp doesn't replace paste buffer
function! RestoreRegister()
   let @" = s:restore_reg
     return ''
endfunction
function! s:Repl()
   let s:restore_reg = @"
   return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap { {}<Esc>i
":inoremap < <><Esc> hi
:inoremap " ""<Esc>i
:inoremap ' ''<Esc>i
":inoremap def def ():<Esc>hhi
"
let g:pymode_rope_autoimport=0

:colorscheme evening
"set statusline=%F%m%r%h%w  " \[POS=%l,%v][%p%%]\%{strftime(\"%m/%d/%y\ -\ %H:%M\")}
hi User1 ctermbg=red ctermfg=green  guibg=green guifg=red 
set statusline+=%=%2*%l/%1*%L
