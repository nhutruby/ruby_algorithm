#Spit the array such that gcd(val[i],val[j])>1
# there is an array val of n integers, a good subarray is defined as
# subarray val[i to j] is a good subarray only if gcd(va[i],va[j]) > (where 0<= i <= j < n)
# split the whole array in such a way that each split subarry is good one and the value of each element in the array val beongs to exactly one subarrya
# calculate the niminum number of split subarrays with each being a good subarray
# complate teh splitthe array function in the editor below the function must returen an integer denoting the minum number of split subarray, where each a good subarray
def splitTheArray(val)
  # wrong solution
  sz = val.size
  return 0 if sz == 0
  n = sz - 1
  subarray = 0
  while n >= 0 do
    for i in 0..n do
      if val[n].gcd(val[i]) > 1
        subarray += 1
        n = i-1
        break
      end
    end
  end
  return subarray
end
def splitTheArray2(val)
  n = val.size
  return 0 if n == 0
  n = n - 1
  m = 1
  r = 0
  i = 0
  while i <= n
    m = m* val[i]
    if i < n and m.gcd(val[i+1]) > 1
      r += 1
      i += 1
      m = 1
    end
    i += 1
  end
  return n + 1 if r == 0
  return r + 1 if m == val.last
  r
end
p splitTheArray([3, 6, 2, 5, 4])
p splitTheArray([3,5,7,11,2])
p splitTheArray([2,3,2,3,3,3])
p splitTheArray([2,3,5,3,3])
p splitTheArray([6,8,4,2,8,16])
p splitTheArray([6,8,9,2,3,16])