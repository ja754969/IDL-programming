; Chapter 8 課堂練習 : 畫一個菱形
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
x = [0.1,0.5,0.9,0.5]
y = [0.5,0.1,0.5,0.9]
z = [0.0,0.0,0.0,0.0]
V = FLTARR(3,4)
print,V
V[0,*] = x
V[1,*] = y
V[2,*] = z
P = [4,0,1,2,3]
D = [P[1:4],P[1]] ;繞出一個菱形
PLOTS,x[D],Y[D],/T3D

image_w13 = polyshade(V,P)
TV,image_w13
STR = STRING(INDGEN(4), '(I1)')
xyouts,x,y,STR,charsize = 2
end