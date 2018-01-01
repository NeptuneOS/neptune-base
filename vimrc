" enable syntax highlighting
syntax on
" highlight search terms
set hlsearch

" enable filetype plugin syntax highlighting
filetype plugin on
set ofu=syntaxcomplete#Complete

" show matching brackets
set showmatch

" When searching try to be smart about cases 
set smartcase

" Be smart when using tabs ;)
set smarttab

" Only do this part when compiled with support for autocommands. 
if has("autocmd") 
   " When editing a file, always jump to the last known cursor position. 
   " Don't do it when the position is invalid or when inside an event handler 
   " (happens when dropping a file on gvim). 
    autocmd BufReadPost * 
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal g`\"" | 
    \ endif 
 
endif " has("autocmd")

" Don't use mouse module
set mouse=""
