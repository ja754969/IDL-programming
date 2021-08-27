CD,'E:\IDL_1091\class_IDL_781035\W17_IDL'

CD,'E:\IDL_1091\class_IDL_781035\W15_IDL'

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
print,'avg3=',avg3,'   total_3',total_3
print,'g=',g
end