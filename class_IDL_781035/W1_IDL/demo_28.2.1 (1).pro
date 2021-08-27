title = 'Figure 28.2.1'
xsize=216 & ysize=162
@ widget

img = REPLICATE(0B, 288, 216)
x = LINDGEN(50*30) mod 50 + 40
y = LINDGEN(50*30) / 50 + 40
img[x, y] = 150B

x2 = LINDGEN(50*30) mod 50 + 90
y2 = LINDGEN(50*30) / 50 + 90
img[x2, y2] = 255B
TV, img

END
