; 曾鈺皓 00781035 IDL_作業3
CD,'H:\IDL_1091\HW_IDL'
;CD,'C:\Users\user\Google 雲端硬碟\海大1091\IDL程式語言_遙測資料處理_1091\HW_IDL'
;CD, 'E:\IDL_1091\class_IDL_781035\W6_IDL'
; 1.
print,'Answer1 : '
phi = [0.0,20.0,40.0,60.0,80.0]
delta = [0,23.5,0,-23.5] ;(春 夏至 秋 冬)
;phi表示緯度，delta表示太陽赤緯
;當太陽赤緯=0時，日出時間為06:00，日落時間為18:00

;在春分各緯度從日出到日落的日照時間
z_V = reform(-(sin(phi*!dtor)/cos(phi*!dtor))*$
  (sin(delta[0]*!dtor)/cos(delta[0]*!dtor)),1,5)
;在夏至各緯度從日出到日落的日照時間
z_S = reform(-(sin(phi*!dtor)/cos(phi*!dtor))*$
  (sin(delta[1]*!dtor)/cos(delta[1]*!dtor)),1,5)
;在秋分各緯度從日出到日落的日照時間
z_A = reform(-(sin(phi*!dtor)/cos(phi*!dtor))*$
  (sin(delta[2]*!dtor)/cos(delta[2]*!dtor)),1,5)
;在冬至各緯度從日出到日落的日照時間
z_W = reform(-(sin(phi*!dtor)/cos(phi*!dtor))*$
  (sin(delta[3]*!dtor)/cos(delta[3]*!dtor)),1,5)
help,z_V
;在春分、夏至、秋分、冬至這四天各緯度從日出到日落的日照時間
z = [z_V,z_S,z_A,z_W]
; h為時角(徑度)
h = acos(z) 
; 將時角由徑度轉換為角度
h_deg = h*!radeg 
help,z,h,h_deg
;print,z
; 日出或日落距離觀測點中天(12:00)的時間差
; 地球自轉一小時相當於15度
tansit_dist = float(h_deg)/15.0
help,tansit_dist
;print,tansit_dist
; 日出時間 = 正午 - 日出或或日落距離中天的時間差
sunrise_time = 12.0-tansit_dist
; 日落時間 = 正午 + 日出或或日落距離中天的時間差
sunset_time = 12.0+tansit_dist
; 日出時間(小時)
sunrise_time_hour =  fix(sunrise_time)
; 日落時間(小時)
sunset_time_hour =  fix(sunset_time)
; 日出時間(分)
sunrise_time_min = (sunrise_time - fix(sunrise_time))*60
; 日落時間(小時)
sunset_time_min = (sunset_time - fix(sunset_time))*60
help,sunrise_time,sunrise_time_hour,sunrise_time_min
help,sunset_time,sunset_time_hour,sunset_time_min
; 日照時間 = 日出時間 - 日出時間
insolation_duration = sunset_time-sunrise_time
insolation = string(insolation_duration)

help,insolation_duration
;print,insolation_duration

d = ['|phi\delta|',$
  '   |春分|','       |夏至|',$
  '       |秋分|','        |冬至|']
result1 = [[d],[reform(string(FIX(phi)),1,5),insolation]]
;print,d,format='(6I3)'
result1[2,5] = '     4 months' & result1[4,5] = '      0'
help,result1 & print,'(1) 在春分、夏至、秋分、冬至這四天各緯度從日出到日落的日照時間(hrs):'
print,result1
;,format='(2A2)'
;print,'result1[2,5]',result1[27]
;2. 
print,'Answer2 : '
;(A)
x1 = randomn(seed,4,3,2)
print,'x1 = ' & print,x1
x1_max = max(x1,ind_max)
print,'Maximun of x1 = ',x1_max
x1_max_pos = array_indices(x1,ind_max)
print,'3D Maximun position of x1 : ',x1_max_pos
x1_min = min(x1,ind_min)
print,'minimun of x1 = ',x1_min
x1_min_pos = array_indices(x1,ind_min)
print,'3D minimun position of x1 : ',x1_min_pos
;(B)
total_x1 = total(x1)
print,'The total of x1  = ',total_x1
median_x1= median(x1)
print,'The median of x1 = ',median_x1
;(C)
x1_R = reform(x1,8,3)
print,'The reform of x1 = ' & print,x1_R
;(D)
x2 = x1[*,*,0]
help,x2 & print,x2
x3 = x1[*,*,1]
help,x3 & print,x3

end