CD,'E:\IDL_1091'
window,xsize=416,ysize = 262
!P.BACKGROUND=255 ;設定視窗上的背景顏色為白色
!P.COLOR=0 ;設定圖形是以黑色線條呈現
DEVICE, DECOMPOSED=0 ;設定顏色不分解,避免白色地方變成紅色

dm = 1.496*(10L^8)
time = timegen(start=JULDAY(1,1,2020),FINAL = JULDAY(12,31,2020))
t = FINDGEN(SIZE(time,/N_ELEMENTS))+1
r = 2*!pi*(t-1)/365
m = 1.000110+0.034221*cos(r)+0.001280*sin(r)+0.000719*cos(2*r)+0.000077*sin(2*r)
d = SQRT(dm^2/(1.000110+0.034221*cos(r)+0.001280*sin(r)$
  +0.000719*cos(2*r)+0.000077*sin(2*r)))
segma = (0.006918-0.399912*cos(r)+0.070257*sin(r)-0.006758*cos(2*r)$
  +0.000907*sin(2*r)-0.002697*cos(3*r)+0.00148*sin(3*r))*!RADEG
;help,time,t
;print,dm
;print,time[365],',',t[0],',',t[365]
dummy = LABEL_DATE(DATE_FORMAT = ['%D-%M','%Y'])
;dummy = LABEL_DATE(DATE_FORMAT = ['%D-%M','%M/%D:%H'])
window,2,xsize = 550,ysize = 280
plot,time,segma,xtickunits = ['Time','Time'],xmargin = [12,12],$
  xtickformat = 'LABEL_DATE',xstyle=1,xticks = 5,thick = 2,ytitle = 'solar declination (solid-)',title='00781035'
;xyouts,180,0,'y',charsize = 2
axis,time[365],0,yaxis = 1,/save,yrange = [1.40*(10L^8),1.60*(10L^8)],ytitle = 'distance [km] (dashed--)'
oplot,time,d,linestyle = 1,thick = 2
;xyouts,110,-0.5,'z',charsize = 2

;plot
print,min(d)
write_png,'IDL_00781035mid_P02.png',tvrd()
END