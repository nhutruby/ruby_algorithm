# @param {Integer} column_number
# @return {String}
CAPITALS = ('A'..'Z').to_a.freeze
p CAPITALS
def convert_to_title(n)
  res = ''

  while n > 0
    res.prepend(CAPITALS[(n-1) % 26])
    n = (n - 1) / 26
  end

  res
end
p convert_to_title(701)