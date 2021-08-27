FUNCTION uv, x, y
  a = SQRT(1 - x^2 - y^2)
  z = [-a, a]
RETURN, z
END
