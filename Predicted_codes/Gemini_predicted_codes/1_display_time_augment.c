int hours ; 
  int minutes ; 
  int seconds ; 
  int remainingSeconds ; 
  hours = totalSeconds / 3600 ; 
  remainingSeconds = totalSeconds % 3600 ; 
  minutes = remainingSeconds / 60 ; 
  seconds = remainingSeconds % 60 ; 
    { 
      ( *temptemp1 ) = totalSeconds ; 
      ; 
    } 
    { 
      ( *temptemp2 ) = hours ; 
      ; 
    } 
    { 
      ( *temptemp3 ) = minutes ; 
      ; 
    } 
    { 
      ( *temptemp4 ) = seconds ; 
      ; 
    } 
    { 
      ( *temptemp5 ) = hours ; 
      ; 
    } 
    { 
      ( *temptemp6 ) = minutes ; 
      ; 
    } 
    { 
      ( *temptemp7 ) = seconds ; 
      ; 
    } 
  return 0 ; 
 }```