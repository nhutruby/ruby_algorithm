=begin
628. Maximum Product of Three Numbers
Given an integer array nums, find three numbers whose product is maximum and return the maximum product.



Example 1:

Input: nums = [1,2,3]
Output: 6
Example 2:

Input: nums = [1,2,3,4]
Output: 24
Example 3:

Input: nums = [-1,-2,-3]
Output: -6
=end
def maximum_product(nums)
  nums = nums.sort

  [
    nums.last(3).reduce(:*),
    nums.last * nums[0] * nums[1]
  ].max
end