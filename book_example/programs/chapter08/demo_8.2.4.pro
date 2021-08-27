title = 'Figure 8.2.4'
xsize=216 & ysize=216
@ ../widget

RESTORE
!X.S = xs
!Y.S = ys
!Z.S = zs
!P.T = tm
T3D, SCALE=[0.5, 0.5, 0.5]
T3D, ROTATE=[0, 30, 0]
T3D, TRANSLATE=[0.2, 0, 0]
T3D, /RESET

PLOTS, x, y, z, /T3D

END
