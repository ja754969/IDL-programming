FUNCTION funct2, x, a
  dum = x - a[1]
  y0 = EXP(-(dum / a[2])^2)
  y = a[0] * y0
  y1 = -2 * y * dum / a[2]^2
  y2 = 2 * y * dum^2 / a[2]^3
RETURN, [y, y0, y1, y2]
end
