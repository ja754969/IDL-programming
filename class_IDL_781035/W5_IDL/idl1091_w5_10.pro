; Chapter4 : Matrix
CD, 'E:\IDL_1091\class_IDL_781035\W5_IDL'
; (column,row)
x0 = bytarr(3,2)
help,x0 & print,x0
x1 = fltarr(2,3)
help,x1 & print,x1
x2 = bindgen(3,2) ;以下標作為內容的matrix
help,x2 & print,x2 ;display the sequential method of the matrix
x3 = findgen(2,3)
help,x3 & print,x3
y1 = randomu(seed,2,3)
help,y1 & print,y1
y2 = randomn(seed,2,3)
help,y2 & print,y2
z1 = replicate(5,3,2)
help,z1 & print,z1
z2 = make_array(2,3,value=2D)
;D代表倍精度
help,z2 & print,z2
end