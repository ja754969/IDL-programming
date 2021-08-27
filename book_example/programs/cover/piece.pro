pro piece,color,omodel

c=['Black', 'Red', 'Green', 'Blue', 'Yellow', 'Orange', 'White']
r=[0,200,  0,  0,200,255,255]
g=[0,  0,128,  0,200,120,255]
b=[0,  0,  0,255,  0,  0,255]

good=where(c eq color)
num=256
num2=num/16
image=replicate(0B,num,num)
image[num2,num2]=replicate(good,num-num2*2,num-num2*2)

omodel=obj_new('idlgrmodel')

opalette=obj_new('idlgrpalette')
opalette-> setproperty, red_values=r, green_values=g, blue_values=b
oimage=obj_new('idlgrimage', image)
oimage->setproperty, palette=opalette

nn=201
p=(findgen(nn)-(nn-1)/2)*0.005
mesh_obj,1,vv,cc,replicate(1,nn,nn),p1=p,p2=p
vector=findgen(nn)/(nn-1)
coord=fltarr(2,nn,nn)
coord[0,*,*]=vector#replicate(1.,nn)
coord[1,*,*]=replicate(1.,nn)#vector

opolygon=obj_new('idlgrpolygon',data=vv,polygons=cc, color=[255,255,255],$
  texture_coord=coord,texture_map=oimage)
omodel->add,opolygon

return
end
