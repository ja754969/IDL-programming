;計算日出時間
phi=10.0 & delta = 23.0
;phi表示緯度，delta表示太陽赤緯
;當太陽赤緯=0時，日出時間為06:00
z=-(sin(phi*!dtor)/cos(phi*!dtor))*$
  (sin(delta*!dtor)/cos(delta*!dtor))
h=acos(z) ; h為時角(徑度)
h_deg = h*!radeg ; 將時角轉換為角度
help,z,h,h_deg
tansit_dist=h_deg/15.0
help,tansit_dist
sunrise_time = 12.0-tansit_dist
sunrise_time_hour =  fix(sunrise_time)
sunrise_time_min = (sunrise_time - fix(sunrise_time))*60
help,sunrise_time,sunrise_time_hour,sunrise_time_min
print,'Sunrise time is ',string(fix(sunrise_time)),$
  ':',string(round(sunrise_time_min))
end