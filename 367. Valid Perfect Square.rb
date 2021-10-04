# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  (1..num).bsearch { |i| num - i**2 } != nil
end
def is(num)
   i = 1
  while (num > 0)
      num -= i
      p num
  i += 2
  end
  return num == 0
end
is(9)