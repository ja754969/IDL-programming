; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
x = [0.2,0.8,0.8,0.5,0.2]
y = [0.2,0.2,0.6,0.8,0.6]
z = [0.0,0.0,0.0,0.0,0.0]
V = FLTARR(3,5)
print,V
V[0,*] = x
V[1,*] = y
V[2,*] = z
P = [4,0,1,2,4,3,2,3,4] 
D = [P[1:4],P[1]] ;繞出一個矩形
;PLOTS,x[D],Y[D],/T3D
;xyouts,x[0],y[0],'0',charsize = 2
;xyouts,x[4],y[4],'4',charsize = 2
d2 = [P[6:8],P[6]]
;plots,x[d2],y[d2],/T3D
;xyouts,x[3],y[3],'3',charsize=2
I = INDGEN(5)
STR = STRING(I, '(I1)')
;XYOUTS,X,Y,STR,SIZE=4 

;IMAGE1 = POLYSHADE(V,P)
;TV,IMAGE1

ERASE
V1 = FLTARR(3,4)
V1[0,*] = [x[0:2],x[4]]
V1[1,*] = [y[0:2],y[4]]
V1[2,*] = [z[0:2],z[4]]
p1 = [4,0,1,2,3]
image2 = polyshade(v1,p1)
TV,image2
color = bindgen(5)*60

window,3
v2 = FLTARR(3,3)
V2[0,*] = x[2:4]
V2[1,*] = y[2:4]
V2[2,*] = z[2:4]
p2 = [3,0,1,2]
image3 = polyshade(v2,p2,shade = color)
TV,image3

window,4
image4 = polyshade(v,p,poly_shade = [100,200])
;兩個區塊著上不同的顏色
TV,image4

window,5
T3D,/RESET
T3D,ROTATE = [60,0,0]
image5 = polyshade(v,p,/T3D)
TV,IMAGE5
end