def greedyCoinChanging(a, k)
  a = a.sort
  n = a.length - 1
  p n
  result = []
  n.downto(0).each do |i|
    result << [a[i], k/a[i]]
    k %= a[i]
  end
  result
end
p greedyCoinChanging([1,2,5], 10)