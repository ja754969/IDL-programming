; Chapter 12
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'

DEVICE,DECOMPOSED=0 ;DECOMPOSED=0 不會改變顏色 
plot,[0,1],color=150

DEVICE,DECOMPOSED=1 ;DECOMPOSED=1 可以改變顏色 
plot,[1,0],color='ff00ff'x,background = 'ffffff'x


help
end