#Given a 32-bit signed integer, reverse digits of an integer.
#
# Note:
# Assume we are dealing with an environment that could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
def reverse(x)
  if x >= 0 and x <= (2**31 - 1)
    return x.to_s.reverse.to_i
  elsif x < 0 and x >= (-2)**31
    return -(x.abs).to_s.reverse.to_i
  else
    return 0
  end
end
def reverse2(x)
  new_a = x.to_s.reverse.to_i
  l = (-2)**31
  r = 2**31 - 1
  if x >= 0
    new_a < r ? new_a : 0
  else
    -new_a > l ? -new_a : 0
  end
end
def reverse3(x)
  z = x.abs.to_s.reverse.to_i
  return 0 if z > 2**31 - 1
  z = -z if x < 0
  z
end
def reverse(x)
  y = x.abs
  array = y.to_s.split("")
  answer = array.reverse!.join.to_i
  bin = answer.to_s(2)
  p bin
  l = bin.size
  if x < 0 && l < 32
    -answer
  elsif x > 0 && l < 32
    answer
  else
    return 0
  end
end
p reverse2(1534236469)