; Example 17.2.2

image = FINDGEN(216, 216)
image = BYTSCL(image)
LOADCT, 5
TVLCT, r, g, b, /GET

file = 'image.tif'
WRITE_TIFF, file, image, RED=r, GREEN=g, BLUE=b, ORIENTATION=0

end

