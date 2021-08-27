title = 'Figure 28.3.4'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('rbcells.jpg', SUBDIRECTORY=sub)
READ_JPEG, file, image
img = image[0:215, 0:161]
TV, img

x = [100, 140, 140, 100, 100]
y = [100, 100, 140, 140, 100]
p = POLYFILLV( x, y, 216, 162)

ix = p MOD 216
iy = p / 216
PLOTS, ix, iy, /DEVICE, COLOR=255

END
