def remove_element(nums, val)
  r = []
  nums.each do |i|
    r << i if i != val
  end
  r.size
end
p remove_element([3,2,2,3],3)