; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

RESTORE,'SAVE_SCALE3_ALL.SAV'

window,3,xsize=216,ysize=216
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
!P.T = TRANSPORT_MATRIX 
!X.S = XS 
!Y.S = YS 
!Z.S = ZS

;將投影區域縮小為原來的0.4倍
T3D,SCALE = [0.4,0.4,0.4]

;將投影區域對Y軸旋轉30度
T3D,ROTATE = [0,30,0]

;將觀測點沿著X方向平移0.2單位，Y方向平移0.45單位
T3D,Translate = [0.2,0.45,0]
PLOTS,X,Y,Z,/T3D

ERASE
T3D,/RESET
PLOTS,X,Y,Z,/T3D
end