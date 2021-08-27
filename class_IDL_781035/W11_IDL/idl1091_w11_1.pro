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