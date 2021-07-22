# @param {String} column_title
# @return {Integer}
def title_to_number(column_title)
  res = 0

  # we reverse the string so we can use each character's index
  # as the power to calculate the corresponding decimal number
  column_title.reverse.chars.each_with_index do |char, index|
    # char.ord gives us the corresponding number (A is 65)
    # we subtract "A".ord and add 1 so we can have A as 1, B as 2, etc
    # we finally multiply by 26 to the power of 0, 1, 2, etc
    # and add it to the current response
    res += (char.ord - "A".ord + 1) * (26 ** index)
    p  (char.ord - "A".ord + 1)
    p index
  end

  return res
end
p title_to_number("ZY")