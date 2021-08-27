; 讀資料 : 'KL_Tide_1.txt'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'
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