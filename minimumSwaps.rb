def minimumSwaps (arr)
  count = 0
  i = 1
  p arr.each_with_index.map { |v, i| [i+1, v] }
  h = Hash[arr.each_with_index.map { |v, i| [i+1, v] }]
  p h
  n = arr.size
  while i < n
    if h[i] != i
      j = h[i]
      h[j], h[i] = h[i], h[j]
      p h
      p i
      p '....'
      count += 1
    else
      p i
      p '######'
      i += 1
    end
  end
  count
end
#p minimumSwaps([4,3,1,2])
p minimumSwaps([2,3,4,1, 5])