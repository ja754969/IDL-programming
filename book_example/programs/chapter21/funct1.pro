FUNCTION funct1, x, a
  y = [a[0]*exp(a[1]*x), exp(a[1]*x), a[0]*x*exp(a[1]*x)]
RETURN, y
end
