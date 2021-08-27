title = 'Figure 17.2.4'
xsize = 216 & ysize = 162
@ ../widget

PLOT, [0, 1]
image = TVRD(0, 0)
image2 = TVRD(0, 0, 108, 108)
ERASE
HELP, image, image2
TV, image2
end

