# Minimum Absolute Difference in an Array
def minimumAbsoluteDifference(arr)
  arr = arr.sort
  l = arr.length
  r = (arr[1] - arr[0]).abs
  (2..l-1).each do |i|
    d = (arr[i] - arr[i - 1]).abs
    r = d if d < r
  end
  r
end
p minimumAbsoluteDifference([3,-7,0])