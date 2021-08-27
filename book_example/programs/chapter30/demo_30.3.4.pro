title = 'Figure 30.3.4'
xsize=216 & ysize=192

path = FILEPATH('worldelv.dat', SUBDIRECTORY=['examples', 'data'])
file = READ_BINARY(path, DATA_DIMS=[360, 360])

oModel = OBJ_NEW('IDLgrModel')
oImage = OBJ_NEW('IDLgrImage', file)
oPalette = OBJ_NEW('IDLgrPalette')
oPalette -> LOADCT, 33
oPalette -> SetRGB, 255, 255, 255, 255
oImage -> SetProperty, PALETTE=oPalette

grid = FINDGEN(360)/359.
texure_coordinates = FLTARR(2, 360, 360)
texure_coordinates[0, *, *] = grid # REPLICATE(1., 360)
texure_coordinates[1, *, *] = REPLICATE(1., 360) # grid

MESH_OBJ, 3, verts, conn, REPLICATE(2, 360, 360), P4=2.5
oPolygon = OBJ_NEW('IDLgrPolygon', DATA=verts, POLYGONS=conn, $
    TEXTURE_COORD = texure_coordinates, TEXTURE_MAP = oImage, $
    COLOR=[255, 255, 255], /TEXTURE_INTERP, SHADING=1)

oModel -> ROTATE, [1, 0, 0], 45
oModel -> ADD, oPolygon

XOBJVIEW, oModel, XSIZE=xsize, YSIZE=ysize, TITLE=title
END
