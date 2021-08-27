; Chapter 12 tvlct
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
loadct,0
theta = findgen(401) ;產生一個401*1的下標陣列
y1 = sin(theta*!DTOR)

window,1
y2 = fltarr(401) ;產生一個401*1的全零陣列
y3 = cos(theta*!DTOR)
plot,theta,y1

window,2
;自己定義一個color table
red = [255,0,0,255]
green = [0,255,0,255]
blue = [0,0,255,255]
tvlct,red,green,blue,1
plot,theta,y1,/nodata
oplot,theta,y1,color=1
oplot,theta,y2,color=2
oplot,theta,y3,color=3

tvlct,r1,g1,b1,/GET;下載color table至三個變數r1,g1,b1

help
end