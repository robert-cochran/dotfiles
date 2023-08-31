
"indent on tabs     column -ts $'\t'

"NOTE: Use colors.css file and plugin to see color in terminal


" hi[light]
"hi  txtTASK             cterm=bold
hi  txtTASK             ctermfg=black       
hi  txtTASK             ctermbg=white 

"hi  txtctask    cterm=underline
"hi  txtctask    ctermul=2
hi  txtCTASK            cterm=bold,underline,italic
hi  txtCTASK            ctermfg=darkgreen
hi  txtCTASK            ctermbg=white

hi  txtTASKDONE         cterm=strikethrough
hi  txtTASKDONE         ctermfg=darkgrey

hi  txtSUBTASK          ctermfg=black 
hi  txtSUBTASK          ctermbg=lightgrey

hi  txtCSUBTASK         cterm=bold,underline,italic
hi  txtCSUBTASK         ctermfg=darkgreen
hi  txtCSUBTASK         ctermbg=lightgrey

hi  txtSUBTASKDONE      cterm=strikethrough
hi  txtSUBTASKDONE      ctermfg=darkgrey

hi  txtTEST             cterm=underline
hi  txtTEST             ctermfg=lightred

hi  txtTESTDONE         cterm=strikethrough
hi  txtTESTDONE         ctermfg=darkgrey

hi  txtSTATUS           cterm=bold,underline
hi  txtSTATUS           ctermfg=lightyellow
"hi  txtSTATUS           ctermbg=darkgrey

hi  txtSTATUSPENDING    cterm=bold
hi  txtSTATUSPENDING    ctermfg=black
hi  txtSTATUSPENDING    ctermbg=darkyellow

"hi  txtQUESTION         cterm=underline
hi  txtQUESTION         ctermfg=darkred 

hi  txtQUESTIONDONE     cterm=strikethrough
hi  txtQUESTIONDONE     ctermfg=darkgrey

hi  txtTODO             ctermfg=lightgreen     
"hi  txttodo             ctermbg=blue

hi  txtRUN              ctermfg=yellow      

hi  txtPROJ             ctermfg=black       
hi  txtPROJ             ctermbg=white 

hi  txtindent           ctermbg=none


hi  txtDONE             cterm=strikethrough
hi  txtDONE             ctermfg=darkgrey

hi txtBLOCKED           cterm=bold 
hi txtBLOCKED           ctermfg=white
hi txtBLOCKED           ctermbg=red

"test syntax lines
hi def      projblock   ctermbg=black
hi def link important   error
hi def      myquestion  ctermfg=magenta
hi def      Misc        ctermfg=green
