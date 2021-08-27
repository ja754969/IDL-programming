; 曾鈺皓 00781035 IDL_作業4_1
CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
;1. T = 2*!pi*sqrt(L/g)
print,'Answer1 : '
L = FINDGEN(100)+1
;print,L
g = 9.81
T = 2*!pi*sqrt(L/g)
print,T

plot,L,T,TITLE = 'Pendulum ',XTITLE = 'Length (m)',YTITLE = 'Period (second)'
;oplot,h,PE,LINESTYLE = 5
end