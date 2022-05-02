# @param {Integer} n
# @return {Integer}
def arrange_coins1(n)
  i = 1
  while n >=0
    n = n - i
    i += 1
  end
  return i - 1 if n == 0
  return i - 2
end
# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
  left, right = 0, n
  while left <= right do
    k = (right + left) / 2
    curr = k * (k + 1) / 2
    if curr == n
      return k
    end
    if n < curr
      right = k - 1
    else
      left = k + 1
    end
  end
  return right
end