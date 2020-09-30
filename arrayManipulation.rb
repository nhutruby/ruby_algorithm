#An investor opens a new account and wants to invest in a number of assets. Each asset begins with a balance of O, and its value is stored in an array using 1-based indexing. Periodically, a contribution is received and equal investments are made in a subset of the portfolio. Each contribution will be given by investment amount, start index, end index. Each investment in that range will receive the contribution amount. Determine the maximum amount invested in any one investment after all contributions. For example, start with an array of 5 elements: investments = [0, 0, 0, 0, 0)* T
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

# puts arrayManipulation(10, [[1,5,3], [4,8,7], [6,9,1]])
# p arrayManipulation(5, [[1,2, 100], [2,5, 100], [3,4,100]])
p arrayManipulation(4, [[2,3,603], [1,1,286],[4,4,882]])
