title = 'Figure 8.3.10'
xsize=216 & ysize=216
@ ../widget

x = RANDOMU(seed, 100)
y = RANDOMU(seed, 100)
z = RANDOMU(seed, 100)
f = SQRT(x^2 + y^2 + z^2)
vol = grid3(x, y, z, f)
SHADE_VOLUME, vol, 0.8, v, p, /LOW

SCALE3, XRANGE=[0, 25], YRANGE=[0, 25], ZRANGE=[0, 25], AX=-90, AZ=00

image = POLYSHADE(v, p, /T3D)

TV, image
END
