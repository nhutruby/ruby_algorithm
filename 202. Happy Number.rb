# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  temp = Array.new
  loop do
    sum = 0
    n.to_s.chars.map(&:to_i).each {|x| sum += x*x}
    return true if sum == 1
    return false if temp.include?(sum)
    temp << sum
    n = sum
  end
end