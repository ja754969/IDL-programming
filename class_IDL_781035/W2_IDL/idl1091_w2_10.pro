CD, 'E:\IDL_1091\class_IDL_781035\W2_IDL'
x=3 & y=4
z=complex(x,y)
help,z
z1=conj(z)
help,z1
z3 = real_part(z1)
z4 = imaginary(z1)
help,z3,z4
z5=abs(z1)
help,z5
z6=sqrt(z3*z3 + z4*z4)
help,z6

y1=2.3 & y2=4.6
z7 = round(y1) & z8=round(y2)
help,z7,z8
print,round(-y1),round(-y2)
z9 = floor(y1) & z10=floor(y2)
help,z9,z10
print,floor(-y1),floor(-y2)
z11 = ceil(y1) & z12 = ceil(y2)
help,z11,z12
print,ceil(-y1),ceil(-y2)
z13=factorial(3)
help,z13
end