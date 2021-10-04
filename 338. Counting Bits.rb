# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  ret_array=[0]
  for i in 1..n
    ret_array<<i.to_s(2).count('1')
  end
  return ret_array
end