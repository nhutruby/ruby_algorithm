def rotationLeft(a, d)
  n = a.size
  d = d % n
  p d
  p a[d..n-1] + a[0..d-1]
end
rotationLeft([1, 2, 3, 4, 5], 2)