; Chapter3 : Vector
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
x = [7,3,8,6,3,9,7]
b = sort(x) ; 輸出結果為下標位置
;輸出格式設定
print,'x=',format='(a4,7I3)',x
; 輸出格式為3個整數(Integer)空格重複7次
print,'b=',format='(a4,7I3)',b
print,x[b[3]],x[b[6]]
;找出b的下標位置元素值，再以此為x的下標值輸出數值
y = x[b]
print,'y=',y,format='(a4,7I3)' ; display the result of sorted vector x.
y2 = reverse(y)
print,'y2=',y2,format='(a4,7I3)' ;display the reverse result of sorted vector x.
b2_index = uniq(y2)
print,'b2_index=',b2_index,format='(a10,7I3)' 
;display the reverse unique result of sorted vector x.
n_b2_index = n_elements(b2_index)
n_y2 = n_elements(y2)
print,n_y2,n_b2_index,n_y2-n_b2_index
c = y2(b2)
print,'c = ',c,format = '(a4,7I3)'
end