def checkArray(arr, n)
  barr = Hash.new(0)
  arr.each do |i|
    barr[i] += 1
  end
  r = barr.sort_by { |k, v| v }
  m = r[-1][1]
  b = []
  r.each do |i|
    b << i[0] if i[1] == m
  end
  b.sort[0]
end
puts checkArray([222,222, 1,1],5)
