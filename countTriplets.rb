def countTriplets2(arr, r)
  v2 = Hash.new(0)
  v3 = Hash.new(0)
  count = 0
  arr.each do |k|
    count += v3[k]
    v3[k*r] += v2[k]
    v2[k*r] += 1
    p k
    p v3[k]
    p k*r
    p '....'
  end
  p v2
  p v3
  count
end
#wrong
def countTriplets(arr, r)
  h = Hash.new(0)
  arr.each do |k|
    h[k] += 1
  end
  length = arr.length
  r = length - 3
  h.each_value do |v|
    r = r*v
  end
  r
end
p countTriplets2([1,5,5,25,44, 125],5)
