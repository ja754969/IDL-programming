PRO IDL_1091W15_ARRAY_INDICES_1
a = indgen(3,2)
print,'a=',a

b1 = WHERE(a GE 3)
print,'b1=',b1

c = ARRAY_indices(a,b1)
print,'c=',c

print,'a(c(0),c(1))=',a(c(0),c(1))
print,'a(c(2),c(3))=',a(c(2),c(3))
help,c

print,'a(c(0,2),c(1,2))=',a(c(0,2),c(1,2))
end