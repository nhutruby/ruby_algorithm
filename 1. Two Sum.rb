#Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# You can return the answer in any order.
def two_sum(nums, target)
  h = {}
  n = nums.size
  (0...n).each do |i|
    if h.include? nums[i]
      return [h[nums[i]], i ]
    else
      h[target - nums[i]] = i
    end
  end
  return []
end
p two_sum([2,7,11,15], 9)