def rotationLeft(a, d)
  n = a.size
  d = d % n
  p d
  p a[d..n-1] + a[0..d-1]
end
def r(a,k)
  a.rotate!(-k)
end
p r( [-1,-100,3,99],2)
