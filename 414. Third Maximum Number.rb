# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  nums = nums.sort {|x,y| -(x <=> y)}
  nums = nums.uniq
  n = nums.length
  return nums[0] if n < 3
  return nums[2]

end