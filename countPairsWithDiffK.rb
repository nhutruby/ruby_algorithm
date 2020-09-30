def countPairsWithDiffK(numbers,k)
  n = numbers.length
  numbers = numbers.sort()
  l = 0
  r = 0
  result = []

  while r < n do
    if numbers[r] - numbers[l] == k
      ad = []
      ad << numbers[r]
      ad << numbers[l]
      ad = ad.sort()
      result << ad
      p result
      l += 1
      r += 1
    elsif numbers[r] - numbers[l] > k
      l += 1
    else
      r += 1
    end
    p r
    p l
  end

  result = result.uniq
  result.length
end
p countPairsWithDiffK([ 1, 2, 3, 4, 5, 6 ], 2)
# p countPairsWithDiffK([1,1,2,2,3,3], 1)