title = 'Figure 28.2.4'
xsize=216 & ysize=162
@ ../widget

sub = ['examples', 'data']
file = FILEPATH('muscle.jpg', SUBDIRECTORY=sub)
READ_JPEG, file, image
img = image[436:651, 50:211]

x = LINDGEN(16*16) MOD 16 + 140
y = LINDGEN(16*16) / 16 + 80
roi = x + y * 216
nimg = img
nimg[roi] = 255B

nroi = REGION_GROW(img, roi)
nimg[nroi] = 255B
TV, nimg

END
