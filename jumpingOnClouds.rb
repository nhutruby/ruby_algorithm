def jumpingOnClouds(c)
  j = 0
  n = c.size
  i = 0
  while i < n - 1
    if c[i+2] == 0
      j += 1
      i += 2
    else
      j += 1
      i += 1
    end
  end
  return j
end

p jumpingOnClouds([0,0,1,0,0,1,0])