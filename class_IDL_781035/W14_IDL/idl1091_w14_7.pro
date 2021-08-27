; Chapter 12 STRETCHL,Low,High
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
;用bytscl將資料轉為binary
a = bytscl(dist(216))
loadct,0
tv,a,0

loadct,13
tv,a,1
 
stretch,0,255
loadct,0
tv,a,2
 
stretch,110,150
loadct,13
tv,a,3 

end