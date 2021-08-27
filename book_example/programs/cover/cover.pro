owindow=obj_new('idlgrwindow',dimensions=[520,520])

oscene=obj_new('idlgrscene')

oview=obj_new('idlgrview',viewplane_rect=[0,0,1,1],zclip=[3.5, -1.5])
oviewb=obj_new('idlgrview',location=[0.0,0.0], dimensions=[1.0,0.5],unit=3,color=[0,255,0])
oviewt=obj_new('idlgrview',location=[0.0,0.5], dimensions=[1.0,0.5],unit=3,color=[0,0,255])

omodel=obj_new('idlgrmodel')
omodeltext=obj_new('idlgrmodel')
omodelcube=obj_new('idlgrmodel')
omodelidl=obj_new('idlgrmodel')

xx=[0.03, 0.15, 0.20, 0.40, 0.20, 0.20, 0.80, 0.17, 0.16, 0.13, 0.00, 0.10, 0.10, 0.05]
yy=[0.80, 0.80, 0.70, 0.90, 0.60, 0.20, 0.00, 0.10, 0.02, 0.10, 0.05, 0.17, 0.65, 0.80]
vv=transpose([[xx],[yy]])
pp=[4,0,1,2,12,3,2,3,4,3,2,4,12,4,4,5,11,12,3,5,6,7,3,7,8,9,3,9,10,11,4,5,7,9,11]
opolygon=obj_new('idlgrpolygon',data=vv,polygons=pp,color=[165,42,42])

vvb=[[0.0, 0.0],[0.0, 1.0], [1.0, 1.0], [1.0, 0.0]]
ppb=[4,0,1,2,3]
opolygonb=obj_new('idlgrpolygon',data=vvb,polygons=ppb,color=[0,255,0])

vvt=[[0.0, 0.0],[0.0, 1.0], [1.0, 1.0], [1.0, 0.0]]
ppt=[4,0,1,2,3]
opolygont=obj_new('idlgrpolygon',data=vvt,polygons=ppt,color=[135,206,235])

vvg=[[0.0, 0.55],[0.0, 1.0], [0.460, 1.0], [0.460, 0.55]]
ppg=[4,0,1,2,3]
opolygong=obj_new('idlgrpolygon',data=vvg,polygons=ppg,color=[0,150,0])

cubel,ocubel,ay=135,ax=135
ocubel->scale,0.05,0.05,0.05
ocubel->translate,0.40,0.595,1.0
omodelcube->add,ocubel

cuber,ocuber,ay=-135,ax=-45
ocuber->scale,0.05,0.05,0.05
ocuber->translate,0.79,0.175,1.0
omodelcube->add,ocuber

xx5=[0.356,0.325]
yy5=[0.313,0.327]
opolyline5=obj_new('idlgrpolyline',xx5,yy5,thick=3)
omodelcube-> add,opolyline5

xx3=[0.38,0.360]
yy3=[0.32,0.36]
opolyline3=obj_new('idlgrpolyline',xx3,yy3,thick=3)
omodelcube-> add,opolyline3

xx1=[0.40,0.40]
yy1=[0.45,0.32]
opolyline=obj_new('idlgrpolyline',xx1,yy1,thick=3)
omodelcube-> add,opolyline

xx4=[0.42,0.440]
yy4=[0.32,0.36]
opolyline4=obj_new('idlgrpolyline',xx4,yy4,thick=3)
omodelcube-> add,opolyline4

rr=0.20
theta=findgen(75)+36.
xx2=rr*cos(theta*!dtor)+0.51
yy2=rr*sin(theta*!dtor)+0.125
opolyline2=obj_new('idlgrpolyline',xx2,yy2,thick=3)
omodelcube-> add,opolyline2

vvl=[[0.29, 0.19],[0.29, 0.302], [0.543, 0.302], [0.543, 0.19]]
ppl=[4,0,1,2,3]
opolygonl=obj_new('idlgrpolygon',data=vvl,polygons=ppl,color=[0,0,0])
omodelidl->add,opolygonl

cuber,ocubei,ay=0,ax=90
ocubei->scale,0.0373,0.0373,0.0373
ocubei->translate,0.25,0.2455,1.0
omodelidl->add,ocubei

otext=obj_new('idlgrtext','IDL',char_dimensions=[0.15,0.15],locations=[0.315,0.19,0.01],color=[255,255,255])
omodelidl->add,otext

otext2=obj_new('idlgrtext','What can IDL',char_dimensions=[0.065,0.065],locations=[0.56,0.90],color=[255,0,0])
omodeltext->add,otext2

otext3=obj_new('idlgrtext','do for you?',char_dimensions=[0.065,0.065],locations=[0.73,0.83],color=[255,0,0])
omodeltext->add,otext3

otext4=obj_new('idlgrtext','Turn',char_dimensions=[0.06,0.06],locations=[0.545,0.555],color=[0,0,255])
omodelcube->add,otext4

otext5=obj_new('idlgrtext','Chaos',char_dimensions=[0.06,0.06],locations=[0.585,0.495],color=[0,0,255])
omodelcube->add,otext5

otext6=obj_new('idlgrtext','Into',char_dimensions=[0.06,0.06],locations=[0.68,0.375],color=[0,0,255])
omodelcube->add,otext6

otext7=obj_new('idlgrtext','Order',char_dimensions=[0.06,0.06],locations=[0.71,0.315],color=[0,0,255])
omodelcube->add,otext7

omodeltext->translate,-0.10,0.01,0
omodel->add,omodeltext
omodelcube->add,omodelidl
omodelcube->translate,-0.16,0.00,0
omodelcube->scale,1.2,1.2,1.2
omodel->add,omodelcube
omodel->add,opolygonb

oview->add,omodel

oscene->add,oview

owindow->draw,oscene

oimage=owindow->read()
oimage->getproperty,data=image
image2=reverse(image,3)
write_tiff,'cover.tiff',image2


end
