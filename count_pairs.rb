def sockMerchant(n, arr)
  r = []
  arr = arr.sort
  c = 0
  r << arr[0]
  (1..n-1).each do |i|
    if r.last == arr[i]
      r.pop
      c += 1
    else
      r << arr[i]
      end
  end
  c
end
p sockMerchant2(9, [10, 20, 20, 10, 10, 30, 50, 10, 20])