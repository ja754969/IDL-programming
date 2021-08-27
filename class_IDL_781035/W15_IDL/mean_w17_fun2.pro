FUNCTION mean_W17_fun2,arr,DOUBLE=DOUBLE
if KEYWORD_SET(DOUBLE) then begin
  print,'Keyword_set = ','DOUBLE'
endif
print,'n_parameters = ',N_PARAMS()

if ARG_PRESENT(arr) EQ 0 then begin
  RETURN,!VALUES.f_nan
endif

sum1 = total(arr)
no1 = n_elements(arr)
avg1 = float(sum1)/float(no1)
return,avg1
end