; 曾鈺皓 00781035 IDL_作業2
CD,'H:\IDL_1091\HW_IDL'
;CD,'C:\Users\user\Google 雲端硬碟\海大1091\IDL程式語言_遙測資料處理_1091\HW_IDL'
;CD, 'E:\IDL_1091\class_IDL_781035\W6_IDL'
; 1.
print,'Answer1 : '
phi = [0.0,10.0,20.0,30.0,40.0,50.0,60.0,70.0,80.0,90.0]
delta = 23.5 ;夏至
;phi表示緯度，delta表示太陽赤緯
;當太陽赤緯=0時，日出時間為06:00
z = -(sin(phi*!dtor)/cos(phi*!dtor))*$
  (sin(delta*!dtor)/cos(delta*!dtor))
h = acos(z) ; h為時角(徑度)
h_deg = h*!radeg ; 將時角轉換為角度
help,z,h,h_deg
tansit_dist=h_deg/15.0
help,tansit_dist
sunrise_time = 12.0-tansit_dist
sunset_time = 12.0+tansit_dist
sunrise_time_hour =  fix(sunrise_time)
sunset_time_hour =  fix(sunset_time)
sunrise_time_min = (sunrise_time - fix(sunrise_time))*60
sunset_time_min = (sunset_time - fix(sunset_time))*60
help,sunrise_time,sunrise_time_hour,sunrise_time_min
help,sunset_time,sunset_time_hour,sunset_time_min
;print,'Sunrise time is ',string(fix(sunrise_time)),':',string(round(sunrise_time_min))
;print,'Sunset time is ',string(fix(sunset_time)),':',string(round(sunset_time_min))
print,'Insolation duration at the latitude  0 degree is ',$
  string(sunset_time[0]-sunrise_time[0]),' hours'
print,'Insolation duration at the latitude 10 degree is ',$
  string(sunset_time[1]-sunrise_time[1]),' hours'
print,'Insolation duration at the latitude 20 degree is ',$
  string(sunset_time[2]-sunrise_time[2]),' hours'
print,'Insolation duration at the latitude 30 degree is ',$
  string(sunset_time[3]-sunrise_time[3]),' hours'
print,'Insolation duration at the latitude 40 degree is ',$
  string(sunset_time[4]-sunrise_time[4]),' hours'
print,'Insolation duration at the latitude 50 degree is ',$
  string(sunset_time[5]-sunrise_time[5]),' hours'
print,'Insolation duration at the latitude 60 degree is ',$
  string(sunset_time[6]-sunrise_time[6]),' hours'
print,'Insolation duration at the latitude 70 degree is ',$
  string(sunset_time[7]-sunrise_time[7]),' hours'
print,'Insolation duration at the latitude 80 degree is ',$
  string(sunset_time[8]-sunrise_time[8]),' hours'
print,'Insolation duration at the latitude 90 degree is ',$
  string(sunset_time[9]-sunrise_time[9]),' hours'
;2. E = PE + KE
print,'Answer2 : '
h = [1000.0,500.0,100.0,0.0] & m = 10.0 & g = 9.8
E = m*g*h[0]
PE = m*g*h
KE = E-PE
V = SQRT(2.0*KE/m)
print,'m=',m,', h=',h[0],', V=',V[0],', PE=',PE[0],', KE=',KE[0]
print,'m=',m,', h=',h[1],', V=',V[1],', PE=',PE[1],', KE=',KE[1]
print,'m=',m,', h=',h[2],', V=',V[2],', PE=',PE[2],', KE=',KE[2]
print,'m=',m,', h=',h[3],', V=',V[3],', PE=',PE[3],', KE=',KE[3]
end