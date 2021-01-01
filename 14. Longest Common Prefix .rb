# Write a function to find the longest common prefix string amongst an array of strings.
#
# If there is no common prefix, return an empty string "".
def longest_common_prefix(strs)
  return '' if strs.size == 0
  h = {}
  n = strs.size
  (0...n).each do |i|
    h[i] = strs[i].chars
  end
  f = h[0]
  m = f.size
  r = ''
  (0...m).each do |i|
    check = true
    (1...n).each do |j|
      if f[i] != h[j][i]
        check = false
        break
      end
    end
    r += f[i] if check == true
    break if check == false
  end
  r
end
def longest_common_prefix2(strs)
  i = 0
  return '' if strs.empty?
  condition = true
  while condition
    letters = strs.map { |x| x[i] }
    if letters.uniq.size > 1 || letters.first.nil?
      condition = false
    else
      i += 1
    end
  end

  strs.first[0...i]
end
p longest_common_prefix(["flower","flow","flight"])