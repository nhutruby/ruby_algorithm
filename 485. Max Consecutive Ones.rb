=begin
Given a binary array nums, return the maximum number of consecutive 1's in the array.



Example 1:

Input: nums = [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
Example 2:

Input: nums = [1,0,1,1,0,1]
Output: 2
=end
# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  max = 0
  r = 0
  nums.each do |i|
    max += 1 if i == 1
    r = max if max > r
    max = 0 if i == 0
  end
  r
end