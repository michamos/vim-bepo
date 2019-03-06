" vim-bepo - Plugin vim pour disposition de clavier bépo
" Maintainer:       Micha Moskovic

if exists("g:loaded_surround") && (!exists("g:surround_no_mappings") || ! g:surround_no_mappings) 
  nmap dk  <Plug>Dsurround
  nmap lk  <Plug>Csurround
  nmap lK  <Plug>CSurround
  nmap yk  <Plug>Ysurround
  nmap yK  <Plug>YSurround
  nmap yKK <Plug>Yssurround
  nmap yKk <Plug>YSsurround
  nmap yKK <Plug>YSsurround
  xmap K   <Plug>VSurround
  xmap gK  <Plug>VgSurround
  if !exists("g:surround_no_insert_mappings") || ! g:surround_no_insert_mappings
    if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-K>","i")
      imap    <C-K> <Plug>Isurround
    endif
    imap      <C-G>k <Plug>Isurround
    imap      <C-G>S <Plug>ISurround
  endif
endif
