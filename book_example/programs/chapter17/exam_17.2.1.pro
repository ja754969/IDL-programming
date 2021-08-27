; Example 17.2.1

image = FINDGEN(216, 216)
image = BYTSCL(image)
LOADCT, 5
TVLCT, r, g, b, /GET

file = 'image.png'
WRITE_PNG, file, image, r, g, b

end

