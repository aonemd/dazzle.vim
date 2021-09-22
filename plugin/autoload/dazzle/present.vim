function! dazzle#present#start() abort
  set norelativenumber nonumber noshowmode noshowcmd nohidden noruler
  set laststatus=0
  set colorcolumn=""

  nnoremap <buffer> <Right> :n<cr>
  nnoremap <buffer> <Left> :N<cr>

  nnoremap Q !!$SHELL<cr>

  if executable('figlet')
    nnoremap <leader>t :.!figlet<cr>
  endif

  if executable('toilet')
    nnoremap <leader>b :.!toilet -w 200 -f term -F border<cr>
  endif

  if executable('cowsay')
    nnoremap <leader>c :.!cowsay<cr>
  endif

  if exists("b:current_syntax")
    finish
  endif

  syn match keywords "awesome"
  hi def link keywords Special

  if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
  endif

  hi clear Conceal
  set conceallevel=2
  set concealcursor=nc

  syn region ColoredText matchgroup=coloredTag start="`"         end="`" concealends
  syn region HeadText    matchgroup=HeadText   start="^\s*#\+.*" end="$"
  syn region BoldText    matchgroup=boldTag    start="*"         end="*" concealends
  syntax match BulletPoint /^\s*[\*-]/ms=e conceal cchar=•
  syntax match BackTick /\[ \]/ms=s+1,me=e-1 conceal cchar=✗
  syntax match BackTick /\[x\]/ms=s+1,me=e-1 conceal cchar=✓

  hi def link ColoredText Special
  hi def link HeadText Statement
  hi BoldText cterm=bold gui=bold


  if !exists('#goyo')
    Goyo
  endif
endfunction
