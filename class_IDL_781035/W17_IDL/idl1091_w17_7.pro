CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W17_IDL\Ch16'

OPENR,5,'ascii_data_1.dat'
r1 = EOF(5)
print,'r1',r1

;讀取格式化的檔案
READF,5,a1,a2,a3
print,a1,a2,a3,FORMAT='("a1=",I3,", a2=",I3,", a3=",I3)'
r2 = EOF(5)
print,'r2',r2
; 指標在此時已經跳到下一列

READF,5,b1,b2,b3,b4
fmt = '("b1=",F5.1,", b2=",F5.1,", b3=",F5.1,", b4=",F5.1)'
print,b1,b2,b3,b4,FORMAT=fmt
r3 = EOF(5)
print,'r3',r3
; 指標在此時又跳到下一列(到達檔案末端)

CLOSE,5
end 