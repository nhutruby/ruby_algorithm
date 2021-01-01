#Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
nums = [1,2,3,4]
n = nums.size
out = [1] * n
left = right = 1
1.upto(n-1) { |i|
  out[i] *= left *= nums[i-1]
  p out
  out[~i] *= right *= nums[-i]
  p out
}
p out