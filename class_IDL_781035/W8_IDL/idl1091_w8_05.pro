; Chapter6 Graphics
;CD,'H:\IDL_1091\class_IDL_781035\W8_IDL'
CD,'E:\IDL_1091\class_IDL_781035\W8_IDL'
window,xsize = 416,ysize = 262
!P.BACKGROUND = 255
!P.COLOR = 0
DEVICE,DECOMPOSED = 0
z = dist(200,200)
contour,z,NLEVELS=5,/isotropic,C_LABELS = [1,0,1,0,1]
write_png,'IDL_1091_W8class_05.png',tvrd()
window,2
CL = replicate(1,5)
print,CL
contour,z,NLEVELS = 5,C_LABELS = CL,C_CHARSIZE = 1.5,$
  C_CHARTHICK = 3,C_LINESTYLE = indgen(5)+1,C_thick = 2,C_COLORS = [0,100,180]
write_png,'IDL_1091_W8class_05-2.png',tvrd()

window,3
contour,z,NLEVELS = 5,C_LABELS = CL,C_CHARSIZE = 1.5,$
  C_CHARTHICK = 3,C_LINESTYLE = indgen(5)+1,C_thick = 2,C_COLORS = [0,100,180], $
  C_ANNOTATION = ['A','B','C','D']
  
write_png,'IDL_1091_W8class_05-3.png',tvrd()

window,3
contour,z,NLEVELS = 5,/cell_fill
;contour,z,NLEVELS = 5,/fill,C_SPACING = 0.5
write_png,'IDL_1091_W8class_05-4.png',tvrd()
window,4
;contour,z,NLEVELS = 5,/cell_fill
contour,z,NLEVELS = 5,/fill,C_SPACING = 0.1,C_ORIENTATION = indgen(5)*72
contour,z,NLEVELS = 5,/OVERPLOT,C_thick = [2,1,2,1,2]
;contour,z,NLEVELS = 5,PATH_XY = xy
write_png,'IDL_1091_W8class_05-5.png',tvrd()


window,5
contour,z,NLEVELS = 5,/fill,C_SPACING = 0.1,C_ORIENTATION = indgen(5)*72
contour,z,NLEVELS = 5,/OVERPLOT,C_thick = [2,1,2,1,2]
contour,z,NLEVELS = 5,PATH_XY = xy,path_info = info,/path_data_coords,/path_double
help,xy
plots,xy
print,xy(*,1:4)
write_png,'IDL_1091_W8class_05-6.png',tvrd()
end