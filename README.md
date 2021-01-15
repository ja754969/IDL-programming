# IDL_1091
---
{%hackmd SybccZ6XD %}

[雲端硬碟](https://drive.google.com/drive/u/2/folders/1ROXQ7vvfpc-YbYLYydq1dlEoih-9_3gL)
:star: :star: :star: [IDL Reference](https://www.l3harrisgeospatial.com/docs/routines-1.html)
:star: :star: :star: 
![](https://i.imgur.com/dcjsYXS.png)
---
View the book with "<i class="fa fa-book fa-fw"></i> Book Mode".
![](https://i.imgur.com/ut8mNC8.png)

Examples
---
- [Book example](/s/book-example)
- [Slide example](/s/slide-example)
- [YAML metadata](/s/yaml-metadata)
- [Features](/s/features)

Themes
---
- [Dark theme](/theme-dark?both)
- [Vertical alignment](/theme-vertical-writing?both)

###### tags: `NTOU_1091` `IDL` `Book` `程式語言`
## W2
```IDL=

```
## W3 中秋放假

## W4 國慶放假

## W5

## W6

## W7

## W8

## W9_Midterm
### IDL_00781035mid_P01.pro
```IDL=
;1
CD,'E:\IDL_1091'
window,xsize=416,ysize = 300
!P.BACKGROUND=255 ;設定視窗上的背景顏色為白色
!P.COLOR=0 ;設定圖形是以黑色線條呈現
DEVICE, DECOMPOSED=0 ;設定顏色不分解,避免白色地方變成紅色

x = randomn(seed,2000)
y = randomn(seed,2000)
z = SQRT(x^2+y^2)
window,1,xsize=450,ysize = 450
contour,z,x,y,/irregular,NLEVEL = 5,/fill,title='00781035',ytitle='y-axis',$
  xtitle='x-axis',xcharsize = 1.5,ycharsize = 1.5,ymargin = [7,7]
contour,z,x,y,/irregular,NLEVELS = 5,/OVERPLOT,C_LABELS = replicate(1,5),C_CHARSIZE = 2
write_png,'IDL_00781035mid_P01.png',tvrd()
;axis,0,0

END
```
![](https://i.imgur.com/8a2C6BO.png)

### IDL_00781035mid_P02.pro
```IDL=
CD,'E:\IDL_1091'
window,xsize=416,ysize = 262
!P.BACKGROUND=255 ;設定視窗上的背景顏色為白色
!P.COLOR=0 ;設定圖形是以黑色線條呈現
DEVICE, DECOMPOSED=0 ;設定顏色不分解,避免白色地方變成紅色

dm = 1.496*(10L^8)
time = timegen(start=JULDAY(1,1,2020),FINAL = JULDAY(12,31,2020))
t = FINDGEN(SIZE(time,/N_ELEMENTS))+1
r = 2*!pi*(t-1)/365
m = 1.000110+0.034221*cos(r)+0.001280*sin(r)+0.000719*cos(2*r)+0.000077*sin(2*r)
d = SQRT(dm^2/(1.000110+0.034221*cos(r)+0.001280*sin(r)$
  +0.000719*cos(2*r)+0.000077*sin(2*r)))
segma = (0.006918-0.399912*cos(r)+0.070257*sin(r)-0.006758*cos(2*r)$
  +0.000907*sin(2*r)-0.002697*cos(3*r)+0.00148*sin(3*r))*!RADEG
;help,time,t
;print,dm
;print,time[365],',',t[0],',',t[365]
dummy = LABEL_DATE(DATE_FORMAT = ['%D-%M','%Y'])
;dummy = LABEL_DATE(DATE_FORMAT = ['%D-%M','%M/%D:%H'])
window,2,xsize = 550,ysize = 280
plot,time,segma,xtickunits = ['Time','Time'],xmargin = [12,12],$
  xtickformat = 'LABEL_DATE',xstyle=1,xticks = 5,thick = 2,ytitle = 'solar declination (solid-)',title='00781035'
;xyouts,180,0,'y',charsize = 2
axis,time[365],0,yaxis = 1,/save,yrange = [1.40*(10L^8),1.60*(10L^8)],ytitle = 'distance [km] (dashed--)'
oplot,time,d,linestyle = 1,thick = 2
;xyouts,110,-0.5,'z',charsize = 2

;plot
print,min(d)
write_png,'IDL_00781035mid_P02.png',tvrd()
END
```
![](https://i.imgur.com/rynSxRz.png)

### IDL_00781035mid_P03.pro
```IDL=
;3
CD,'E:\IDL_1091'
window,xsize=416,ysize = 416
!P.BACKGROUND=255 ;設定視窗上的背景顏色為白色
!P.COLOR=0 ;設定圖形是以黑色線條呈現
DEVICE, DECOMPOSED=0 ;設定顏色不分解,避免白色地方變成紅色

theta = [0:2*!pi:!pi/100]
R0 = 1
alpha = -45*!dtor
r = 2*R0*cos(theta+alpha)
x0 = R0*cos(-alpha) & y0 = R0*sin(-alpha)
;print,r
window,3,xsize = 416,ysize = 416
plot,r,theta,/polar,/isotropic,title = '00781035',xstyle=4,ystyle=4
axis,x0,y0,xaxis=1
axis,x0,y0,yaxis=0
write_png,'IDL_00781035mid_P03.png',tvrd()

END
```
![](https://i.imgur.com/lsBj82j.png)

## W10
### idl1091_w10_1.pro
```IDL=
; Chapter 6
CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W10_IDL'
print,!p.multi
!p.multi[0]=0
!p.multi[1]=2
!p.multi[2]=1
print,!p.multi
window,1,xsize = 416,ysize = 262
plot,[0,1],xticks = 2,title='left',xmargin=[4,2]
plot,[1,0],xticks = 3,title='right'
print,!x.margin,!y.margin
```
![](https://i.imgur.com/71lNBRI.png)
```IDL=13
window,2,xsize = 416,ysize = 262
!p.multi = [0,0,2,0,0]
print,!p.multi
plot,[0,1],xticks = 2,title='up'
plot,[1,0],xticks = 3,title='down'
print,!x.margin,!y.margin
```
![](https://i.imgur.com/4Wwbvej.png)
```IDL=19
window,3,xsize = 416,ysize = 262
!p.multi = [0,1,3,0,0]
print,!p.multi
plot,[0,1],xticks = 2,title='1'
plot,[1,0],xticks = 3,title='2'
plot,[3,1],title='3'
print,!x.margin,!y.margin
```
![](https://i.imgur.com/PFD8mRf.png)
```IDL=26
window,4,xsize = 416,ysize = 262
!p.multi = [0,2,2,0,0]
print,!p.multi
x = findgen(10)
y1 = x
plot,x,y1,title='1'
y2 = x^2
plot,x,y2,title='2'
y3 = exp(x)
plot,x,y3,title='3'
y4 = sin(x)
plot,x,y4,title='4'
print,!x.margin,!y.margin
```
![](https://i.imgur.com/SjKZYnD.png)
```IDL=39
window,5,xsize = 416,ysize = 262
!p.multi = [0,2,2,0,1]
print,!p.multi
x = findgen(10)
y1 = x
plot,x,y1,title='1'
y2 = x^2
plot,x,y2,title='2'
y3 = exp(x)
plot,x,y3,title='3'
y4 = sin(x)
plot,x,y4,title='4'
print,!x.margin,!y.margin
end
```
![](https://i.imgur.com/8b3WOCM.png)
```
IDL> .go
% Compiled module: $MAIN$.
           0           2           2           0           1
           0           2           1           0           1
      10.0000      3.00000
      4.00000      2.00000
           0           0           2           0           0
      10.0000      3.00000
      4.00000      2.00000
           0           1           3           0           0
      10.0000      3.00000
      4.00000      2.00000
           0           2           2           0           0
      10.0000      3.00000
      4.00000      2.00000
           0           2           2           0           1
      10.0000      3.00000
      4.00000      2.00000
```
### idl1091_w10_2.pro
```IDL=
; Chapter 6
; 上標下標
CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W10_IDL'
!p.multi = [0,0,0,0,0]
x = [1:5:0.01]
y = [1:5:0.01]
f1 = x^3*exp(-y)
print,!x.margin
plot,x,f1,xtitle='x-axis',ytitle = 'f!D1!N=x!U3!N*e!U-y!N',xmargin = [10,10]
print,!x.margin
xyouts,3,1.4,'f!D1!N',charsize = 2
xyouts,3.5,1.2,'f!I1!N=e!Ux!E2!U+y!E2!N',charsize=2
axis,5,0,yaxis=1,/save,yrange = [-2,2],$
  ytitle='f!I2!N=cos(x!E2!N+3y!E2!N)',ycharsize=2
f2 = cos(x^2+3*y^2)
oplot,x,f2,linestyle=1,thick=2
xyouts,4,-1.4,'f!D2!n(x)',charsize=2
write_png,'IDL_W10-2.png',tvrd()
end
```
![](https://i.imgur.com/Fo2JSYG.png)
存檔為 IDL_W10-2.png

```
IDL> .go
% Compiled module: $MAIN$.
      10.0000      3.00000
      10.0000      3.00000
```
### idl1091_w10_3.pro
```IDL=
; Chapter 6
CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W10_IDL'
theory = sin(2.0*findgen(200)*!pi/25.0)*exp(-0.02*findgen(200))
help,theory
p_W10 = plot(theory,'r:4D',ytitle = 'Resistance($\Omega$)',$
  title='circuit resistance',dim=[600,400],margin=0.2)
p_W10.SYM_increment=5 ; 每五個資料點給一個資料標記
p_W10.SYM_color = 'cyan' ; 設定symbol的邊框顏色
p_W10.SYM_filled = 1 ; 將symbol填滿顏色
p_W10.SYM_fill_color = 'k'
p_W10.save,'IDL_W10-3_symbol.png'
```
![](https://i.imgur.com/O0DmJsg.png)
存檔為 IDL_W10-3_symbol.png

```IDL=13
p2 = plot(theory,'r4-',symbol = 's',sym_color='k',sym_thick = 3,sym_filled=1,$
  sym_fill_color = 'cyan',sym_size = 4,sym_increment = 10)
end
```

![](https://i.imgur.com/BXEqmok.png)
```
IDL> .go
% Compiled module: $MAIN$.
THEORY          FLOAT     = Array[200]
```
## W11
### idl1091_w11_1.pro
```IDL=
; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0

theory = sin(2.0*findgen(200)*!pi/25.0)*exp(-0.02*findgen(200))
help,theory
p_W10 = plot(theory,'r:4D',ytitle = 'Resistance($\Omega$)',$
  title='circuit resistance',dim=[600,400],margin=0.2)
p_W10.SYM_increment=5 ; 每五個資料點給一個資料標記
p_W10.SYM_color = 'cyan' ; 設定symbol的邊框顏色
p_W10.SYM_filled = 1 ; 將symbol填滿顏色
p_W10.SYM_fill_color = 'k'
p_W10.save,'IDL_W10-3_symbol.png'

p_W11 = plot(theory,'r4-',symbol = 's',sym_color='k',sym_thick = 3,sym_filled=1,$
  sym_fill_color = 'cyan',sym_size = 4,sym_increment = 10,/CURRENT)
end
```
![](https://i.imgur.com/Gvr3PkW.png)
```
IDL> .go
% Compiled module: $MAIN$.
THEORY          FLOAT     = Array[200]
```
### idl1091_w11_2.pro
```IDL=
; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0


x = [1:10]
y = EXP(x)
p1 = plot(x,y,xtitle = 'x-axis',ytitle = 'y-axis',$
  title = 'W11-1',thick = 2,xthick = 2,ythick = 2)
p1_t = text(4,10000,'sin($\Theta$)',/DATA, FONT_SIZE = 14,FONT_STYLE='Italic')
p2 = plot(x,y,/ylog,xtitle = 'x-axis',ytitle = 'e!Ux!N',$
  title = 'W11-2',xthick = 5)
p2_t = text(3,10000,'cos($\theta$)',/DATA, FONT_SIZE = 20,FONT_STYLE='Italic')
p1.save,'W11-1.png'
```
![](https://i.imgur.com/jQdh4ot.png)
```IDL=19
p2.save,'W11-2.png'
end
```
![](https://i.imgur.com/ny1Sx7W.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Loaded DLM: PNG.
% Loaded DLM: LAPACK.
```
### idl1091_w11_3.pro
```IDL=
; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W11_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
Ta = [11.3,12.2,12.5,12.8,13,12.9,12.6,12.9,13.7,13.7,14.3,14.1,$
  14.4,14.3,13.7,13.6,13.7,13.7,13.9,13.9,13.8,13.8,13.8,13.9]
P = [1540.7,1539.6,1541,1539.8,1540.4,1545.9,1550.1,1552.7,1554.5,$
  1552.6,1547.8,1539.6,1532.7,1531,1529.7,1531.8,1534.9,1534.7,1540.1,$
  1542.2,1545.8,1546.7,1546.6,1542.8]
time = [1:24]
plot_margin = [0.15,0.25,0.15,0.15] ;左 右 上 下 邊界的邊緣距離
plot_xrange = [0,24]
p_Ta = plot(time,Ta,'r',thick = 2,ytitle = 'Ta[!Uo!NC]',$
  axis_style = 1,margin = plot_margin,$
  xrange = plot_xrange,xmajor = 9,xtitle = 'UTC',title = 'Weather Observation!C2020/11/4')
local_time = strtrim(round(p_Ta.xtickvalues+8) mod 24,2) ;除以24取2位數
a_time = axis('x',tickname = local_time,$
  location = [0,min(p_Ta.yrange)-1,0],title = 'Time(Local Standard Time)')
print,p_Ta.yrange
p_P = plot(time,P,'b:',thick = 4,/current,axis_style = 0,margin = plot_margin,$
  xrange = plot_xrange,yrange = [1520,1560],name = 'Pressure')
a_P = axis('y',target = p_P,major = 5,minor = 2,location= [max(p_P.xrange),0,0],$
  textpos=1,tickdir = 1,title = 'Pressure [mb]',thick = 3,color= 'b')
leg1 = legend(target=[p_Ta,p_P],/DATA,/AUTO_TEXT_COLOR,position = [12,12])
end
```
![](https://i.imgur.com/vPhGDVc.png)
```
IDL> .go
% Compiled module: $MAIN$.
       11.000000       15.000000
```
### idl1091_w11_4.pro
```IDL=
; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W11_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
subdir=  ['examples','data']
path = filepath('rose.jpg',subdirectory = subdir)
print,path
image1 = READ_IMAGE(path)
help,image1 ;格式 : Pixel Interleave
info1 = QUERY_IMAGE('rose.jpg')
print,info1
info2 = QUERY_IMAGE('Red_rose.jpg')
print,info2
info3 = QUERY_IMAGE(path)
print,info3
info4 = QUERY_IMAGE(path,CHANNELS=ch_1,DIMENSIONS = dim1,$
  TYPE = type_1,pixel_type = p_type,NUM_IMAGES = num_img)
print,'CHANNELS=',ch_1
print,'Dimensions = ',dim1
print,'TYPE=',type_1
print,'Pixel_type=',p_type
print,'Num_images=',num_img

info5 = QUERY_IMAGE('Red_rose.jpg',CHANNELS=ch_2,DIMENSIONS = dim2,$
  TYPE = type_2,pixel_type = p_type2,NUM_IMAGES = num_img2)
print,'2 CHANNELS=',ch_2
print,'2 Dimensions = ',dim2
print,'2 TYPE=',type_2
print,'2 Pixel_type=',p_type2
print,'2 Num_images=',num_img2

;google : black image
info6 = QUERY_IMAGE('Red_rose.jpg',CHANNELS=ch_3,DIMENSIONS = dim3,$
  TYPE = type_3,pixel_type = p_type3,NUM_IMAGES = num_img3)
print,'3 CHANNELS=',ch_3
print,'3 Dimensions = ',dim3
print,'3 TYPE=',type_3
print,'3 Pixel_type=',p_type3
print,'3 Num_images=',num_img3
end
```
```
IDL> .go
% Compiled module: $MAIN$.
C:\Program Files\Harris\IDL88\examples\data\rose.jpg
IMAGE1          BYTE      = Array[3, 227, 149]
           0
           1
           1
CHANNELS=           3
Dimensions =          227         149
TYPE=JPEG
Pixel_type=       1
Num_images=           1
2 CHANNELS=           3
2 Dimensions =          208         242
2 TYPE=JPEG
2 Pixel_type=       1
2 Num_images=           1
3 CHANNELS=           3
3 Dimensions =          208         242
3 TYPE=JPEG
3 Pixel_type=       1
3 Num_images=           1
```
### idl1091_w11_5.pro
```IDL=
; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W11_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W11_IDL'
window,xsize=600,ysize=500
subdir=  ['examples','data']
path = filepath('rose.jpg',subdirectory = subdir)
;回傳IDL系統在子目錄subdir底下的rose.jpg路徑到變數path
print,path
image1 = READ_IMAGE(path) ; 讀取檔案
help,image1 ;格式 : Pixel Interleave
TV,image1,TRUE=1,0 ;顯示在第0個位置
TV,image1,TRUE=1,3,/ORDER ;顯示在第3個位置，順序顛倒
path2 = filepath('examples.tif',subdirectory = subdir)
print,path2
image2 = READ_IMAGE(path2) ; 讀取檔案
help,image2 ;格式 : Pixel Interleave
TV,image2,2,/ORDER
end
```
![](https://i.imgur.com/SjXL0Ls.png)
```
IDL> .go
% Compiled module: $MAIN$.
C:\Program Files\Harris\IDL88\examples\data\rose.jpg
IMAGE1          BYTE      = Array[3, 227, 149]
C:\Program Files\Harris\IDL88\examples\data\examples.tif
IMAGE2          BYTE      = Array[375, 150]
```
## W12_ch7_二維影像的繪圖

### idl1091_w12_1.pro
```IDL=
; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W12_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
window,xsize=800,ysize=500
subdir=  ['examples','data']
;
path = filepath('rose.jpg',subdirectory = subdir)
;回傳IDL系統在子目錄subdir底下的rose.jpg路徑到變數path
print,path
image1 = READ_IMAGE(path) ; 讀取檔案
help,image1 ;格式 : Pixel Interleave
TV,image1,TRUE=1,0 ;顯示在第0個位置
TV,image1,TRUE=1,3,/ORDER ;顯示在第3個位置，順序顛倒
;
path2 = filepath('examples.tif',subdirectory = subdir)
print,path2
image2 = READ_IMAGE(path2) ; 讀取檔案
help,image2 ;格式 : Pixel Interleave
TV,image2,2,/ORDER
;
image3 = READ_IMAGE(path2,r,g,b)
help,image3,r,g,b
TV,image3,3
;
```
![](https://i.imgur.com/dGIX0Uu.png)
```
IDL> .go
% Compiled module: $MAIN$.
C:\Program Files\Harris\IDL88\examples\data\rose.jpg
IMAGE1          BYTE      = Array[3, 227, 149]
C:\Program Files\Harris\IDL88\examples\data\examples.tif
IMAGE2          BYTE      = Array[375, 150]
IMAGE3          BYTE      = Array[375, 150]
R               BYTE      = Array[256]
G               BYTE      = Array[256]
B               BYTE      = Array[256]
```
```IDL=25
window,1
TV,image1,TRUE = 1,0
TV,image1,TRUE = 1,300,0
redCh = REFORM(image1(0,*,*))
greenCh = REFORM(image1(1,*,*))
blueCh = REFORM(image1(2,*,*))
help,image1,redCh
TV,redCh,1 ;顯示 red channel
TV,greenCh,2 ;顯示 green channel 
;
temp1=CONGRID(redCh,108,81)
help,temp1
TV,temp1,3
imagesize = size(redCh)
help,imagesize
print,imagesize
TV,greenCh,imagesize[1]/2,imagesize[2]/2
TV,blueCh,imagesize[1],imagesize[2]
end
```
![](https://i.imgur.com/btg9A25.png)
```
IMAGE1          BYTE      = Array[3, 227, 149]
REDCH           BYTE      = Array[227, 149]
TEMP1           BYTE      = Array[108, 81]
IMAGESIZE       LONG      = Array[5]
           2         227         149           1       33823
```
### idl1091_w12_2.pro
![](https://i.imgur.com/qYJSXQe.png)

![](https://i.imgur.com/EZoOg1c.png)

![](https://i.imgur.com/oksGrCx.png)
```IDL=
; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W12_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
subdir = ['examples','data']
;;
path1 = FILEPATH('moon_landing.png',SUBDIRECTORY=subdir)
info1 = QUERY_IMAGE(path1,CHANNELS = Chan_1,DIMENSIONS=dims_1,$
  TYPE=type_1,PIXEL_TYPE = ptype_1,NUM_IMAGES = num_1)
print,info1
print,'CHANNELS 1= ',Chan_1
print,'DIMENSIONS1=',dims_1
print,'TYPE1=',type_1
print,'PIXEL_TYPE 1= ',ptype_1
print,'NUM_IMAGES 1= ',num_1
image1 = READ_IMAGE(path1)
help,image1
TV,image1,0
;;
```
![](https://i.imgur.com/AWhf3dG.png)
```IDL=19
window,1
path2 = FILEPATH('Day.jpg',SUBDIRECTORY = subdir)
info2 = QUERY_IMAGE(path2,CHANNELS = Chan_2,DIMENSIONS=dims_2,$
  TYPE=type_2,PIXEL_TYPE = ptype_2,NUM_IMAGES = num_2)
print,info1
print,'CHANNELS 2= ',Chan_2
print,'DIMENSIONS2=',dims_2
print,'TYPE2=',type_2
print,'PIXEL_TYPE 2= ',ptype_2
print,'NUM_IMAGES 2= ',num_2
image2 = READ_IMAGE(path2)
help,image2
TV,image2,TRUE=1,0
;;
```
![](https://i.imgur.com/zkcURIm.png)
```IDL=33
window,2,xsize = 1100,ysize = 600
path3 = FILEPATH('Night.jpg',SUBDIRECTORY = subdir)
info2 = QUERY_IMAGE(path2,CHANNELS = Chan_3,DIMENSIONS=dims_3,$
  TYPE=type_3,PIXEL_TYPE = ptype_3,NUM_IMAGES = num_3)
print,info1
print,'CHANNELS 3= ',Chan_3
print,'DIMENSIONS 3=',dims_3
print,'TYPE 3=',type_3
print,'PIXEL_TYPE 3= ',ptype_3
print,'NUM_IMAGES 3= ',num_3
image3 = READ_IMAGE(path3)
help,image3
TV,image3,TRUE=1,0
end
```
![](https://i.imgur.com/22xR1Zt.png)
```
IDL> .go
% Compiled module: $MAIN$.
           1
CHANNELS 1=            1
DIMENSIONS1=         300         300
TYPE1=PNG
PIXEL_TYPE 1=        1
NUM_IMAGES 1=            1
IMAGE1          BYTE      = Array[300, 300]
           1
CHANNELS 2=            3
DIMENSIONS2=        1024         512
TYPE2=JPEG
PIXEL_TYPE 2=        1
NUM_IMAGES 2=            1
IMAGE2          BYTE      = Array[3, 1024, 512]
           1
CHANNELS 3=            3
DIMENSIONS 3=        1024         512
TYPE 3=JPEG
PIXEL_TYPE 3=        1
NUM_IMAGES 3=            1
IMAGE3          BYTE      = Array[3, 1024, 512]
```
### idl1091_w12_3.pro
```IDL=
; Chapter 7
;CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
subdir = ['examples','data']
;;
path1 = FILEPATH('examples.tif',SUBDIRECTORY=subdir)
info1 = QUERY_IMAGE(path1,CHANNELS = Chan_1,DIMENSIONS = dims_1,$
  TYPE=type_1,PIXEL_TYPE=ptype_1,NUM_IMAGES=num_1)
print,'Chan_1 = ',Chan_1
print,'dims_1 = ',dims_1
print,'type_1 = ',type_1,' ptype_1 = ',ptype_1,' num_1 = ',num_1

image1 = READ_IMAGE(path1)
help,image1
TV,image1
print,max(image1),min(image1)
;;
```
![](https://i.imgur.com/iJ5d6Pa.png)
```IDL=18
image2 = BYTSCL(image1) ; 轉換image1的像素數值至[0,255]
print,max(image2),min(image2)
window,1,xsize = 800,ysize = 500
TV,image2
image3 = REVERSE(image2,2) ;從第二個維度倒轉(上下顛倒)
TV,image3,0,160
image4 = REVERSE(image2,1) ;從第一個維度倒轉(左右顛倒)
TV,image4,380,150
;;
```
![](https://i.imgur.com/SBLlqJ8.png)
```IDL=27
window,2,xsize = 375,ysize = 150
image5 = image1[125:364,0:149] ; 擷取部分影像
help,image5
image6 = BYTSCL(image5)
TV,image6
image7 = BYTSCL(image5,TOP=150,MAX = 30,MIN = 10)
;轉換image5的像素數值至[0,TOP]
;轉換的最大最小像素數值為 10,30
print,max(image7),min(image7)
```
![](https://i.imgur.com/Wwz5y5d.png)
```IDL=36
window,3,xsize = 375,ysize = 150
TV,image7
;;
```
![](https://i.imgur.com/vl47vpP.png)
```IDL=39
window,4,xsize = 375,ysize = 150
TVSCL,image1
```
![](https://i.imgur.com/dhz0pA7.png)
```IDL=41
window,5,xsize = 600,ysize = 500
TVSCL,image1,200,100
;;
```
![](https://i.imgur.com/CxMMYRp.png)

```IDL=44
SET_PLOT,'PS' ;存圖檔為 Plot Script
DEVICE,FILENAME = 'IDL_ps1.ps'
TVSCL,image1,xsize = 6,ysize = 4,/INCHES
DEVICE,/CLOSE_FILE
```
![](https://i.imgur.com/hwCJA8v.png)
```IDL=48
SET_PLOT,'win' ;window
TVSCL,image1

end
```
![](https://i.imgur.com/n6zxl7P.png)
```
IDL> .go
% Compiled module: $MAIN$.
Chan_1 =            1
dims_1 =          375         150
type_1 = TIFF ptype_1 =        1 num_1 =            1
IMAGE1          BYTE      = Array[375, 150]
  31   0
 255   0
IMAGE5          BYTE      = Array[240, 150]
 150   0
```

### idl1091_w12_4.pro
```IDL=
; Chapter 7
CD,'H:\IDL_1091\class_IDL_781035\W12_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W12_IDL'
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
```
![](https://i.imgur.com/3nn23Lt.png)
```IDL=50
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
```
![](https://i.imgur.com/ACEe4mr.png)
```
IDL> .go
% Compiled module: $MAIN$.
wdir_2 =      270     240     160      90      60       0     -30
wdir_3 =       90      60     -20     -90    -120    -180    -210
```
## W12_homework
[題目](https://drive.google.com/file/d/1qwSYSBFGwS3OtQ9dzIXGdk0dioR79po4/view?usp=sharing)
![](https://i.imgur.com/W9Ckt4M.png)

### IDL_00781035_EX_05.pro
```IDL=
; 曾鈺皓 00781035 IDL_作業5
CD,'H:\IDL_1091\HW_IDL'
;; layout = [1,2,1]
Ta = [19.2,19.2,19.2,20.2,19.2,19.1,20.2,20.8,20.3,20.9,20.3,21,20.8,21.3,$
  19.8,19.1,20.2,21,21.1,21.1,21,21.2,21.3,20.9]
P = [1024.2,1023.8,1023.2,1023.1,1023.4,1023.9,1023.8,1024,1024.6,1024,1023.1,$
  1022.4,1021.5,1020.8,1021.2,1021.3,1021.5,1021.6,1022,1022.1,1022.2,1021.9,1021.4,1021.4]
time = [1:24]
plot_margin = [0.15,0.25,0.15,0.15] ;左 右 上 下 邊界的邊緣距離
plot_xrange = [0,24]
p_Ta = plot(time,Ta,'g',layout = [1,2,1],thick = 2,ytitle = 'air temperature[!Uo!NC]',$
  axis_style = 1,margin = plot_margin,$
  xrange = plot_xrange,yrange = [10,30],xmajor = 5,xtitle = 'time[hour]',title = 'Weather Observation!CIDL_hw5')
local_time = strtrim(round(p_Ta.xtickvalues+8) mod 24,2) ;除以24取2位數
print,p_Ta.yrange
p_P = plot(time,P,'r',layout = [1,2,1],thick = 4,/current,axis_style = 0,margin = plot_margin,$
  xrange = plot_xrange,yrange = [1000,1030],name = 'Pressure')
a_P = axis('y',target = p_P,major = 5,minor = 2,location= [max(p_P.xrange),0,0],$
  textpos=1,tickdir = 1,title = 'Pressure [mb]',thick = 1,color= 'k')
leg1 = legend(target=[p_Ta,p_P],/DATA,/AUTO_TEXT_COLOR,position = [13,18.5])
```
![](https://i.imgur.com/qGggEgh.png)

```IDL=21
;; layout = [1,2,2]
text_scale = text(3,1.2,'5 m/sec','b',/data,font_size = 10)
plot_margin = [0.15,0.15,0.08,0.15]
wind_speed = [7.2,8,6.2,8.5,6.2,7.3,7.7,8.6,7.5,6.3,7.9,6.6,5.5,5.3,5.9,5.8,3.1,5.3,5.2,4.7,5.3,4.7,4.8,5.6]
wdir = [30,30,30,20,20,20,20,20,40,40,30,40,40,30,50,30,60,40,50,50,40,50,40,40]
wdir_wind = 270-wdir;
u = wind_speed*cos(wdir_wind*!dtor)
v = wind_speed*sin(wdir_wind*!dtor)
y = replicate(1,24)
vect_w12 = vector(u,v,time,y,layout = [1,2,2],color='b',/current,length_scale = 2,head_angle = 20,$
  head_size = 1,thick = 1,xtitle = 'hour',margin = plot_margin)
vect_w12.data_location = 0 ;以向量的尾巴作為(x,y)座標點位置
vect_w12.xrange = [0,24]
vect_w12.yrange = [0.7,1.3] ;設定y坐標軸範圍

wind_speed_scale = [5]
wdir_scale = 270-[270]
u_scale = wind_speed_scale*cos(wdir_scale*!dtor)
v_scale = wind_speed_scale*sin(wdir_scale*!dtor)
y_scale = [1.29]
vect_w12_scale = vector(u_scale,v_scale,[1],y_scale,layout = [1,2,2],color='b',/current,$
  length_scale = 2,head_angle = 20,head_size = 1,thick = 1,margin = plot_margin,UVALUE=5)
  
vect_w12_scale.title = 'wind speed'
vect_w12_scale.data_location = 0 ;以向量的尾巴作為(x,y)座標點位置
vect_w12_scale.xrange = [0,24]
vect_w12_scale.yrange = [0.7,1.3] ;設定y坐標軸範圍
text_w12 = text(target=[vect_w12_scale],5.5,1.26,'5 m/sec','b',/data,font_size = 10)
p_Ta.save,'IDL_00781035_EX_05.png'
```
![](https://i.imgur.com/eiYddFO.png)

  >  Docs Center  >  IDL Reference  >  3D Visualization  >  [VECTOR](https://www.l3harrisgeospatial.com/docs/VECTOR.html)
  >  Docs Center  >  IDL Reference  >  New Graphics  >  [TEXT](https://www.l3harrisgeospatial.com/docs/TEXT.html)
## W13_ch8_三維空間的繪圖
### Ch8-1 立體曲面的繪製
| 語法|說明|
| -------- | ------------- |
|SURFACE, Z [, X, Y]|繪製立體的網格曲面|
|SHADE_SURF, Z [, X, Y]  |繪製立體的平滑曲面，引數X和Y是引數Z對應的座標|

### idl1091_w13_1.pro
```IDL=
; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
z = DIST(26,26) ;distance
window,1
contour,z
help,z
```

![](https://i.imgur.com/zCAYaqg.png)
```
IDL> .go
% Compiled module: $MAIN$.
Z               FLOAT     = Array[26, 26]
```
```IDL=11
window,2
surface,z,xtitle='x-axis',ytitle='y-axis'
```
![](https://i.imgur.com/f2IODVT.png)
```IDL=13
window,3
surface,z,AX=-60,xtitle='x-axis',ytitle='y-axis'
;內定的旋轉角度為30度
```
![](https://i.imgur.com/EyKNnTH.png)
```IDL=16
window,4
surface,z,AX=60,AZ=60,xtitle='x-axis',ytitle='y-axis',/save
;內定的旋轉角度為30度
;/svae 把座標系統存起來
contour,z,zvalue=1,/T3D,/NOERASE
;zvalue=1 contour畫在頂部 , zvalue=0 contour畫在底部
;/T3D 立體座標參數
;/NOERASE 保留原來的圖
```
![](https://i.imgur.com/5gblADv.png)
```IDL=24
window,5
surface,z,/horizontal
surface,z,/skirt
```
![](https://i.imgur.com/6sFJ1ru.png)
```IDL=27
print,'max(z)=',max(z)
window,6
grid=dist(26,26)*10
surface,z,shades=grid
```
![](https://i.imgur.com/2mrySbJ.png)
```
max(z)=      18.3848
```
```IDL=31
window,7
surface,z,bottom=200,ax = -30
```
![](https://i.imgur.com/Q6AtMa9.png)
```IDL=33
window,8
print,'min(z)=',min(z)
surface,z,min_value = 6,max_value=14
end
```
![](https://i.imgur.com/AYyfT6p.png)
```
min(z)=      0.00000
```
### idl1091_w13_2.pro
```IDL=
; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
z = DIST(26,26) ;distance
window,1
surface,z
```
![](https://i.imgur.com/CtMRkyV.png)
```IDL=10
shade_surf,z
```
![](https://i.imgur.com/EfEqJAY.png)
```IDL=11
shade_surf,z,min_value=6,/save
```
![](https://i.imgur.com/gM4vneg.png)
```IDL=12
contour,z,zvalue=1,/T3D,/NOERASE
print,!X.S,!Y.S,!Z.S
;顯示x,y,z的坐標軸位置
print,!P.T
;座標轉換矩陣
end
```
![](https://i.imgur.com/ymxP4L4.png)
### Ch8-2 三維座標系統的建立
| 語法|說明|
| -------- | ------------- |
| SCALE3 | 建立三維繪圖的座標系統和投影角度，控制圖形的投影和各軸的數值範圍 |
| T3D | 建立三維繪圖的座標系統 |
### idl1091_w13_3.pro
```IDL=
; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

;建立一條螺旋線的x,y,z位置點
theta=findgen(360)*10
;print,theta
x = 1.5*cos(theta*!DTOR)
y = 1.5*sin(theta*!DTOR)
z = theta*0.001

window,0
; 設定X, Y, Z軸的資料範圍，並把轉換矩陣儲存於系統變數!P.T內
SCALE3,XRANGE=[-2,2],YRANGE = [-2,2],ZRANGE = [0,4]

;PLOT,x,y
PLOT,x,y,/NODATA,XSTYLE=4,YSTYLE=4

;使用PLOTS程序連結螺旋線的各個位置點
PLOTS,x,y,z,/T3D
```
`三維繪圖的實施需要加上關鍵字/T3D`

![](https://i.imgur.com/r2DspxN.png)
```IDL=24
window,1

;設定X、Z軸旋轉的角度為60度
SCALE3,XRANGE=[-2,2],YRANGE = [-2,2],ZRANGE = [0,4],AX=60,AZ=60

;PLOT,x,y
PLOT,x,y,/NODATA,XSTYLE=4,YSTYLE=4
PLOTS,x,y,z,/T3D

;儲存轉換矩陣!P.T至Transport_Matrix變數
Transport_Matrix = !P.T

;儲存尺度變換向量!X.S至XS變數、!Y.S至YS變數、!Z.S至ZS變數
XS = !X.S & YS = !Y.S & ZS = !Z.S
```
`AX、AZ的預設角度都是30度`


| 尺度變換向量 |設定方式|說明 |
| -------- | ----------- |------ |
| !X.S | $(-Xmin,1)\over(Xmax-Xmin)$  |第1個元素是用來調整平移量(translate)，第2個元素是用來改變縮放(scale)的比例 |
| !Y.S | $(-Ymin,1)\over(Ymax-Ymin)$  |第1個元素是用來調整平移量(translate)，第2個元素是用來改變縮放(scale)的比例 |
| !Z.S | $(-Zmin,1)\over(Zmax-Zmin)$  |第1個元素是用來調整平移量(translate)，第2個元素是用來改變縮放(scale)的比例 |

|!P|
|--|
|The main plotting system variable structure. All fields, except !P.MULTI, have a directly corresponding keyword parameter in the plot procedures: PLOT, OPLOT, CONTOUR, and SURFACE. Fields, in alphabetical order, are: https://www.l3harrisgeospatial.com/docs/Graphics_System_Variable.html|
![](https://i.imgur.com/Q4kJXVn.png)
```IDL=38
SAVE,/ALL,filename='SAVE_SCALE3_ALL.SAV'  
end
```
`將所有變數存取為一個變數檔` SAVE_SCALE3_ALL.SAV `(相當於MATLAB的mat檔)` 
### idl1091_w13_4.pro
```IDL=
; Chapter 8
;CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
X = FINDGEN(10)
Y = INDGEN(20)
Z = [1:20:0.5]
SAVE,/ALL,FILENAME='SAVE_ALL_VARS.SAV'
SAVE,X,Y,FILENAME='SAVE_2_VARS.SAV'
HELP,X
print,x
HELP,Y
print,y
HELP,Z
print,z

;idl1091_w13_5.pro會用到在這裡儲存的變數
end
```
`將所有變數存取為一個變數檔` SAVE_ALL_VARS.SAV `(相當於MATLAB的mat檔)`
`將變數X、Y存取為一個變數檔` SAVE_2_VARS.SAV `(相當於MATLAB的mat檔)`
```
IDL> .go
% Compiled module: $MAIN$.
X               FLOAT     = Array[10]
      0.00000      1.00000      2.00000      3.00000      4.00000      5.00000      6.00000      7.00000      8.00000      9.00000
Y               INT       = Array[20]
       0       1       2       3       4       5       6       7       8       9      10      11      12      13      14      15      16      17      18      19
Z               FLOAT     = Array[39]
      1.00000      1.50000      2.00000      2.50000      3.00000      3.50000      4.00000      4.50000      5.00000      5.50000      6.00000      6.50000
      7.00000      7.50000      8.00000      8.50000      9.00000      9.50000      10.0000      10.5000      11.0000      11.5000      12.0000      12.5000
      13.0000      13.5000      14.0000      14.5000      15.0000      15.5000      16.0000      16.5000      17.0000      17.5000      18.0000      18.5000
      19.0000      19.5000      20.0000
```
### idl1091_w13_5.pro
```IDL=
; Chapter 8
;CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
RESTORE,FILENAME='SAVE_2_VARS.SAV'
HELP,X,Y

end
```
![](https://i.imgur.com/PuSTvp2.png)
```
IDL> .go
% Compiled module: $MAIN$.
X               FLOAT     = Array[10]
Y               INT       = Array[20]
```
### idl1091_w13_6.pro
```IDL=
; Chapter 8
CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1]
```
![](https://i.imgur.com/B47IyXo.png)
```IDL=10
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
```
![](https://i.imgur.com/ZFb49BW.png)
```
print,!P.T
```
```
IDL> .go
% Compiled module: $MAIN$.
      0.28867513     -0.49999999   3.0616169e-17      0.60566243
      0.43301269      0.25000000      0.28867513     0.014156090
     -0.25000000     -0.14433756      0.49999999      0.44716878
       0.0000000       0.0000000       0.0000000       1.0000000
```
```IDL=11
print,!X.S,!Y.S,!Z.S
```
```
     0.072921664      0.90520835
     0.096301295      0.85555553
       0.0000000      0.25000000
```
```IDL=12
;恢復儲存在檔案'SAVE_SCALE3_ALL.SAV'內的變數
RESTORE,'SAVE_SCALE3_ALL.SAV'
print,!P.T
```
```
      0.28867513     -0.49999999   3.0616169e-17      0.60566243
      0.43301269      0.25000000      0.28867513     0.014156090
     -0.25000000     -0.14433756      0.49999999      0.44716878
       0.0000000       0.0000000       0.0000000       1.0000000
```
```IDL=13
window,2,xsize=216,ysize=216
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
```
![](https://i.imgur.com/H4VBiwM.png)
```IDL=15
;將投影區域縮小為原來的0.4倍
T3D,SCALE = [0.4,0.4,0.4]

;將投影區域對Y軸旋轉30度
T3D,ROTATE = [0,30,0]

;將觀測點沿著X方向平移0.15單位，Y方向平移0.45單位
T3D,Translate = [0.15,0.45,0]
PLOTS,X,Y,Z,/T3D
```
![](https://i.imgur.com/I4OG0cl.png)
```IDL=24
window,3,xsize=216,ysize=216
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
!P.T = TRANSPORT_MATRIX 
!X.S = XS 
!Y.S = YS 
!Z.S = ZS
```
![](https://i.imgur.com/HA809wP.png)
```IDL=30
;將投影區域縮小為原來的0.4倍
T3D,SCALE = [0.4,0.4,0.4]

;將投影區域對Y軸旋轉30度
T3D,ROTATE = [0,30,0]

;將觀測點沿著X方向平移0.2單位，Y方向平移0.45單位
T3D,Translate = [0.2,0.45,0]
```
```IDL=38
PLOTS,X,Y,Z,/T3D
```
![](https://i.imgur.com/5OfBCOL.png)
```IDL=39
ERASE
```
![](https://i.imgur.com/aCpexkd.png)
```IDL=40
T3D,/RESET
PLOTS,X,Y,Z,/T3D
```
![](https://i.imgur.com/lGdfA5h.png)
```IDL=42
window,4
z2 = dist(256)
surface,z2
end
```
![](https://i.imgur.com/xJAiGfe.png)

```
IDL> .go
% Compiled module: $MAIN$.
       1.0000000       0.0000000       0.0000000       0.0000000
       0.0000000       1.0000000       0.0000000       0.0000000
       0.0000000       0.0000000       1.0000000       0.0000000
       0.0000000       0.0000000       0.0000000       1.0000000
     0.072921664      0.90520835
     0.096301295      0.85555553
       0.0000000    0.0050000000
      0.28867513     -0.49999999   3.0616169e-17      0.60566243
      0.43301269      0.25000000      0.28867513     0.014156090
     -0.25000000     -0.14433756      0.49999999      0.44716878
       0.0000000       0.0000000       0.0000000       1.0000000
```
### Ch8-3 三維繪圖的實施
| 語法|說明|
| -------- | ------------- |
| Result = POLYSHADE(Vertex,Polygon) 或 Result = POLYSHADE(X,Y,Z,Polygon) |將輸入的頂點和多邊形建構成立體形狀，然後將算圖結果儲存至變數Result中|
| MESH_OBJ, Type, Vertex, Polygon, Array1[, Array2][P1, P2, P3, P4, P5]|建立一個構成表面的多邊形網格組|
### idl1091_w13_7.pro
```IDL=
; Chapter 8
;CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
```
![](https://i.imgur.com/XJlUtmp.png)
```IDL=9
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
PLOTS,x[D],Y[D],/T3D
```
![](https://i.imgur.com/YGjTfoW.png)
```
IDL> .go
% Compiled module: $MAIN$.
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
% Compiled module: T3D.
```
```IDL=20
xyouts,x[0],y[0],'0',charsize = 2
xyouts,x[4],y[4],'4',charsize = 2
```
![](https://i.imgur.com/U9eYYtB.png)
```IDL=22
d2 = [P[6:8],P[6]]
plots,x[d2],y[d2],/T3D
```
![](https://i.imgur.com/XO4gwFF.png)
```IDL=24
xyouts,x[3],y[3],'3',charsize=2
```
![](https://i.imgur.com/8q167h3.png)
```IDL=25
I = INDGEN(5)
STR = STRING(I, '(I1)')
XYOUTS,X,Y,STR,SIZE=4 
```
![](https://i.imgur.com/Rvz6ugg.png)
```IDL=28
IMAGE1 = 


SHADE(V,P)
TV,IMAGE1
```
![](https://i.imgur.com/biwtRhh.png)
```IDL=33
ERASE
```
![](https://i.imgur.com/lcIqRwT.png)
```IDL=34
V1 = FLTARR(3,4)
V1[0,*] = [x[0:2],x[4]]
V1[1,*] = [y[0:2],y[4]]
V1[2,*] = [z[0:2],z[4]]
p1 = [4,0,1,2,3]
image2 = polyshade(v1,p1)
TV,image2
```
![](https://i.imgur.com/bUodvyO.png)
```IDL=41
color = bindgen(5)*60
window,3
v2 = FLTARR(3,3)
V2[0,*] = x[2:4]
V2[1,*] = y[2:4]
V2[2,*] = z[2:4]
p2 = [3,0,1,2]
image3 = polyshade(v2,p2,shade = color)
TV,image3
```
![](https://i.imgur.com/56Yopqu.png)
```IDL=50
window,4
image4 = polyshade(v,p,poly_shade = [100,200])
;兩個區塊著上不同的顏色
TV,image4
```
![](https://i.imgur.com/qAaTqtx.png)
```IDL=54
window,5
T3D,/RESET
T3D,ROTATE = [60,0,0]
image5 = polyshade(v,p,/T3D)
TV,IMAGE5
end
```
![](https://i.imgur.com/ql0pb0m.png)

```

```
### 【課堂練習 : 畫一個菱形】idl1091_w13_8.pro
```IDL=
; Chapter 8 課堂練習 : 畫一個菱形
;CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
```
![](https://i.imgur.com/HFtnHVp.png)
/NODATA
![](https://i.imgur.com/GoMwLtC.png)
```IDL=8
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
```
![](https://i.imgur.com/cc4x9nh.png)
```IDL=19
;noERASE
image_w13 = polyshade(V,P)
TV,image_w13
```
![](https://i.imgur.com/u0sE8Rg.png)
```IDL=22
STR = STRING(INDGEN(4), '(I1)')
xyouts,x,y,STR,charsize = 2
end
```
![](https://i.imgur.com/Mrp2pKH.png)
```
IDL> .go
% Compiled module: $MAIN$.
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
```
### idl1091_w13_9.pro
```IDL=
; Chapter 8
;CD,'H:\IDL_1091\class_IDL_781035\W13_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W13_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
```
![](https://i.imgur.com/D7B1zFz.png)
```IDL=10
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
arr1 = replicate(2.0,360,360)
mesh_obj,4,V,P,arr1 
; 4代表球面
help,v,p
image1 = polyshade(v,p,/T3D)
TV,image1
```
![](https://i.imgur.com/AcxWSeH.png)
```IDL=17
window,2
mesh_obj,3,V2,P2,arr1,p4=-3
image2 = polyshade(v2,p2,/T3D)
TV,image2
 
end
```
![](https://i.imgur.com/vMN59Kx.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: SCALE3.
% Compiled module: T3D.
% Compiled module: MESH_OBJ.
% Compiled module: CV_COORD.
V               FLOAT     = Array[3, 129600]
P               LONG      = Array[644405]
```

## W14 (Ch8.3.3、Ch12、Ch14.1.2)
[MESH_OBJ](https://www.l3harrisgeospatial.com/docs/MESH_OBJ.html)
Type
An integer that specifies what type of object to create. The various surface types are described in the table below.

|Type| Surface Type|
|--|--|
|0|Triangulated|
|1| Rectangular|
|2| Polar|
|3|Cylindrical|
|4|Spherical|
|5| Extrusion|
|6 |Revolution|
|7| Ruled|
|Other values |None|
### idl1091_w14_1.pro
```IDL=
; Chapter 8 mesh_obj
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
 
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
arr1 = replicate(2.0,360,360)
mesh_obj,4,V,P,arr1
; 4代表建置一個球體
help,v,p

;呼叫polyshade函數著色，輸入變數v和p
image1 = polyshade(v,p,/T3D)
TV,image1
```
![](https://i.imgur.com/6CfUEYI.png)
```IDL=20
window,2
mesh_obj,3,v_2,p_2,arr1,p4=-3,p3=0
;p4如果比p3大，將圖畫在圓柱外側，反之，p4如果比p3小，將圖畫在圓柱內側
subdir= ['examples','data']
path = filepath('worldelv.dat', subdirectory=subdir)
file=read_binary(path,data_dims=[360,360])
image2=polyshade(v_2,p_2,shades = file,/t3d)
tv,image2
```
![](https://i.imgur.com/COragvJ.png)
```IDL=28
window,3
;建立一個2*3的矩陣，每一行代表三維空間中的一個點，共兩點
arr2 = [[2,2],[0,0],[0,3]]
;配合mesh_obj函數的輸入格式，將arr2轉置
arr2_t = transpose(arr2)
mesh_obj,6,va,pa,arr2_t,p1=180,p3=[0,0,1],p5 = !pi*3./2.,p4 = !pi*3./2.
;p1
;p3
;p5
;p4
image3 = polyshade(va,pa,/t3d)
tv,image3
```
![](https://i.imgur.com/ZtemKms.png)
```IDL=40
window,4
arr3 = [[0.5,0.5],[0,0],[0,0.5]]
mesh_obj,0,va2,pa2,arr3
image4 = polyshade(va2,pa2,/t3d)
tv,image4
```
![](https://i.imgur.com/1Y0DHtp.png)
```IDL=45
window,5
py = findgen(4)
arr4 = [[0.5,0.5],[0,0.5],[0.5,0]]
mesh_obj,1,va3,pa3,arr4,p1=py
image5 = polyshade(va3,pa3,/t3d)
tv,image5
```
![](https://i.imgur.com/1aGhh9R.png)
```IDL=51
window,6
arr6 = fltarr(3,5)
arr6[0,*]=randomu(seed,5) ;產生一個5*1數值大小在0到1之間的亂數矩陣
arr6[1,*]=randomu(seed,5)
arr6[2,*]=randomu(seed,5)
mesh_obj,0,va6,pa6,arr6
image6 = polyshade(va6,pa6,/t3d)
tv,image6
```
![](https://i.imgur.com/DmtbVQA.png)
```IDL=59
window,7
arr7 = randomu(seed,5,5)
mesh_obj,2,va7,pa7,arr7
image7 = polyshade(va7,pa7,/t3d)
tv,image7
```
![](https://i.imgur.com/Bj8e6XR.png)
```IDL=64
window,8
arr8 = replicate(2.0,360,360)
mesh_obj,3,va8,pa8,arr8,p3=0,p4=3
image8 = polyshade(va8,pa8,/t3d)
tv,image8
```
![](https://i.imgur.com/DOdEm3K.png)
```IDL=69
window,9
arr9 = randomu(seed,3,4)
mesh_obj,7,va9,pa9,arr6,arr9
image9 = polyshade(va9,pa9,/t3d)
tv,image9

help
end
```
![](https://i.imgur.com/QssRlsi.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: SCALE3.
% Compiled module: T3D.
% Loaded DLM: LAPACK.
% Compiled module: MESH_OBJ.
% Compiled module: CV_COORD.
V               FLOAT     = Array[3, 129600]
P               LONG      = Array[644405]
% Compiled module: VERT_T3D.
% At $MAIN$             83 H:\IDL_1091\class_IDL_781035\W14_IDL\idl1091_w14_1.pro
ARR1            FLOAT     = Array[360, 360]
ARR2            INT       = Array[2, 3]
ARR2_T          INT       = Array[3, 2]
ARR3            FLOAT     = Array[2, 3]
ARR4            FLOAT     = Array[2, 3]
ARR6            FLOAT     = Array[3, 5]
ARR7            FLOAT     = Array[5, 5]
ARR8            FLOAT     = Array[360, 360]
ARR9            FLOAT     = Array[3, 4]
FILE            BYTE      = Array[360, 360]
IMAGE1          BYTE      = Array[960, 540]
IMAGE2          BYTE      = Array[960, 540]
IMAGE3          BYTE      = Array[960, 540]
IMAGE4          BYTE      = Array[960, 540]
IMAGE5          BYTE      = Array[960, 540]
IMAGE6          BYTE      = Array[960, 540]
IMAGE7          BYTE      = Array[960, 540]
IMAGE8          BYTE      = Array[960, 540]
IMAGE9          BYTE      = Array[960, 540]
P               LONG      = Array[644405]
PA              LONG      = Array[900]
PA2             LONG      = Array[4]
PA3             LONG      = Array[10]
PA6             LONG      = Array[16]
PA7             LONG      = Array[80]
PA8             LONG      = Array[644405]
PA9             LONG      = Array[20]
PATH            STRING    = 'C:\Program Files\Harris\IDL88\examples\data\worldelv.dat'
PY              FLOAT     = Array[4]
P_2             LONG      = Array[644405]
SEED            ULONG     = Array[628]
SUBDIR          STRING    = Array[2]
V               FLOAT     = Array[3, 129600]
VA              FLOAT     = Array[3, 362]
VA2             FLOAT     = Array[3, 3]
VA3             FLOAT     = Array[3, 6]
VA6             FLOAT     = Array[3, 5]
VA7             FLOAT     = Array[3, 25]
VA8             FLOAT     = Array[3, 129600]
VA9             FLOAT     = Array[3, 10]
V_2             FLOAT     = Array[3, 129600]
Compiled Procedures:
    $MAIN$  MESH_OBJ    SCALE3      T3D

Compiled Functions:
         CV_COORD    VERT_T3D
```
### 【loadct】idl1091_w14_2.pro
https://www.l3harrisgeospatial.com/docs/LOADCT_Procedure.html

#### Type 3 (Cylindrical)
A two dimensional (n, m) array containing radius values. The resulting polygon mesh will have n x m vertices. The n dimension of the array is mapped to the polar angle, and the m dimension is mapped to the Z axis. When shading a cylindrical mesh, the shading array should have (n, m) elements.

P1 specifies the polar angle of the first column of Array1 (the default is 0). 
P2 specifies the polar angle of the last column of Array1 (the default is 2*PI). If P2 is less than P1 then the polygon facing is reversed. 
P3 specifies the Z coordinate of the first row of Array1 (the default is 0). 
P4 specifies the Z coordinate of the last row of Array1 (the default is m-1). If P4 is less than P3 then the polygon facing is reversed. 
P5 is ignored.
```IDL=
; Chapter 8 mesh_obj
CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
 
arr1 = replicate(2.0,360,360)
mesh_obj,3,va1,pa1,arr1,p3=0,p4=3
subdir=['examples','data']
path = filepath('worldelv.dat',subdirectory=subdir)
file=read_binary(path,data_dims=[360,360])
image1=polyshade(va1,pa1,shade=file,/t3d)

;以39號色系著色
loadct,39
tv,image1
```
![](https://i.imgur.com/8MTaxUD.png)
```IDL=22
window,2
mesh_obj,4,va2,pa2,arr1,p1=!pi,p2=-!pi,p3=-!pi,p4=!pi
;mesh_obj,4,va2,pa2,arr1,p1=0,p2=2*!pi,p3=-!pi,p4=!pi
;mesh_obj,4,va2,pa2,arr1,p1=-!pi,p2=!pi,p3=!pi,p4=-!pi
image2=polyshade(va2,pa2,shade=file,/t3d)
;以39號色系著色
loadct,39
tv,image2
help
end
```
![](https://i.imgur.com/Dnp6SmP.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: SCALE3.
% Compiled module: T3D.
% Loaded DLM: LAPACK.
% Compiled module: MESH_OBJ.
% Compiled module: CV_COORD.
% LOADCT: Loading table Rainbow + white
% LOADCT: Loading table Rainbow + white
% At $MAIN$             31 H:\IDL_1091\class_IDL_781035\W14_IDL\idl1091_w14_2.pro
ARR1            FLOAT     = Array[360, 360]
FILE            BYTE      = Array[360, 360]
IMAGE1          BYTE      = Array[960, 540]
IMAGE2          BYTE      = Array[960, 540]
PA1             LONG      = Array[644405]
PA2             LONG      = Array[644405]
PATH            STRING    = 'C:\Program Files\Harris\IDL88\examples\data\worldelv.dat'
SUBDIR          STRING    = Array[2]
VA1             FLOAT     = Array[3, 129600]
VA2             FLOAT     = Array[3, 129600]
Compiled Procedures:
    $MAIN$  MESH_OBJ    SCALE3      T3D

Compiled Functions:
         CV_COORD
```
### 【shade_volume】idl1091_w14_3.pro
```IDL=
; Chapter 8  shade_volume
CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
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
```
![](https://i.imgur.com/C1Xv7VI.png)
```IDL=25
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
```
![](https://i.imgur.com/X7y4IjP.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: SCALE3.
% Compiled module: T3D.
% LOADCT: Loading table Rainbow + white
% LOADCT: Loading table Rainbow + white
% At $MAIN$             34 H:\IDL_1091\class_IDL_781035\W14_IDL\idl1091_w14_3.pro
F               FLOAT     = Array[100]
IMAGE1          BYTE      = Array[960, 540]
IMAGE2          BYTE      = Array[960, 540]
PA1             LONG      = Array[4374]
PA2             LONG      = Array[4374]
S               LONG      = Array[6]
SEED            ULONG     = Array[628]
VA1             FLOAT     = Array[3, 934]
VA2             FLOAT     = Array[3, 934]
VOL             FLOAT     = Array[25, 25, 25]
X               FLOAT     = Array[100]
Y               FLOAT     = Array[100]
Z               FLOAT     = Array[100]
Compiled Procedures:
    $MAIN$  SCALE3      T3D

Compiled Functions:

           3          25          25          25           4       15625
```
### 【set_shading】idl1091_w14_4.pro
```IDL=
; Chapter 8 set_shading
CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
arr1 = replicate(2.0,360,360)
mesh_obj,4,va1,pa1,arr1
;set_shading,light = [0,0,1] ; 從z坐標軸打光
;set_shading,light = [1,0,0] ; 從x坐標軸打光
;set_shading,light = [0,1,0] ; 從y坐標軸打光
set_shading,light = [0,0,1],value=[150,250] ; 從z坐標軸打光，並定義光線的明暗[darkest,brightest]
image1 = polyshade(va1,pa1,/t3d)
tv,image1

 
end
```
![](https://i.imgur.com/5dDrQWG.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: SCALE3.
% Compiled module: T3D.
% Compiled module: MESH_OBJ.
% Compiled module: CV_COORD.
```
### 【Ch12 顏色的運用】idl1091_w14_5.pro
```IDL=
; Chapter 12
CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'

DEVICE,DECOMPOSED=0 ;DECOMPOSED=0 不會改變顏色 
plot,[0,1],color=150
```
![](https://i.imgur.com/s6x5bmg.png)
```IDL=7
DEVICE,DECOMPOSED=1 ;DECOMPOSED=1 可以改變顏色 
plot,[1,0],color='ff00ff'x,background = 'ffffff'x


help
end
```
![](https://i.imgur.com/EYn7TfS.png)
```
```
### 【tvlct】idl1091_w14_6.pro
```IDL=
; Chapter 12 tvlct
CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
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
```
![](https://i.imgur.com/8e3oRVo.png)
```IDL=15
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
```
![](https://i.imgur.com/Ju0hinJ.png)
```
IDL> .go
% Compiled module: $MAIN$.
% LOADCT: Loading table B-W LINEAR
% At $MAIN$             29 H:\IDL_1091\class_IDL_781035\W14_IDL\idl1091_w14_6.pro
B1              BYTE      = Array[256]
BLUE            INT       = Array[4]
G1              BYTE      = Array[256]
GREEN           INT       = Array[4]
R1              BYTE      = Array[256]
RED             INT       = Array[4]
THETA           FLOAT     = Array[401]
Y1              FLOAT     = Array[401]
Y2              FLOAT     = Array[401]
Y3              FLOAT     = Array[401]
```
### 【STRETCHL, Low, High】idl1091_w14_7.pro
```IDL=
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
```
![](https://i.imgur.com/329cWvs.png)
```IDL=13
loadct,13
tv,a,1
 ```
![](https://i.imgur.com/cWYvaMA.png)
```IDL=15
stretch,0,255
loadct,0
tv,a,2
```
![](https://i.imgur.com/pzl9X5A.png)
```IDL=18
stretch,110,150
loadct,13
tv,a,3 

end
```
![](https://i.imgur.com/bjqRzuJ.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: DIST.
% LOADCT: Loading table B-W LINEAR
% LOADCT: Loading table RAINBOW
% Compiled module: STRETCH.
% LOADCT: Loading table B-W LINEAR
% LOADCT: Loading table RAINBOW
```
### 【color_quan】idl1091_w14_8.pro
```IDL=
; Chapter 12 color_quan
;CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

subdir = ['examples','data']
path1 = filepath('rose.jpg',subdirectory=subdir)
read_jpeg,path1,image1
image1_r = reform(image1[0,*])
image1_g = reform(image1[1,*])
image1_b = reform(image1[2,*])

tv,image1,true=1,0
```
![](https://i.imgur.com/jLZMncD.png)
```IDL=16
image2 = color_quan(image1_r,image1_g,image1_b,r2,g2,b2)
tvlct,r2,g2,b2
tv,image2,1
```
![](https://i.imgur.com/LSShXFb.png)
```IDL=19
image3 = color_quan(image1,1,r3,g3,b3) ;採用第一個維度
tv,image3,2
```
![](https://i.imgur.com/UJQczwg.png)
```IDL=21
image4 = color_quan(image1,1,r4,g4,b4,color=64) ;採用第一個維度
tvlct,r4,g4,b4
tv,image4,3

help
end
```
![](https://i.imgur.com/u0syIkq.png)
```
IDL> .go
% Compiled module: $MAIN$.
% At $MAIN$             28 H:\IDL_1091\class_IDL_781035\W14_IDL\idl1091_w14_8.pro
B2              BYTE      = Array[256]
B3              BYTE      = Array[256]
B4              BYTE      = Array[64]
G2              BYTE      = Array[256]
G3              BYTE      = Array[256]
G4              BYTE      = Array[64]
IMAGE1          BYTE      = Array[3, 227, 149]
IMAGE1_B        BYTE      = Array[227]
IMAGE1_G        BYTE      = Array[227]
IMAGE1_R        BYTE      = Array[227]
IMAGE2          BYTE      = Array[227]
IMAGE3          BYTE      = Array[227, 149]
IMAGE4          BYTE      = Array[227, 149]
PATH1           STRING    = 'C:\Program Files\Harris\IDL88\examples\data\rose.jpg'
R2              BYTE      = Array[256]
R3              BYTE      = Array[256]
R4              BYTE      = Array[64]
SUBDIR          STRING    = Array[2]
```
### 【Ch14 控制指令的運用】idl1091_w14_9.pro
```IDL=
; Chapter 14 
CD,'H:\IDL_1091\class_IDL_781035\W14_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W14_IDL'


print,3 lt 5 ;3<5
print,3 gt 5 ;3>5

print,3,format='(B8)' ; 以8個位置的binary呈現數值3 (2^0+2^1)
print,7,format='(B8)' ; 以8個位置的binary呈現數值7 (2^0+2^1+2^2)

print,'2 <= 3=',2 le 3 ,format='(A7,I2)' ; (A7,I2)=(用7個文字呈現，用2個數字呈現)
print,'2 > 3=',2 gt 3 ,format='(A7,I2)' ; (A7,I2)=(用7個文字呈現，用2個數字呈現)
print,2 le 3 and 5 gt 3,format='(I2)' ; (I2)=(用2個數字呈現)
print,2 gt 3 or 5 gt 3,format='(I2)' ; (I2)=(用2個數字呈現)
print,~(2 gt 3),format='(I2)' ; (I2)=(用2個數字呈現)

a=3
print,'a=',a
print,'a +1 =',a+1
print,'2 a =',a
print,'a++ =',a++ ;將a加上1再放回a
print,'3 a =',a
print,'++a =',++a ;將a加上1再放回a
print,'4 a =',a

b=6
print,'b=',b
print,'b-1 =',b-1
print,'b-- =',b-- ;將b減掉1再放回b
print,'2 b =',b
print,'--b =',--b ;將b減掉1再放回b
print,'3 b =',b

help
end
```
```
IDL> .go
% Compiled module: $MAIN$.
   1
   0
      11
     111
2 <= 3= 1
 2 > 3= 0
 1
 1
 1
a=       3
a +1 =       4
2 a =       3
a++ =       3
3 a =       4
++a =       5
4 a =       5
b=       6
b-1 =       5
b-- =       6
2 b =       5
--b =       4
3 b =       4
% At $MAIN$             35 H:\IDL_1091\class_IDL_781035\W14_IDL\idl1091_w14_9.pro
A               INT       =        5
B               INT       =        4
```
## W14_homework
[題目](https://drive.google.com/file/d/12LY6ST0XKGrYGC_dzAlF9_62dKKGr0FW/view?usp=sharing)
### IDL_00781035_EX_06_1.pro
```IDL=
; 曾鈺皓 00781035 IDL_作業6-1
CD,'H:\IDL_1091\HW_IDL'
;CD,'E:\IDL_1091\HW_IDL'
;window,xsize=1024,ysize=512
!P.BACKGROUND=0
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1,xsize=1024+180,ysize=520
PLOT,[0,1],[0,1],/NODATA,XSTYLE = 4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]

;讀取 IDL 系統中在 examples\data 目錄內的 Day.jpg 圖檔的影像
subdir=['examples','data']
path = filepath('Day.jpg',subdirectory=subdir)
;(1)查詢並顯示所有關於這圖檔的影像訊息。
image_info = query_image(path,CHANNELS = channels,DIMENSIONS=dims,NUM_IMAGES=num,$
  PIXEL_TYPE = pxtype,TYPE = type)
print,image_info
print,channels
print,dims
print,num
print,pxtype
print,type
image = read_image(path)
image_size = SIZE(image,/DIMENSIONS)
image_xsize = image_size[0]
image_ysize = image_size[1]*(3.0/4.0)
image_zsize = image_size[2]*(3.0/4.0)
image_r = reform(image,1,image_size[0]*image_size[1]*image_size[2])
redCh = REFORM(image(0,*,*))
greenCh = REFORM(image(1,*,*))
blueCh = REFORM(image(2,*,*))

;(2)讀取影像顯示在視窗。
image_scaling = CONGRID(image,image_xsize,image_ysize,image_zsize)
TV,image,true = 1
;(3)將 Day.jpg 長和高都縮小四分之一(1/4)。
;(4)將(3)縮小後的影像以相同的格式寫入到一個新檔案中。
image_smaller = CONGRID(image,image_xsize,image_ysize/3.0,image_zsize/3.0)
TV,image_smaller,true = 1,0
image_smaller_size = SIZE(image_smaller,/DIMENSIONS)

;(5)將(3)縮小後的影像分別將紅、綠、藍的影像取出。
;(6)將(3)縮小影像顯示在步驟(2)視窗的上方不同位置、
image_smaller_red = CONGRID(redCh,image_ysize/3.0,image_zsize/3.0)
TV,image_smaller_red,1

image_smaller_green = CONGRID(greenCh,image_ysize/3.0,image_zsize/3.0)
TV,image_smaller_green,2

image_smaller_blue = CONGRID(blueCh,image_ysize/3.0,image_zsize/3.0)
TV,image_smaller_blue,3

;最後將縮小後影像向右旋轉 90 度後顯示在視窗的右側(如圖 EX_06_1)。
image_smaller_red = transpose(image_smaller_red)
image_smaller_green = transpose(image_smaller_green)
image_smaller_blue = transpose(image_smaller_blue)
image_rotate = fltarr(3,image_zsize/3.0,image_ysize/3.0)
image_rotate[0,*,*] = image_smaller_red
image_rotate[1,*,*] = image_smaller_green
image_rotate[2,*,*] = image_smaller_blue
TV,image_rotate,true = 1,1030,1

;(7)將步驟 6 的視窗存為圖檔。
write_png,'IDL_00781035_EX_06_01_fig.jpg',tvrd(/TRUE)
print,image_size[0],image_ysize,image_zsize


help
end
```
![](https://i.imgur.com/xPT7nL2.png)
```
IDL> .go
% Compiled module: $MAIN$.
           1
           3
        1024         512
           1
       1
JPEG
           3      768.000      384.000
% At $MAIN$             70 H:\IDL_1091\HW_IDL\IDL_00781035_EX_06_1.pro
ARR1            FLOAT     = Array[360, 180]
BLUECH          BYTE      = Array[1024, 512]
CHANNELS        LONG      =            3
COLOR           INT       = Array[5]
D               INT       = Array[6]
DIMS            LONG      = Array[2]
GREENCH         BYTE      = Array[1024, 512]
IMAGE           BYTE      = Array[3, 1024, 512]
IMAGE1          BYTE      = Array[960, 540]
IMAGE_INFO      LONG      =            1
IMAGE_R         BYTE      = Array[1, 1572864]
IMAGE_ROTATE    FLOAT     = Array[3, 128, 256]
IMAGE_SCALING   BYTE      = Array[3, 768, 384]
IMAGE_SIZE      LONG      = Array[3]
IMAGE_SMALLER   BYTE      = Array[3, 256, 128]
IMAGE_SMALLER_BLUE
                BYTE      = Array[128, 256]
IMAGE_SMALLER_GREEN
                BYTE      = Array[128, 256]
IMAGE_SMALLER_RED
                BYTE      = Array[128, 256]
IMAGE_SMALLER_SIZE
                LONG      = Array[3]
IMAGE_W14_HW    BYTE      = Array[960, 540]
IMAGE_XSIZE     LONG      =            3
IMAGE_YSIZE     FLOAT     =       768.000
IMAGE_ZSIZE     FLOAT     =       384.000
NUM             LONG      =            1
P               INT       = Array[6]
PA1             LONG      = Array[321305]
PATH            STRING    = 'C:\Program Files\Harris\IDL88\examples\data\Day.jpg'
PXTYPE          INT       =        1
REDCH           BYTE      = Array[1024, 512]
STR             STRING    = Array[5]
STREET_PHOTO_WB BYTE      = Array[360, 180]
SUBDIR          STRING    = Array[2]
TYPE            STRING    = 'JPEG'
V               FLOAT     = Array[3, 5]
VA1             FLOAT     = Array[3, 64800]
X               FLOAT     = Array[5]
Y               FLOAT     = Array[5]
Z               FLOAT     = Array[5]
Compiled Procedures:
    $MAIN$  MESH_OBJ    SCALE3      T3D

Compiled Functions:
         CV_COORD
```

### IDL_00781035_EX_06_2.pro
```IDL=
; 曾鈺皓 00781035 IDL_作業6-2
CD,'H:\IDL_1091\HW_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,YSTYLE=4
;(1)請自訂五個頂點位置,繪製五邊形圖,
x = [0.3,0.7,0.9,0.5,0.1]
y = [0.1,0.1,0.5,0.9,0.5]
z = [0.0,0.0,0.0,0.0,0.0]
V = FLTARR(3,5)
print,V
V[0,*] = x
V[1,*] = y
V[2,*] = z
P = [5,0,1,2,3,4]
D = [P[1:5],P[1]] ;繞出一個五邊形
PLOTS,x[D],Y[D],/T3D

color = BINDGEN(5)*60
;noERASE
;(2)再將這五邊形內部以淺灰色塗滿,
image_w14_hw = polyshade(V,P,/T3D,SHADES=color)
;set_shading,light = [0,0,1] ; 從坐標軸打光
TV,image_w14_hw

;(3)再標示各頂點的標示編號。(如圖 EX_06_2)。
STR = STRING(INDGEN(5)+1, '(I1)')
xyouts,x,y,STR,charsize = 2
;(4)繪圖視窗存為圖檔。
write_png,'IDL_00781035_EX_06_02_fig.jpg',tvrd()

help
end
```
![](https://i.imgur.com/bnKBatl.png)
```
IDL> .go
% Compiled module: $MAIN$.
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
      0.00000      0.00000      0.00000
% At $MAIN$             33 H:\IDL_1091\HW_IDL\IDL_00781035_EX_06_2.pro
COLOR           INT       = Array[5]
D               INT       = Array[6]
IMAGE_W14_HW    BYTE      = Array[960, 540]
P               INT       = Array[6]
STR             STRING    = Array[5]
V               FLOAT     = Array[3, 5]
X               FLOAT     = Array[5]
Y               FLOAT     = Array[5]
Z               FLOAT     = Array[5]
```
### IDL_00781035_EX_06_3.pro
```IDL=
; 曾鈺皓 00781035 IDL_作業6-3
CD,'H:\IDL_1091\HW_IDL'
!P.BACKGROUND=255
!P.COLOR=0
DEVICE,DECOMPOSED=0

window,1
PLOT,[0,1],[0,1],/NODATA,XSTYLE=4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]
;(1)試以 MESH_OBJ 程序建立一圓柱面,圓柱半徑為 2.0,總共 360x180 的網格點。圓柱旳長度為 4。
arr1 = replicate(2.0,360,180)
mesh_obj,3,va1,pa1,arr1,p1=-!pi,p2=!pi,p3=0,p4=4

;(2)同時讀取本次作業附檔 street_photo_wb.png 黑白街圖,
image = read_image('street_photo_wb.png')
image_size = SIZE(image,/DIMENSIONS)
;(3)然後利用 congrid 函數將所讀取的 street_photo_wb.png 轉為總共 360x180 的網格點,
street_photo_wb = CONGRID(image,360,180)

;(4)再將此網格點轉換後的黑白街圖貼在圓柱上。
image1 = polyshade(va1,pa1,shade=street_photo_wb,/t3d)
;image1=polyshade(va1,pa1,shade=image,/t3d)

;(5)將網格點轉換後的黑白街圖貼顯示在同一視窗的左下角(如圖 EX_06_3)。
tv,image1
tv,street_photo_wb

;(6)繪圖視窗存為圖檔。
write_png,'IDL_00781035_EX_06_03_fig.jpg',tvrd()
help
end
```
![](https://i.imgur.com/cD5JwsD.png)
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: SCALE3.
% Compiled module: T3D.
% Compiled module: MESH_OBJ.
% Compiled module: CV_COORD.
% At $MAIN$             30 H:\IDL_1091\HW_IDL\IDL_00781035_EX_06_3.pro
ARR1            FLOAT     = Array[360, 180]
COLOR           INT       = Array[5]
D               INT       = Array[6]
IMAGE           BYTE      = Array[891, 501]
IMAGE1          BYTE      = Array[960, 540]
IMAGE_SIZE      LONG      = Array[2]
IMAGE_W14_HW    BYTE      = Array[960, 540]
P               INT       = Array[6]
PA1             LONG      = Array[321305]
STR             STRING    = Array[5]
STREET_PHOTO_WB BYTE      = Array[360, 180]
V               FLOAT     = Array[3, 5]
VA1             FLOAT     = Array[3, 64800]
X               FLOAT     = Array[5]
Y               FLOAT     = Array[5]
Z               FLOAT     = Array[5]
Compiled Procedures:
    $MAIN$  MESH_OBJ    SCALE3      T3D

Compiled Functions:
         CV_COORD
```
## W15
### :star:idl1091_w15_1.pro
```IDL=
; Chapter 14 控制指令

a = 2
print,'a=',a
print,'++a',++a
print,'2,a=',a

print,'--a',--a
print,'3,a=',a

b = 3
a+=b
print,'4,a=',a

a GE=b
print,'5,a = ',a 

a GE=b
print,'6,a = ',a
```
```
a=       2
++a       3
2,a=       3
--a       2
3,a=       2
4,a=       5
5,a =    1
6,a =    0
```
```IDL=22
help
end
```
```
A               BYTE      =    0
B               INT       =        3
```
### :star:idl1091_w15_2.pro
```IDL=
; Chapter 14

for i = 1,3 do print,'i=',i

k=0
for j = 0,20,5 do begin
  k = k+j
  print,'j=',j,'k=',k,format='(a4,i3,a4,i3)'
  ;format='('j = ',j,'k = ',k)'
  
  b = string(j)
  print,'string(j) = ',b,'strlen(b) = ',strlen(b)
  
  c = strcompress(b,/remove_all)
  print,'c',c,'strlen(c)',strlen(c)
endfor
```
```
i=       1
i=       2
i=       3
  j=  0  k=  0
string(j) =        0strlen(b) =            8
c0strlen(c)           1
  j=  5  k=  5
string(j) =        5strlen(b) =            8
c5strlen(c)           1
  j= 10  k= 15
string(j) =       10strlen(b) =            8
c10strlen(c)           2
  j= 15  k= 30
string(j) =       15strlen(b) =            8
c15strlen(c)           2
  j= 20  k= 50
string(j) =       20strlen(b) =            8
c20strlen(c)           2
```
```IDL=18
help
end
```
```
B               STRING    = '      20'
C               STRING    = '20'
I               INT       =        4
J               INT       =       25
K               INT       =       50
```
### :star:idl1091_w15_3.pro
```IDL=
; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

a = indgen(3,2)
print,'1, a=',a
```
```
1, a=       0       1       2
       3       4       5
```
```IDL=7
for j = 0,2 do begin
  for k = 0,1 do begin
    a[j,k]=2*j+k
    
  endfor
endfor


print,'2,a=',a
```
```
2,a=       0       2       4
       1       3       5
```
```IDL=16
help
end
```
```
A               INT       = Array[3, 2]
J               INT       =        3
K               INT       =        2
```
### :star:idl1091_w15_4.pro
```IDL=
; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'


window,1
a = intarr(256,256)
help,a
print,'a(0:5,0:5)='
print,a(0:5,0:5)
```
```
A               INT       = Array[256, 256]
a(0:5,0:5)=
       0       0       0       0       0       0
       0       0       0       0       0       0
       0       0       0       0       0       0
       0       0       0       0       0       0
       0       0       0       0       0       0
       0       0       0       0       0       0
```
```IDL=11
a1 = []
for i = 0,255 do begin
  b = replicate(i,256)
  a1 = [[a1],[b]]
  
endfor
help,a1
print,'a1(0:5,0:5)='
print,a1(0:5,0:5)
```
```
A1              INT       = Array[256, 256]
a1(0:5,0:5)=
       0       0       0       0       0       0
       1       1       1       1       1       1
       2       2       2       2       2       2
       3       3       3       3       3       3
       4       4       4       4       4       4
       5       5       5       5       5       5
```
```IDL=20
tv,a1
```
![](https://i.imgur.com/xLlQenz.png)

```IDL=21
window,2
for j = 0,255 do begin
  for k = 0,255 do begin
    a[j,k] = k
  endfor
endfor
help,a
print,'a(0:5,0:5)='
print,a(0:5,0:5)
```
```
A               INT       = Array[256, 256]
a(0:5,0:5)=
       0       0       0       0       0       0
       1       1       1       1       1       1
       2       2       2       2       2       2
       3       3       3       3       3       3
       4       4       4       4       4       4
       5       5       5       5       5       5
```
```IDL=30
tv,a
loadct,13
tv,a,260,0
```
% LOADCT: Loading table RAINBOW
![](https://i.imgur.com/vLhJtlG.png)
```IDL=33
help
end
```
```
A               INT       = Array[256, 256]
A1              INT       = Array[256, 256]
B               INT       = Array[256]
I               INT       =      256
J               INT       =      256
K               INT       =      256
```
### :star:idl1091_w15_5.pro
```IDL=
; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'
if 3 le 2 then print,'yes' else print,'No'
```
```
No
```
```IDL=5
if 2 le 3 then print,'yes' else print,'No'
```
```
yes
```
```IDL=6
score = 70.0
if score ge 60.0 then begin
  print,'score=',score,'pass',format='(a8,f5.1,a5)'
endif else begin
  print,'score=',score,'Down',format='(a8,f5.1,a5)'
endelse
```
```
  score= 70.0 pass
```
```IDL=12
b1 = (score GE 60.0) ? 'Pass_1':'Down_1'
print,'Score=',score,' b1=',b1
```
```
Score=      70.0000 b1=Pass_1
```
```IDL=14
help
end
```
```
B1              STRING    = 'Pass_1'
SCORE           FLOAT     =       70.0000
```
### :star:idl1091_w15_6.pro
```IDL=
; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

i = 4
case i of
  1: print,'i=1',i
  2: print,'i=2',i
  3: begin
    print,'i=3',i
    print,'i=4',i
    end
else:print,'Nothing'
endcase
```
```
Nothing
```
```IDL=15
help
end
```
```
I               INT       =        4
```
### :star:idl1091_w15_7.pro
```IDL=
; Chapter 
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

x = -3
case 1 of
  x GE 2:print,'x=',x,' x>=2'
  (x GE -2) and (X LT 2):print,'x=',x,'  2>x>=-2'
  x LT -2:print,'x=',x,' x<-2'
endcase
```
```
x=      -3 x<-2
```
```IDL=11
help
end
```
```
X               INT       =       -3
```
### :star:idl1091_w15_8.pro
```IDL=
; Chapter 14
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
;CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

MONTH = 1

case 1 of
  MONTH EQ 12 or (MONTH GE 1 and MONTH LE 2): season='Winter'
  (MONTH GE 3 and MONTH LE 5): season='Spring'
  (MONTH GE 6 and MONTH LE 8): season='Summer'
  (MONTH GE 9 and MONTH LE 11): season='Autumn' 
  ELSE:season='Not a month'
endcase 
  
print,month,' is ',season

```
```
       1 is Winter
```
```IDL=17
help
end
```
```
MONTH           INT       =        1
SEASON          STRING    = 'Winter'
```
### :star:idl1091_w15_9.pro
```IDL=
; Chapter 14 switch
;CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'
i = 2
SWITCH i of
  0: print,'i=0 ',i
  1: print,'i=1 ',i
  2: print,'i=2 ',i
  ELSE: print,'Nothing'
ENDSWITCH
```
```
i=2        2
Nothing
```
```IDL=11
help
end
```
```
I               INT       =        2
```
### :star:idl1091_w15_10.pro【副程式程序(Procedure)，省略RETURN】
```IDL=
PRO switch_1,x
SWITCH x OF
  1: print,'x=',x,' one'
  2: print,'x=',x,' two'
  3: begin 
    print,'x=',x,' three'
    break
    end
  ELSE: BEGIN
    print,' you entered:',x
    print,'Please enter a value between 1 and 3'
    end
ENDSWITCH

help
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> switch_1,x (x隨便指定一個數字)
```
IDL> switch_1,5
 you entered:       5
Please enter a value between 1 and 3
% At SWITCH_1           15 H:\IDL_1091\class_IDL_781035\W15_IDL\idl1091_w15_10.pro
%    $MAIN$          
X               INT       =        5
```
### :star:idl1091_w15_11.pro【副程式程序(Procedure)，省略RETURN】
```IDL=
PRO IDL_1091W15_while_1,i,j
print,'1, i=',i
while i LE 3 do i = i+1
print,'2, i=',i
print,'1, j=',j
while j LE 3 do begin
  j = j+1
  print,'2,j=',j
  
endwhile
print,'3,j=',j
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> IDL_1091W15_while_1,i,j (i,j 隨便指定一個數字)
```
IDL> IDL_1091W15_while_1,1,1
1, i=       1
2, i=       4
1, j=       1
2,j=       2
2,j=       3
2,j=       4
3,j=       4
```
### :star:idl1091_w15_12.pro【副程式程序(Procedure)，省略RETURN】
```IDL=
pro IDL_1091W15_CH14_repeat_1,i,j
print,'1, i=',i
REPEAT i = i+1 until i GE 2
; 重複執行i = i+1 直到 i 大於等於2
print,'2, i=',i
print,'1, j=',j
REPEAT BEGIN
  j = j+1
  print,'2, j=',j
ENDREP UNTIL j GE 4
print,'3, j=',j
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> IDL_1091W15_CH14_repeat_1,i,j (i,j 隨便指定一個數字)
```
IDL> .compile -v 'H:\IDL_1091\class_IDL_781035\W15_IDL\idl1091_w15_12.pro'
% Compiled module: IDL_1091W15_CH14_REPEAT_1.

IDL> IDL_1091W15_CH14_repeat_1,1,1
1, i=       1
2, i=       2
1, j=       1
2, j=       2
2, j=       3
2, j=       4
3, j=       4
```
### :star:idl1091_w15_13.pro【副程式程序(Procedure)，省略RETURN】
```IDL=
PRO IDL_1091W15_where_1
a=[1,5,2,4,7]
b = WHERE(a GE 3,c)
print,'b=',b ;(a GE 3) 的位置
print,'c=',c ;(a GE 3) 的總數
print,'a(b)',a(b) ;(a GE 3)的值


d = where(a LE 3,g,COMPLEMENT=e,NCOMPLEMENT=f)
print,'d = ',d
print,'e = ',e
print,'f = ',f
print,'g = ',g
print,'a(b)',a(d) ;(a LE 3)的值
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> IDL_1091W15_where_1
```
IDL> .compile -v 'H:\IDL_1091\class_IDL_781035\W15_IDL\idl1091_w15_13.pro'
% Compiled module: IDL_1091W15_WHERE_1.

IDL> IDL_1091W15_where_1
b=           1           3           4
c=           3
a(b)       5       4       7
d =            0           2
e =            1           3           4
f =            3
g =            2
a(b)       1       2
```
### :star:idl1091_w15_14.pro【副程式程序(Procedure)，省略RETURN】
```IDL=
PRO IDL_1091W15_ARRAY_INDICES_1
a = indgen(3,2)
print,'a=',a

b1 = WHERE(a GE 3)
print,'b1=',b1

c = ARRAY_indices(a,b1)
print,'c=',c

print,'a(c(0),c(1))=',a(c(0),c(1))
print,'a(c(2),c(3))=',a(c(2),c(3))
help,c

print,'a(c(0,2),c(1,2))=',a(c(0,2),c(1,2))
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> IDL_1091W15_ARRAY_INDICES_1
```
IDL> .compile -v 'H:\IDL_1091\class_IDL_781035\W15_IDL\idl1091_w15_14.pro'
% Compiled module: IDL_1091W15_ARRAY_INDICES_1.

IDL> IDL_1091W15_ARRAY_INDICES_1
a=       0       1       2
       3       4       5
b1=           3           4           5
% Compiled module: ARRAY_INDICES.
c=           0           1
           1           1
           2           1
a(c(0),c(1))=       3
a(c(2),c(3))=       4
C               LONG      = Array[2, 3]
a(c(0,2),c(1,2))=       5
```
### :star:mean_p_1.pro  【副程式程序(Procedure)，不省略RETURN】
(使用在 idl1091_w15_15.pro)
```IDL=
PRO mean_p_1,arr,avg

sum2 = total(arr)
no2 = n_elements(arr)
avg = sum2/float(no2)

RETURN

end
```
【使用方法】 mean_p_1,輸入變數,輸出變數
### :star:idl1091_w15_15.pro【副程式程序(Procedure)，省略RETURN】
```IDL=
PRO IDL_1091W15_CH15_main1
a = indgen(5)+1
print,max(a),min(a)
print,'mean=',mean(a),' std=',stddev(a)

;執行副程式函數 : mean_fun_1
avg_1 = mean_fun_1(a)
print,'avg_1=',avg_1

;呼叫副程式程序 : mean_p_1
mean_p_1,a,avg_2
print,'avg_2',avg_2
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> IDL_1091W15_CH15_main1
```
IDL> .compile -v 'H:\IDL_1091\class_IDL_781035\W15_IDL\idl1091_w15_15.pro'
% Compiled module: IDL_1091W15_CH15_MAIN1.

IDL> IDL_1091W15_CH15_main1
       5       1
mean=      3.00000 std=      1.58114
% Compiled module: MEAN_FUN_1.
avg_1=      3.00000
% Compiled module: MEAN_P_1.
avg_2      3.00000
```
### :star:mean_fun_1.pro【副程式函數(Function)】
```IDL=
FUNCTION mean_fun_1,arr
sum1=total(arr)
no1 = n_elements(arr)
avg = sum1/float(no1)
RETURN,avg
end
```
在控制台直接打 : IDL> avg_1 = mean_fun_1 (自定矩陣)
```
IDL> avg_1 = mean_fun_1(indgen(5)+1)
IDL> print,avg_1
      3.00000
```
### :star:idl1091_w15_16.pro【批次檔(Batch File)】
```IDL=
.RUN mean_fun_1
.RUN mean_p_1
.RUN idl1091_w15_15
```
在控制台直接打 : IDL> @ idl1091_w15_16.pro，執行批次檔
```
IDL> @ idl1091_w15_16.pro

% Compiled module: MEAN_FUN_1.
% Compiled module: MEAN_P_1.
% Compiled module: IDL_1091W15_CH15_MAIN1.
```
## W15_homework
[題目](https://drive.google.com/file/d/1oJ3WWP2L6_PbYcVrbnk3wZqFGyskLdg0/view?usp=sharing)
### :star:IDL_00781035_EX_07_1.pro
```IDL=
; 曾鈺皓 00781035 IDL_作業7-1
CD,'H:\IDL_1091\HW_IDL'
;CD,'E:\IDL_1091\HW_IDL'
;(a)建立海洋學(ocean)、工程數學、潮汐學等 3 科的成績資料,
;資料內容包含:學號、姓名、各科成績。至少輸入儲存 5 個人的資料。


coures_name = ['Ocean','Math','Tide']
student_id = [8101,8102,8103,8104,8105]
student_name = ['Kai','May','Trump','John','Biden']
all_grade = RANDOMU(seed,3,5)*100
ocean_grade = all_grade[0,*]
math_grade = all_grade[1,*]
tide_grade = all_grade[2,*]


table_all = STRARR(7,N_ELEMENTS(all_grade[0,*])+1)
FM_setting_c = '(A7)'
table_all[0,0] = STRING('coures',FORMAT = FM_setting_c)
FM_setting_m = '(A7)' & 
table_all[1,0] = STRING('mean',FORMAT = FM_setting_m)
FM_setting_maxid = '(A12)' & 
table_all[2,0] = STRING('Max_ID',FORMAT = FM_setting_maxid)
FM_setting_maxn = '(A12)' 
table_all[3,0] = STRING('Max_name',FORMAT = FM_setting_maxn)
FM_setting_maxscore = '(A12)' & 
table_all[4,0] = STRING('Max_score',FORMAT = FM_setting_maxscore)
FM_setting_fnum = '(A12)' &
table_all[5,0] = STRING('Fail No.',FORMAT = FM_setting_fnum)
FM_setting_fn = '(A30)'
table_all[6,0] = STRING('Failure name',FORMAT = FM_setting_fn)

;(b)以副程式程序(subject_info.pro),分別計算這 3 科成績的
;平均成績、最高成績的學生的學號、姓名和分數、不及格學生數和不及格學生姓名。

;呼叫程序 : subject_info
subject_info,ocean_grade,student_id,student_name,grade_avg,max_grade,max_id,max_name,fail_num,fail_name
table_all[0,1] = STRING(coures_name[0],FORMAT = FM_setting_c)
table_all[1,1] = STRING(grade_avg,FORMAT = '(F7.1)')
table_all[2,1] = STRING(max_id,FORMAT = '(I12)')
table_all[3,1] = STRING(max_name,FORMAT = FM_setting_maxn)
table_all[4,1] = STRING(max_grade,FORMAT = '(F12.1)')
table_all[5,1] = STRING(fail_num,FORMAT = '(I12)')
table_all[6,1] = STRING(STRJOIN(fail_name,', '),FORMAT = FM_setting_fn)

;呼叫程序 : subject_info
subject_info,math_grade,student_id,student_name,grade_avg,max_grade,max_id,max_name,fail_num,fail_name
table_all[0,2] = STRING(coures_name[1],FORMAT = FM_setting_c)
table_all[1,2] = STRING(grade_avg,FORMAT = '(F7.1)')
table_all[2,2] = STRING(max_id,FORMAT = '(I12)')
table_all[3,2] = STRING(max_name,FORMAT = FM_setting_maxn)
table_all[4,2] = STRING(max_grade,FORMAT = '(F12.1)')
table_all[5,2] = STRING(fail_num,FORMAT = '(I12)')
table_all[6,2] = STRING(STRJOIN(fail_name,', '),FORMAT = FM_setting_fn)
;呼叫程序 : subject_info
subject_info,tide_grade,student_id,student_name,grade_avg,max_grade,max_id,max_name,fail_num,fail_name
table_all[0,3] = STRING(coures_name[2],FORMAT = FM_setting_c)
table_all[1,3] = STRING(grade_avg,FORMAT = '(F7.1)')
table_all[2,3] = STRING(max_id,FORMAT = '(I12)')
table_all[3,3] = STRING(max_name,FORMAT = FM_setting_maxn)
table_all[4,3] = STRING(max_grade,FORMAT = '(F12.1)')
table_all[5,3] = STRING(fail_num,FORMAT = '(I12)')
table_all[6,3] = STRING(STRJOIN(fail_name,', '),FORMAT = FM_setting_fn)
help
```
```
ALL_GRADE       FLOAT     = Array[3, 5]
COURES_NAME     STRING    = Array[3]
FAIL_NAME       STRING    = Array[4]
FAIL_NUM        LONG      =            4
FM_SETTING_C    STRING    = '(A7)'
FM_SETTING_FN   STRING    = '(A30)'
FM_SETTING_FNUM STRING    = '(A12)'
FM_SETTING_M    STRING    = '(A7)'
FM_SETTING_MAXID
                STRING    = '(A12)'
FM_SETTING_MAXN STRING    = '(A12)'
FM_SETTING_MAXSCORE
                STRING    = '(A12)'
GRADE_AVG       FLOAT     =       42.4300
MATH_GRADE      FLOAT     = Array[1, 5]
MAX_GRADE       FLOAT     =       99.9619
MAX_ID          INT       =     8102
MAX_NAME        STRING    = 'May'
OCEAN_GRADE     FLOAT     = Array[1, 5]
SEED            ULONG     = Array[628]
STUDENT_ID      INT       = Array[5]
STUDENT_NAME    STRING    = Array[5]
TABLE_ALL       STRING    = Array[7, 6]
TIDE_GRADE      FLOAT     = Array[1, 5]
```
```IDL=65
print,'Grade Table : '
print,coures_name,FORMAT='(3A9)'
print,all_grade,FORMAT='(3F9.3)'
```
```
Grade Table : 
    Ocean     Math     Tide
   21.580   56.374   50.295
   36.249   40.665   99.962
   57.914   28.925   10.323
   46.587   87.430   20.931
   55.028   61.077   30.639
```
```IDL=68
;(c)以整齊格式輸出各科課程名稱、平均分數、最高成績學生的(學號、姓名和分數)、不及格學生人數和不及格學生姓名。
print,'============================================'
print,table_all
end
```
```
============================================
 coures    mean       Max_ID     Max_name    Max_score     Fail No.                   Failure name
  Ocean    43.5         8103        Trump         57.9            5   Kai, May, Trump, John, Biden
   Math    54.9         8104         John         87.4            3                Kai, May, Trump
   Tide    42.4         8102          May        100.0            4        Kai, Trump, John, Biden
```
### :star:IDL_00781035_EX_07_2.pro
```IDL=
; 曾鈺皓 00781035 IDL_作業7-2
CD,'H:\IDL_1091\HW_IDL'
;CD,'E:\IDL_1091\HW_IDL'
;(a)以 RANDOMN 產生 5x5 亂數矩陣。
;(b)再將此亂數矩陣放大 100 倍後取為整數矩陣。
num = RANDOMN(seed,5,5)*100
num = FIX(num)
;(c)顯示出此整數矩陣。;
;(d)以 FOR 和 IF 控制指令將此整數矩陣的奇數值乘 2。
;(e)將(d)結果的矩陣顯示出。
num_2 = num
for j = 0,4 DO BEGIN
  for i = 0,4 DO BEGIN
    if (num[i,j] MOD 2.0) NE 0 THEN num_2[i,j] = num[i,j]*2
  endfor
endfor
help
```
```
I               INT       =        5
J               INT       =        5
NUM             INT       = Array[5, 5]
NUM_2           INT       = Array[5, 5]
SEED            ULONG     = Array[628]
```
```IDL=18
print,'1...'
print,num
```
```
1...
    -168     -33    -124     -62    -108
     -78     -97     -68    -108    -105
    -195      36    -151    -136     -93
      22     110     -99      24     -56
    -124    -183      -3     104     -76
```
```IDL=20
print,'2...'
print,num_2
end
```
```
2...
    -168     -66    -124     -62    -108
     -78    -194     -68    -108    -210
    -390      36    -302    -136    -186
      22     110    -198      24     -56
    -124    -366      -6     104     -76
```
## W16:high_brightness:2020/12/31:arrow_right:2021/1/1
## W17
### :star:mean_w17_fun2.pro【副程式函數(Function)】
```IDL=
FUNCTION mean_W17_fun2,arr,DOUBLE=DOUBLE
if KEYWORD_SET(DOUBLE) then begin
  print,'Keyword_set = ','DOUBLE'
endif
print,'n_parameters = ',N_PARAMS()

if ARG_PRESENT(arr) EQ 0 then begin
  RETURN,!VALUES.f_nan
endif

sum1 = total(arr)
no1 = n_elements(arr)
avg1 = float(sum1)/float(no1)
return,avg1
end
```
```
IDL> a = randomn(seed,100)
IDL> avg_W17 = mean_W17_fun2(a)
n_parameters =            1
IDL> print,avg_W17
    0.0274344
```
### :star:idl1091_w17_1.pro【副程式程序(Procedure)，省略RETURN】
* **練習1**
試寫一主程式，產生一維亂數常態分布的浮點數(實數)向量(長度自定)，再分別以呼叫先前所建立的副程式函數和副程式程序，再分別顯示副程式函數和副程式程序的輸出結果。
* 此副程式程序和副程式還有程序在同一個目錄底下執行
```IDL=
PRO IDL_1091W17_CH15_main1
CD, 'H:\IDL_1091\class_IDL_781035\W15_IDL'
a = randomn(seed,100)
print,max(a),min(a)
print,'mean=',mean(a),' , std=',stddev(a)


;執行副程式 : mean_fun_1
avg_1 = mean_fun_1(a)
print,'avg_1=',avg_1

;呼叫程序 : mean_p_1
mean_p_1,a,avg_2
print,'avg_2=',avg_2
CD, 'H:\IDL_1091\class_IDL_781035\W17_IDL'
end
```
編譯(Ctrl+F8)完成後，在控制台直接打 : IDL> IDL_1091W17_CH15_main1
```
IDL> .compile -v 'H:\IDL_1091\class_IDL_781035\W17_IDL\idl1091_w17_1.pro'
% Compiled module: IDL_1091W17_CH15_MAIN1.

IDL> IDL_1091W17_CH15_main1
      2.42505     -2.73620
mean=   -0.0176255 , std=      1.02858
avg_1=   -0.0176255
avg_2=   -0.0176255
```
### :star:idl1091_w17_2.pro
* [CALL_FUNCTION](https://) : 以字串呼叫函數
* [CALL_PROCEDURE](https://) : 以字串呼叫程序
* [EXECUTE](https://) : 執行指令字串
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W15_IDL'

a1 = [5,8,11,3]

;以字串呼叫函數
t1 = 'mean_fun_1'
avg1 = CALL_FUNCTION(t1,a1)
print,'avg1=',avg1

;以字串呼叫程序
t2 = 'mean_p_1'
CALL_PROCEDURE,t2,a1,avg2,total_2
print,'avg2=',avg2,'   total_2=',total_2

;執行指令字串
t3 = 'mean_p_1,a1,avg3,total_3'
g = EXECUTE(t3)
print,'avg3=',avg3,'   total_3=',total_3
print,'g=',g
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
end
```
```
IDL> .go
% Compiled module: $MAIN$.
% Compiled module: MEAN_FUN_1.
avg1=      6.75000
% Compiled module: MEAN_P_1.
avg2=      6.75000   total_2=      27.0000
avg3=      6.75000   total_3=      27.0000
g=       1
```
### :star:idl1091_w17_3.pro【批次檔(Batch File)】
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
a = [5,8,7,3,6]
.compile MEAN_W17_FUN2

b1 = mean_W17_fun2(a)
print,'b1',b1

print,'====================='

b2 = mean_W17_fun2(a,/DOUBLE)
print,'b2',b2

print,'====================='

b3 = mean_W17_fun2(a)
print,'b3',b3

print,'====================='

b4 = mean_W17_fun2()
print,'b4',b4

help
```
在控制台直接打 : IDL> @ idl1091_w17_3.pro，執行批次檔
```
IDL> @ idl1091_w17_3.pro
% Compiled module: MEAN_W17_FUN2.
n_parameters =            1
b1      5.80000
=====================
Keyword_set = DOUBLE
n_parameters =            1
b2      5.80000
=====================
n_parameters =            1
b3      5.80000
=====================
n_parameters =            0
b4          NaN
% At $MAIN$          
A               INT       = Array[5]
B1              FLOAT     =       5.80000
B2              FLOAT     =       5.80000
B3              FLOAT     =       5.80000
B4              FLOAT     =           NaN
Compiled Procedures:
    $MAIN$

Compiled Functions:
  MEAN_W17_FUN2
```
### :star:idl1091_w17_4.pro
; 下載tronclass資料夾:Ch16
; https://tronclass.ntou.edu.tw/course/77606/learning-activity#/252496
[OPENR](https://) : 開啟現有的檔案，只允許讀取
![](https://i.imgur.com/pqlb0zY.png)
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'

OPENR,1,'ascii.txt'
;檔案打開後指標位於檔案開頭

b1 = EOF(1) ; END of FILE (回傳:指標是否在檔案末端)
print,'b1=',b1
CLOSE,1

b2 = FILE_SEARCH('ascii.txt') ;回傳:檔案是否存在
print,'b2 = ',b2

b3 = FILE_SEARCH('no_this_file.txt') ;回傳:檔案是否存在
print,'b3 = ',b3

b4 = FILE_TEST('no_this_file.txt') ;回傳:檔案是否存在
print,'b4 = ',b4
```
```
b1=       0
b2 =  ascii.txt
b3 = 
b4 =            0
```
[OPENW](https://) : 開啟新的檔案，如果檔案名稱已經存在，舊內容會被覆蓋。
```IDL=19
OPENW,2,'write_ascii.txt'
;檔案打開後指標位於檔案開頭

CLOSE,2
b5 = FILE_TEST('write_ascii.txt') ;回傳:檔案是否存在
print,'b5 = ',b5
```
```
b5 =            1
```
```IDL=25
OPENR,unit1,'ascii.txt',/GET_LUN
;檔案打開後指標位於檔案開頭
;/GET_LUN 讓系統自動指定識別碼(從100開始)
print,'unit1=',unit1
```
```
unit1=         100
```
```IDL=29
OPENR,3,'write_ascii.txt'
;檔案打開後指標位於檔案開頭

b6 = EOF(3) ; END of FILE (回傳:指標是否在檔案末端)
print,'b6=',b6
CLOSE,3
end
```
```
b6=       1
```
### :star:idl1091_w17_5.pro
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
a = 1
print,'a=',a
READ,a
print,'1...a=',a
help,a


READ,b1,b2,PROMPT='ENTER 2 Numbers>'
help,b1,b2
end
```
在控制台輸入數字到變數
```
% Compiled module: $MAIN$.
a=       1
: 5
1...a=       5
A               INT       =        5
ENTER 2 Numbers>8,9
B1              FLOAT     =       8.00000
B2              FLOAT     =       9.00000
```
### :star:idl1091_w17_6.pro
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
a = [1,3,5,7]
b = [2.2,4.4,6.6,9.9]
OPENW,3,'ascii_data_1.dat'

;printf : 寫入格式化的資料到檔案'ascii_data_1.dat'內
printf,3,a,FORMAT = '(I3,I3,I3,I3)'
printf,3,b,FORMAT = '(F5.1,F5.1,F5.1,F5.1)'
CLOSE,3
end 
```
![](https://i.imgur.com/XbktG7P.png)
```
IDL> .go
% Compiled module: $MAIN$.
```
### :star:idl1091_w17_7.pro
[READF]() : 讀取格式化的檔案
![](https://i.imgur.com/CvFO050.png)

```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'

OPENR,5,'ascii_data_1.dat'
r1 = EOF(5)
print,'r1',r1

;讀取格式化的檔案
READF,5,a1,a2,a3
print,a1,a2,a3,FORMAT='("a1=",I3,", a2=",I3,", a3=",I3)'
```
```
r1       0
a1=  1, a2=  3, a3=  5
```
```IDL=11
r2 = EOF(5)
print,'r2',r2
; 指標在此時已經跳到下一列

READF,5,b1,b2,b3,b4
fmt = '("b1=",F5.1,", b2=",F5.1,", b3=",F5.1,", b4=",F5.1)'
print,b1,b2,b3,b4,FORMAT=fmt
```
```
r2       0
b1=  2.2, b2=  4.4, b3=  6.6, b4=  9.9
```
```IDL=18
r3 = EOF(5)
print,'r3',r3
; 指標在此時又跳到下一列(到達檔案末端)

CLOSE,5
end 
```
```
r3       1
```
### :star:idl1091_w17_8.pro
![](https://i.imgur.com/lekggVF.png)
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
a = indgen(4,3)
help,a

OPENW,3,'ascii_array_1.dat' ;(指標位於檔案最左上角)
fmt = '(I3,I3,I3,I3)'
for i = 0,2 do begin
  printf,3,a(*,i),FORMAT=fmt ;(指標跳到下一列)
endfor

CLOSE,3
print,a
end 
```
```
A               INT       = Array[4, 3]
       0       1       2       3
       4       5       6       7
       8       9      10      11
```
### :star:idl1091_w17_9.pro
![](https://i.imgur.com/SqquRNr.png)
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'

OPENR,5,'ascii_array_1.dat' ;(指標位於檔案最左上角)

readf,5,b1,b2,b3
fmt = '(I3,I3,I3)'
print,b1,b2,b3,FORMAT = fmt
```
```
  0  1  2
```
```IDL=9
readf,5,c1,c2,c3,c4
fmt2 = '(4I3)'
print,c1,c2,c3,c4,FORMAT=fmt2
```
```
  4  5  6  7
```
```IDL=12
d1 = intarr(4)
readf,5,d1 ; 一次讀取4個資料
print,d1,FORMAT=fmt2
```
```
  8  9 10 11
```
```IDL=15
CLOSE,5

openr,6,'ascii_array_1.dat' ;(指標位於檔案最左上角)
e1 = intarr(4,3)
e2 = intarr(4)
fmt3 = '("i = ",I2,", ",4I3)'
for i = 0,2 do begin
  readf,6,e2 ; 一次讀取4個資料
  e1(*,i) = e2
  print,i,e1(*,i),FORMAT=fmt3
endfor
CLOSE,6
help
end 
```
```
i =  0,   0  1  2  3
i =  1,   4  5  6  7
i =  2,   8  9 10 11
B1              FLOAT     =       0.00000
B2              FLOAT     =       1.00000
B3              FLOAT     =       2.00000
C1              FLOAT     =       4.00000
C2              FLOAT     =       5.00000
C3              FLOAT     =       6.00000
C4              FLOAT     =       7.00000
D1              INT       = Array[4]
E1              INT       = Array[4, 3]
E2              INT       = Array[4]
FMT             STRING    = '(I3,I3,I3)'
FMT2            STRING    = '(4I3)'
FMT3            STRING    = '("i = ",I2,", ",4I3)'
I               INT       =        3
```
### :star:idl1091_w17_10.pro
讀資料 : 'KL_Tide_1.txt'
![](https://i.imgur.com/Hot9lSj.png)
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
aa = 0L
bb = ""
cc = 0L
dd = ""
nrows = 129
station = lonarr(nrows)
datehour = strarr(nrows)
height = lonarr(nrows)
qc = strarr(nrows)
OPENR,3,'KL_Tide_1.txt'
dummy = ""
for i=1,12 do begin
  readf,3,dummy
  print,'i=',i,dummy
endfor
```
```
i=       1基隆逐時潮位觀測資料
i=       2位置：25°09'18"N 121°45'08"E； 基隆港西33號碼頭
i=       3儀器型式：Aquatrak 4100 series 超音波式
i=       4潮高基準相對臺灣高程基準(TWVD2001):+0.000cm
i=       5資料來源：氣象局              
i=       6yyyymmddhh：西元年月日時
i=       7height：潮高
i=       8潮高單位：公厘。
i=       9時間不連續，表示缺觀測資料。
i=      10時間：民國103年1月－民國103年12月
i=      11**************************
i=      12*st    yyyymmddhh height
```
```IDL=18
count = 0
while (NOT EOF(3)) do begin
  readf,3,aa,bb,cc,dd,FORMAT='(I4,3x,A10,2x,I4,1x,A1)'
  station(count) = aa
  datehour(count) = bb
  height(count) = cc
  qc(count) = dd
  count = count+1
endwhile
print,'count=',count
```
```
count=     129
```
```IDL=28
CLOSE,3
year = fix(strmid(datehour,0,4))
month = fix(strmid(datehour,4,2))
day = fix(strmid(datehour,6,2))
hour = fix(strmid(datehour,8,2))

time1 = julday(month,day,year,hour,0,0) ; 月日年時分秒
void1 = label_date(date_format = '%N/%D:%H')
plot,time1,height,xstyle=1,xtickformat='label_date'
help
end 
```
```
% Compiled module: JULDAY.
% Compiled module: LABEL_DATE.
% At $MAIN$             38 H:\IDL_1091\class_IDL_781035\W17_IDL\idl1091_w17_10.pro
AA              LONG      =         1516
BB              STRING    = '2014010622'
CC              LONG      =         -179
COUNT           INT       =      129
DATEHOUR        STRING    = Array[129]
DAY             INT       = Array[129]
DD              STRING    = 'Q'
DUMMY           STRING    = '*st    yyyymmddhh height'
HEIGHT          LONG      = Array[129]
HOUR            INT       = Array[129]
I               INT       =       13
MONTH           INT       = Array[129]
NROWS           INT       =      129
QC              STRING    = Array[129]
STATION         LONG      = Array[129]
TIME1           DOUBLE    = Array[129]
VOID1           LONG      =            0
YEAR            INT       = Array[129]
Compiled Procedures:
    $MAIN$

Compiled Functions:
  JULDAY      LABEL_DATE
```
![](https://i.imgur.com/Z2tQF4B.png)

### :star:idl1091_w17_11.pro
```IDL=
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
subdir = ['examples','data']
file_1 = FILEPATH('worldelv.dat',SUBDIRECTOR = subdir)
OPENR,2,file_1
readu,2,image_1
CLOSE,2

help,image_1 ; 可以看到格式會錯誤
```
```
IMAGE_1         FLOAT     =      -97.3804
```
```IDL=9
; 需要預先知道資料格式(360*360)
image_2 = bytarr(360,360)
print,'max(image_2) = ',max(image_2)
```
```
max(image_2) =    0
```
```IDL=12
OPENR,3,file_1
READU,3,image_2
close,3
help,image_2
```
```
IMAGE_2         BYTE      = Array[360, 360]
```
```IDL=16
!P.background = 255
!P.color = 0
device,decomposed = 0

tv,image_2
```
![](https://i.imgur.com/CF1V4NQ.png)
```IDL=21
loadct,0
tv,image_2
```
```
% LOADCT: Loading table B-W LINEAR
```
![](https://i.imgur.com/BswIQ9q.png)
```IDL=23
loadct,13
tv,image_2
```
```
% LOADCT: Loading table RAINBOW
```
![](https://i.imgur.com/sRpW9Ef.png)
```IDL=25
CD,'H:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
openw,5,'worldelev_2.dat'
writeu,5,image_2
close,5

CD,'H:\IDL_1091\class_IDL_781035\W17_IDL'
help
end 
```
開啟新檔 : worldelev_2.dat
```
FILE_1          STRING    = 'C:\Program Files\Harris\IDL88\examples\data\worldelv.dat'
IMAGE_1         FLOAT     =      -97.3804
IMAGE_2         BYTE      = Array[360, 360]
SUBDIR          STRING    = Array[2]
```
## W18 Final Exam
### IDL_00781035final_P01.pro
```IDL=
;1
CD,'E:\IDL_1091'
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
P = [3,0,1,2,3,0,2,3]
D = [P[1:3],P[1]]
PLOTS,x[D],Y[D],/T3D
D = [P[5:7],P[5]]
PLOTS,x[D],Y[D],/T3D
image_w18 = polyshade(V,P,/T3D,POLY_SHADES=[100,200])
TV,image_w18
STR = STRING(INDGEN(4), '(I1)')
xyouts,x,y,STR,charsize = 2
write_png,'IDL_1091_00781035_Final_P01.png',tvrd()

help
end
```
![](https://i.imgur.com/K3Erw4Z.png)
```

```
### IDL_00781035final_P02.pro
```IDL=
CD,'E:\IDL_1091'
;window,xsize=1024,ysize=512
!P.BACKGROUND=0
!P.COLOR=0
DEVICE,DECOMPOSED=0
window,1,xsize=250,ysize=400
PLOT,[0,1],[0,1],/NODATA,XSTYLE = 4,ystyle = 4
scale3,xrange=[-2,2],yrange=[-2,2],zrange=[-2,2]

image = read_image('IDL_1091_Final_P02.jpg')
image_size = SIZE(image,/DIMENSIONS)
image_xsize = image_size[0]
image_ysize = image_size[1]
image_zsize = image_size[2]
image_r = reform(image,1,image_size[0]*image_size[1]*image_size[2])
redCh = REFORM(image(0,*,*))
greenCh = REFORM(image(1,*,*))
blueCh = REFORM(image(2,*,*))

TV,image,true = 1,0,200


image_red = transpose(redCh)
image_green = transpose(greenCh)
image_blue = transpose(blueCh)
image_rotate = fltarr(3,image_zsize,image_ysize)
image_rotate[0,*,*] = image_red
image_rotate[1,*,*] = image_green
image_rotate[2,*,*] = image_blue
TV,image_rotate,true = 1,0,100

write_png,'IDL_1091_00781035_Final_P02.png',tvrd()


help
end
```
![](https://i.imgur.com/oGqHILZ.png)
```

```
### IDL_00781035final_P03.pro
IDL_1091_Final_P03.txt
![](https://i.imgur.com/B27zjXp.png)
```IDL=
;3
CD,'E:\IDL_1091'
aa = ""
bb = ""
cc = ""
dd = ""
ee = 0.0
ff = 0.0
gg = 0.0
hh = 0.0
ii = 0.0
jj = 0.0
kk = 0.0
ll = 0.0
nrows = 168
dateYear = strarr(nrows)
dateMonth = strarr(nrows)
dateDay = strarr(nrows)
dateHour = strarr(nrows)
SeaPres = fltarr(nrows)
Ta = fltarr(nrows)
Td = fltarr(nrows)
RH = fltarr(nrows)
WS = fltarr(nrows)
WD = fltarr(nrows)
Precp = fltarr(nrows)
PrecpHour  = fltarr(nrows)
OPENR,3,'IDL_1091_Final_P03.txt'
dummy = ""
for i=1,2 do begin
  readf,3,dummy
  print,'i=',i,dummy
endfor

count = 0
while (NOT EOF(3)) do begin
  readf,3,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,$
    FORMAT='(I5,I3,I3,I3,F8.1,F8.1,F8.1,F8.1,F8.1,F8.1,F8.1,F8.1)'
  dateYear(count) = aa
  dateMonth(count) = bb
  dateDay(count) = cc
  dateHour(count) = dd
  SeaPres(count) = ee
  Ta(count) = ff
  Td(count) = gg
  RH(count) = hh
  WS(count) = ii
  WD(count) = jj
  Precp(count) = kk
  PrecpHour(count)  = ll
  count = count+1
endwhile
print,'count=',count

close,3
date = uniq(DATEDAY)
avg_WS_all = fltarr(7,1)
avg_WD_all = fltarr(7,1)
sum_Precp_all = fltarr(7,1)
sum_PrecpHour_all = fltarr(7,1)
for i=1,7 do begin
  daily = WHERE(DATEDAY EQ i)
  mean_final_p03,WS(daily),avg_WS
  mean_final_p03,WD(daily),avg_WD
  mean_final_p03,Precp(daily),sum_Precp
  mean_final_p03,PrecpHour(daily),sum_PrecpHour
  avg_WS_all(i-1,0) = avg_WS
  avg_WD_all(i-1,0) = avg_WD
  sum_Precp_all(i-1,0) = sum_Precp
  sum_PrecpHour_all(i-1,0) = sum_PrecpHour
endfor

mean_final_p03,WS,avg_WS
mean_final_p03,WD,avg_WD
mean_final_p03,Precp,sum_Precp
mean_final_p03,PrecpHour,sum_PrecpHour


OPENW,4,'IDL_1091_00781035_FINAL_P03.OUT'
printf,4,'date','avg_WS','avg_WD','sum_Precp','sum_PrecpHour',FORMAT = '(A4,A8,A8,A12,A17)'
for i=0,6 do begin
  printf,4,i+1,avg_WS_all(i,0),avg_WD_all(i,0),sum_Precp_all(i,0),sum_PrecpHour_all(i,0),FORMAT = '(I2,F8.1,F8.1,F8.1,F13.1)'
endfor
CLOSE,4
D_T = Ta-Td
time1 = julday(DATEMONTH,DATEDAY,DATEYEAR,DATEHOUR,0,0) ; 月日年時分秒
void1 = label_date(date_format = '%N/%D:%H')



plot_margin = [0.15,0.4,0.15,0.15] ;左 右 上 下 邊界的邊緣距離
pu = plot(time1,SEAPRES,'b',layout = [1,2,1],thick = 2,ytitle = 'Pressure [mb]',$
  axis_style = 1,margin = plot_margin,xtickformat='label_date',$
  xrange = [time1(0),max(time1)],yrange = [1010,1030],xtitle = 'date:hour',title = 'IDL1091FINAL00781035')
p1 = plot(time1,RH,'g',layout = [1,2,2],/current,thick = 2,ytitle = 'RH',$
  axis_style = 1,margin = plot_margin,xtickformat='label_date',name = 'RH',$
  xrange = [time1(0),max(time1)],yrange = [20,100],xtitle = 'date:hour')
p2 = plot(time1,D_T,'r',layout = [1,2,2],thick = 4,/current,axis_style = 0,margin = plot_margin,$
  xrange = [time1(0),max(time1)],yrange = [0,10],name = 'T_D',xtickformat='label_date')
a_P2 = axis('y',target = p2,location= [max(p1.xrange),0,0],$
  textpos=1,tickdir = 1,title = 'T_D',thick = 1,color= 'k')
leg1 = legend(target=[p1,p2],/DATA,/AUTO_TEXT_COLOR,position = [time1(105),80])
help
pu.save,'IDL_1091_00781035_Final_P03.png'
end
```
![](https://i.imgur.com/BFShM53.png)
![](https://i.imgur.com/PbYlark.png)
```

```
### mean_final_p03.pro
```IDL=
PRO mean_final_p03,arr,avg,sum

  sum = total(arr,/NAN)
  no = n_elements(arr)
  avg = sum/float(no)

  RETURN

end
```
```


```