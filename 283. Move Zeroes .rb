=begin
Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

Note that you must do this in-place without making a copy of the array.



Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
Example 2:

Input: nums = [0]
Output: [0]


Constraints:

1 <= nums.length <= 104
-231 <= nums[i] <= 231 - 1
=end
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  n = nums.size - 1
  return nums if n <= 0
  j = 0
  (0..n).each do |i|
    if nums[i] != 0
      tm = nums[i]
      nums[i] = nums[j]
      nums[j] = tm
      j = j + 1
    end
    p j
    p nums
  end
  nums
end
p move_zeroes( [0,1,0,3,12])
p move_zeroes([0])
p move_zeroes([])