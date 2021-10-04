# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  sh = Hash.new(0)
  s.each_char do |c|
    sh[c] += 1
  end
  s.each_char.with_index do |char, index|
    return index if sh[char] == 1
  end
  return -1
end