# Input: 5
# Output:
# [
#      [1],
#     [1,1],
#    [1,2,1],
#   [1,3,3,1],
#  [1,4,6,4,1]
# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows == 0
  return [[1]] if num_rows == 1
  return [[1], [1,1]] if num_rows == 2
  return [[1], [1,1], [1,2,1]] if num_rows == 3
  a =  [[1], [1,1], [1,2,1]]
  (4..num_rows).each do |i|
    b = a.last
    c = Array.new(i,1)
    (1..i-2).each do |j|
      c[j] = b[j-1] + b[j]
    end
    a << c
  end
  return a
end