def majority_element(nums)
  h = Hash.new(0)
  t = (nums.length.to_f)/2
  p t
  nums.each do |i|
    h[i] += 1
  end
  h.each do |k,v|
    return k if v > t
  end
end
# @param {Integer[]} nums
# @return {Integer}
def majority_element2(nums)
  count = 0
  item = nil

  nums.each do |num|
    item = num if count == 0
    count += (num == item ? 1 : -1)
  end

  item

end
p majority_element([3,2,3])