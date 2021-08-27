PRO on_ioerror_ex
  flag = 0
  WHILE flag EQ 0 DO BEGIN
    ON_IOERROR, err
    a = 1
    READ, 'Enter a number: ', a
    flag = 1
    ERR: 
    IF flag eq 0 THEN $
    PRINT, 'You entered a character.'
  ENDWHILE
  PRINT, a
RETURN
END
