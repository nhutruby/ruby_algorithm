# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers2(nums)
  n = nums.length
  h = Hash.new(0)
  r = []
  nums.each do |i|
    h[i] += 1
  end
  (1..n).each do |i|
    r << i if h[i] == 0
  end
  r
end
# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  [*1..nums.length] - nums
end