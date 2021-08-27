; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W7_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W7_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
x = findgen(25)*15 & y = sin(x*!dtor)
window,1,xsize = 416,ysize = 262
plot,x,y,xticks = 2,xminor = 8,xticklen = 0.1
window,2,xsize = 416,ysize = 262
plot,x,y,xtickinterval = 200,xtickname = ['a','b','c']
window,3,xsize = 416,ysize = 262
plot,x,y,xtickinterval = 100,xtickname = ['A','B','C','D']
window,4,xsize = 416,ysize = 262
plot,x,y,xtickinterval = 2,xtickunits = 'Months',xtitle = 'Months'
window,5,xsize = 416,ysize = 262
plot,x,y,xtickinterval = 1000,xtickunits = 'Hours',xtitle = 'Hours'
window,6,xsize = 416,ysize = 262
plot,x,y,xtickunits = 'Numeric',ytickformat = '(F5.2)',xtickformat = '(F5.1)'
window,7,xsize = 416,ysize = 262
x1 = findgen(30)/1000.
y1 = 2.0*(x1*1000)^2-(x1*1000)+3
x2 = x1*1000*1000
plot,x2,y1,xtickunits= 'Numeric'
window,8,xsize = 416,ysize = 262
x3 = randomn(seed,30)
plot,x3,y1,xtickv = x3,xtick_get = xvar0 
help,xvar0 & print,xvar0
window,9,xsize = 416,ysize = 262
plot,y1,xtick_get = xvar1
help,xvar1 & print,xvar1 
end