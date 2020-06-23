def arrayManipulation(n, queries)
  arr = Array.new(n + 1, 0)
  p arr
  queries.each do |q|
    arr[q.first - 1] += q.last
    arr[q[1]] -= q.last
    p arr
    p '....'
  end
  tmp = 0
  max = 0
  arr.each do |n|
    tmp += n
    max = tmp if tmp > max
  end
  max
end

puts arrayManipulation(10, [[1,5,3], [4,8,7], [6,9,1]])