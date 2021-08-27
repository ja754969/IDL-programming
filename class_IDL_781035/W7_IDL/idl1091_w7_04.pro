; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
;dummy = LABEL_DATE(DATE_FORMAT = ['%D-%M','%Y'])
dummy = LABEL_DATE(DATE_FORMAT = ['%D-%M','%M/%D:%H'])
time = timegen(start=JULDAY(1,1,2020),FINAL = JULDAY(10,31,2020))
help,time
data = randomn(seed,n_elements(time))
help,data
window,1,xsize = 416,ysize = 262
plot,time,data,xtickunits = ['Time','Time'],$ 
  xtickformat = 'LABEL_DATE',xstyle=1,xticks = 6

end