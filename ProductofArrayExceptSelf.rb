#Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].
a = [1,2,3,4]
result = []
a.each {|x| result.push( (a-[x]).reject(&:zero?).reduce(:*)) }
puts result