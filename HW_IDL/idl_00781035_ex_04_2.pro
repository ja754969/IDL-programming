; 曾鈺皓 00781035 IDL_作業4_2
CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
;2. E = PE + KE
print,'Answer2 : '
hgen = FINDGEN(1001) & m = 10.0 & g = 9.8
h = reverse(hgen)
E = m*g*h[0]
PE = m*g*h
KE = E-PE
V = SQRT(2.0*KE/m)
;print,'h = ',h
;print,'V = ',V
;print,'PE = ',PE
;print,'KE = ',KE
;print,PE[1]
plot,h,KE,TITLE = 'E = PE + KE',XTITLE = 'height (m)',YTITLE = 'Energy (J)'
oplot,h,PE,LINESTYLE = 5

xyouts,30,PE[150],'KE'
xyouts,30,PE[851],'PE'

end