; Chapter 6
;CD,'H:\IDL_1091\class_IDL_781035\W10_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W10_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
print,!p.multi
!p.multi[0]=0
!p.multi[1]=2
!p.multi[2]=1
print,!p.multi
window,1,xsize = 416,ysize = 262
plot,[0,1],xticks = 2,title='left',xmargin=[4,2]
plot,[1,0],xticks = 3,title='right'
print,!x.margin,!y.margin

window,2,xsize = 416,ysize = 262
!p.multi = [0,0,2,0,0]
print,!p.multi
plot,[0,1],xticks = 2,title='up'
plot,[1,0],xticks = 3,title='down'
print,!x.margin,!y.margin

window,3,xsize = 416,ysize = 262
!p.multi = [0,1,3,0,0]
print,!p.multi
plot,[0,1],xticks = 2,title='1'
plot,[1,0],xticks = 3,title='2'
plot,[3,1],title='3'
print,!x.margin,!y.margin

window,4,xsize = 416,ysize = 262
!p.multi = [0,2,2,0,0]
print,!p.multi
x = findgen(10)
y1 = x
plot,x,y1,title='1'
y2 = x^2
plot,x,y2,title='2'
y3 = exp(x)
plot,x,y3,title='3'
y4 = sin(x)
plot,x,y4,title='4'
print,!x.margin,!y.margin

window,5,xsize = 416,ysize = 262
!p.multi = [0,2,2,0,1]
print,!p.multi
x = findgen(10)
y1 = x
plot,x,y1,title='1'
y2 = x^2
plot,x,y2,title='2'
y3 = exp(x)
plot,x,y3,title='3'
y4 = sin(x)
plot,x,y4,title='4'
print,!x.margin,!y.margin
end