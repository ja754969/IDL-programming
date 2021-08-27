; Example 17.2.3

file = FILEPATH('rose.jpg', SUBDIRECTORY=['examples', 'data'])
READ_JPEG, file, image
image2 = TRANSPOSE(image, [1, 2, 0])

file = 'image.jpg'
HELP, image, image2
WRITE_JPEG, file, image2, TRUE=3

end
