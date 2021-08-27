PRO IDL_1091W15_CH15_main1
a = indgen(5)+1
print,max(a),min(a)
print,'mean=',mean(a),' std=',stddev(a)

;執行副程式 : mean_fun_1
avg_1 = mean_fun_1(a)
print,'avg_1=',avg_1

;呼叫程序 : mean_p_1
mean_p_1,a,avg_2
print,'avg_2',avg_2
end
