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