title = 'Figure 28.3.1'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('rbcells.jpg', SUBDIRECTORY=sub)
READ_JPEG, file, image
img = image[0:215, 0:161]
TV, img

x = [100, 140, 140, 100, 100]
y = [100, 100, 140, 140, 100]
POLYFILL, x, y, /DEVICE
PLOTS, x, y, /DEVICE, COLOR=255

END
