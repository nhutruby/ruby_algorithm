# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  p  n.to_s(3)
  /^10*$/.match?(n.to_s(3))
end
p is_power_of_three(27)