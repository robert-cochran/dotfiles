"syntax  match 
"        \ txtKey  
"        \ /^[^=]\+/
"
"syntax  match
"        \ txtValue 
"        \ /[^=]\+$/
"
"syntax region SomeName
"        \ start=/some_pattern/
"        \ end=/some other pattern/
"        \ contained
"        \ contains=SomeOtherName,YetAnotherName,
"        \EvenMoreNames,More,MoreAgain,
"        \KeepsGoing,Etc,
"        \UntilLineWrapsAroundAndItLooksNotThatBad

"TASK
syntax  region 
        \ txtTASKRegion 
        \ matchgroup=txtTASK  
        \ start=/TASK:.*/   
        \ end=/$/

syntax  region 
        \ txtCTASKRegion 
        \ matchgroup=txtCTASK 
        \ start=/CTASK:.*/    
        \ end=/$/

syntax  region 
        \ txtTASKDONERegion 
        \ matchgroup=txtTASKDONE
        \ start=/TASK!:.*/    
        \ end=/$/

"SUBTASK
syntax  region 
        \ txtSUBTASKegion 
        \ matchgroup=txtSUBTASK
        \ start=/SUBTASK:.*/    
        \ end=/$/

syntax  region 
        \ txtCSUBTASKRegion 
        \ matchgroup=txtCSUBTASK 
        \ start=/CSUBTASK:.*/    
        \ end=/$/

syntax  region 
        \ txtSUBTASKDONERegion 
        \ matchgroup=txtSUBTASKDONE
        \ start=/SUBTASK!:.*/    
        \ end=/$/

"TEST
syntax  region 
        \ txtTESTRegion 
        \ matchgroup=txtTEST
        \ start=/TEST:.*/    
        \ end=/$/

syntax  region 
        \ txtTESTDONERegion 
        \ matchgroup=txtTESTDONE
        \ start=/TEST!:.*/    
        \ end=/$/

"STATUS
syntax  region 
       \ txtSTATUSRegion 
       \ matchgroup=txtSTATUS 
       \ start=/STATUS: \+/    
       \ end=/$/

"syntax  region 
"       \ txtSTATUSPENDINGRegion 
"       \ matchgroup=txtSTATUSPENDING 
"       \ start=/STATUS: \+/    
"       \ end=/PENDING/

"QUESTION
syntax  region 
       \ txtQUESTIONRegion
       \ matchgroup=txtQUESTION
       \ start=/Q:.*/    
       \ end=/$/

syntax  region 
       \ txtQUESTIONDONERegion
       \ matchgroup=txtQUESTIONDONE
       \ start=/Q!:.*/    
       \ end=/$/

"TO.DO
syntax  region
        \ txtTODORegion 
        \ matchgroup=txtTODO 
        \ start=/TODO.*/ 
        \ end=/$/

"syntax  match 
"       \ txtTODO 
"       \ /TO.DO/

"DONE
syntax  region 
        \ txtDONEREGION  
        \ matchgroup=txtDONE  
        \ start=/DONE.*/      
        \ end=/$/

"RUN
syntax  keyword  
        \ Run    
        \ RUN  
        \ contained

syntax  match 
        \ txtRUN 
        \ /RUN:/ 

"BLOCKED
syntax  region 
       \ txtBLOCKEDRegion 
       \ matchgroup=txtBLOCKED 
       \ start=/BLOCKED - /    
       \ end=/$/

"PROJECT
syntax  match 
        \ txtPROJ 
        \ /PROJECT\s\+\w\+.*/

syntax  match 
        \ txtINDENT 
        \ /^\s\+/ 

syntax  region  
        \ PROJBLOCK 
        \ start='^\s\+PROJECT' 
        \ skip=+^\s\++ 
        \ end='\n\n' 
        \ fold 
        \ contains=txtPROJ,txtRUN,txtINDENT,txtTODO 
        "\v^\s*$ regex for any number of white space apparently

"test syntax's
syntax  match 
        \ Important /!!.*!!/

syntax region 
        \ MyQuestion 
        \ start='??' 
        \ end='??'

"syntax  region 
"        \ Misc 
"        \ start='//' 
"        \ end='\\\\'

syntax  region 
        \ regionone 
        \ matchgroup=framesubtitlecolorblue 
        \ start=/^.*framesubtitle.*/ 
        \ end=/$/ 

"folding
"syn region 
"       \ myFold 
"       \ start="{{{" 
"       \ end="\n\n\n" 
"       \ transparent 
"       \ fold

syn region 
    \ taskFold 
    \ start=/TASK:.*/ 
    \ end="\n\n" 
    \ transparent 
    \ fold

syn sync 
    \ fromstart


