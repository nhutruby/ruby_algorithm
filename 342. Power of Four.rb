# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n < 1

  while (n % 4 == 0) do
    n /= 4;
  end

  return n == 1;
end