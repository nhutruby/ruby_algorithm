def max_sub_array(nums)
  max_ending = 0
  max_slice = nums[0]

  nums.each do |i|
    max_ending = [i, max_ending + i].max
    max_slice = [max_slice, max_ending].max
  end
  return max_slice
end