PRO IDL_1091W15_where_1
a=[1,5,2,4,7]
b = WHERE(a GE 3,c)
print,'b=',b ;(a GE 3) 的位置
print,'c=',c ;(a GE 3) 的總數
print,'a(b)',a(b) ;(a GE 3)的值


d = where(a LE 3,g,COMPLEMENT=e,NCOMPLEMENT=f)
print,'d = ',d
print,'e = ',e
print,'f = ',f
print,'g = ',g
print,'a(b)',a(d) ;(a LE 3)的值
end



;在控制台直接打 : IDL> IDL_1091W15_where_1