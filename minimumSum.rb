def minsum(nums, k)
  nums = nums.sort{ |a, b| b <=> a }
  p nums
  for i in 0..k-1 do
      j = i % nums.length
      puts j
      nums[j] = (nums[j].to_f/ 2).ceil
  end

  return nums
end
p minsum([20,10,7], 4)

#test
