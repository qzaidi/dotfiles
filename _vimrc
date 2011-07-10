filetype on
filetype plugin on
filetype plugin indent on
syntax on

function! s:insert_gates()
  let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
  execute "normal! i#ifndef " . "_" . gatename
  execute "normal! o#define " . "_" . gatename . " "
  execute "normal! Go#endif /* " . "_" . gatename . " */"
  normal! kk
endfunction

autocmd BufNewFile *.{h} call <SID>insert_gates()

nmap <C-x> :w<CR>:make<CR>:cw<CR>
