# @param {Integer} num
# @return {Integer}
def find_complement(num)
  new_int = num.to_s(2).chars
  new_int.each_with_index do |char, i|
    new_int[i] = "1" if char == "0"
    new_int[i] = "0" if char == "1"
  end
  new_int.join.to_i(2)
end