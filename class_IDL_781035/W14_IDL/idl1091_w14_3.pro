; Chapter 8  shade_volume
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
x = randomu(seed,100)
y = randomu(seed,100)
z = randomu(seed,100)
 
f = sqrt(x^2+y^2+z^2)

;在三度空間上將其格點化
vol = grid3(x,y,z,f)
s = size(vol) ;查詢vol的維度
scale3,xrange=[0,s[1]],yrange=[0,s[2]],zrange=[0,s[3]],az=0
;scale3,xrange=[0,s[1]],yrange=[0,s[2]],zrange=[0,s[3]],az=30
shade_volume,vol,0.8,va1,pa1
image1 = polyshade(va1,pa1,/t3d)
loadct,39
tv,image1

window,2
;設定低值的位置
shade_volume,vol,0.8,va2,pa2,/LOW
;LOW代表內側
image2 = polyshade(va2,pa2,/t3d)
loadct,39
tv,image2

help
print,s
end