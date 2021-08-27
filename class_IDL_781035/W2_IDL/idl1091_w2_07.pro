x1=30 & x2=60
y1=sin(!pi/3.0)
help,y1
y2=cos(!pi/3.0)
help,y2
z1 = asin(y1)
help,z1
z2 = acos(y2)
help,z2
print,'z1=',z1*!radeg ;(!pi/3.0)*(180/!pi) radius convert to degree 
print,'z2=',z2*!radeg
y3=sin(x1) & y4=sin(x1*!dtor) ;degree convert to radius
help,y3,y4
z3=asin(y3) & z4=asin(y4)
help,z3,z4
print,'z3=',z3,z3*!radeg
print,'z4=',z4,z4*!radeg

end