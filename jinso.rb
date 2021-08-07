def sum(s, n)
  sums = []
  (0..(n-1)).each do |i|
    sums << i + 1
  end
  (0..(n-2)).each do |i|
    sums << n - 1 - i
  end

  h = {}
  sums.each_with_index do |v, i|
    h[i+2] = v
  end

  r1 = []
  r2 = []
  p h
  m = h[s]
  if s <= n
    (0...m).each do |i|
      r1 << s - (i + 1)
      r2 << i + 1
    end
  else
    (0...m).each do |i|
      r1 << s - (n - i)
      r2 << n - i
    end
  end
  [r1, r2]
end
p sum(6,3)