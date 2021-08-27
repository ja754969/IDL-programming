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
p2.save,'W11-2.png'
end