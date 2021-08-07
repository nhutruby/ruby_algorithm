=begin
Given a sorted integer array nums, where the range of elements are in the inclusive range [lower, upper], return its missing ranges.

Example:

Input: nums = [0, 1, 3, 50, 75], lower = 0 and upper = 99,
Output: ["2", "4->49", "51->74", "76->99"]
=end
def missing_ranges(nums, lower, upper)
  n = nums.length
  r = []
  if n == 0
    return r << "#{lower}" if lower == upper
    return r << "#{lower}->#{upper}" if lower < upper
  end
  head = 0
  r << "#{lower}" if nums[0] - lower == 1
  r << "#{lower}->#{nums[0]}" if nums[0] - lower > 1
  while head < n
    tail = head + 1
    while tail < n and nums[tail] == nums[tail - 1] + 1
      tail += 1
    end
    if tail < n
      if nums[tail] - nums[tail - 1] == 2
        r << "#{nums[tail] - 1}"
      else
        r << "#{nums[tail - 1] + 1}->#{nums[tail] - 1}"
      end
    end
    head = tail
  end
  r << "#{upper}" if upper - nums[-1] == 1
  r << "#{nums[-1] + 1}->#{upper}" if upper - nums[-1] > 1
  r
end

p missing_ranges([0,1,3,50,75],0,99)
p missing_ranges([], 1 ,1)
p missing_ranges([], -3, -1)
p missing_ranges([-1], -1, -1)
p missing_ranges([-1], -2, -1)