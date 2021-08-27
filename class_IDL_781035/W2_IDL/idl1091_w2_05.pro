x1=2.2 & x2=3.6
y1=byte(x1) & y2=byte(x2)
help,x1,y1
help,x2,y2
y3=fix(x1) & y4=fix(x2)
help,y3,y4
y5=LONG(x1) & y6=LONG(x2)
help,y5,y6
y7 = y5/y6
help,y7 ; 整數相除還是整數
y8=float(y5)/float(y6)
help,y8
y9=complex(x1)
help,y9
y10=string(x2)
help,y10
end