# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  a = Hash.new(0)
  nums.each do |i|
    a[i] += 1
  end
  a.each {|k,v|
    return k if v == 1
  }
end
def single_number2(nums)
  nums.reduce(:^)
end
p single_number([2,2,1])