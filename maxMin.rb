def maxMin(k, arr)
  arr = arr.sort
  n = arr.size
  arrMinMax = []
  (0..n - k).each do |i|
    arrMinMax << arr[i + k - 1] - arr[i]
  end
  return arrMinMax.min
end
p maxMin(3, [10, 100, 300, 200, 1000, 20, 30])