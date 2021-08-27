; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W12_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
wsp = [5,3,8,7,6,4,2]
wdir = [0,30,110,180,210,270,300]
;向量場
u = wsp*cos(wdir*!dtor)
v = wsp*sin(wdir*!dtor)
y = replicate(1,7) ;向量的中心點y座標
x = indgen(7) ;向量的中心點x座標
vect1 = vector(u,v,x,y,color='b',length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1)
vect1.data_location = 0 ;以向量的尾巴作為(x,y)座標點位置
;.data_location = 0 尾巴
;.data_location = 1 中心
;.data_location = 2 頭
vect1.xrange = [-1,8]
vect1.yrange = [0,4] ;設定y坐標軸範圍
text_1 = text(6.5,1,'vector','b',/data,font_size = 15)
; /data : 按照資料點位置
;;
y2 = replicate(2,7)
wdir_2 = 270-wdir
print,'wdir_2 = ',wdir_2
; 風場 : 北風為0 度 
u2 = wsp*cos(wdir_2*!dtor)
v2 = wsp*sin(wdir_2*!dtor)
vect2 = vector(u2,v2,x,y2,color='k',/current,length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1)
vect2.data_location = 0 ;以向量的尾巴作為(x,y)座標點位置
vect2.xrange = [-1,8]
vect2.yrange = [0,4] ;設定y坐標軸範圍
text_2 = text(6.5,2,'wind','k',/data,font_size = 10)
;;
y3 = replicate(3,7)
wdir_3 = 90-wdir
print,'wdir_3 = ',wdir_3
; 流場 : 向東方為0度
u3 = wsp*cos(wdir_3*!dtor)
v3 = wsp*sin(wdir_3*!dtor)
vect3 = vector(u3,v3,x,y3,color='g',/current,length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1)
vect3.data_location = 0 ;以向量的尾巴作為(x,y)座標點位置
vect3.xrange = [-1,8]
vect3.yrange = [0,4] ;設定y坐標軸範圍
text_3 = text(6.5,3,'current','g',/data,font_size = 10)
vect1.title = 'vetor_plot_W12'
vect1.save,'vetor_plot_W12.png'
;;
vect_4 = vector(u,v,x,y,layout = [2,2,1],color='b',length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1)
vect_4.title = 'vector'
vect_4.xtitle = 'x-axis'
vect_4.ytitle = 'y-axis'
vect_5 = vector(u2,v2,x,y2,layout = [2,2,2],color='k',length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1,/current)
vect_5.title = 'wind'
vect_5.xtitle = '$\alpha$=cos($\theta$+$\omega$!U2!N)'
vect_6 = vector(u3,v3,x,y3,layout = [2,2,3],color='g',length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1,/current)
vect_6.title = 'current'
vect_6.ytitle = '$\delta$=$e^{\beta_2+\omega^2}$'
end