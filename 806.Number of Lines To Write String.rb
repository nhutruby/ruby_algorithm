#You are given a string s of lowercase English letters and an array widths denoting how many pixels wide each lowercase English letter is. Specifically, widths[0] is the width of 'a', widths[1] is the width of 'b', and so on.
#
# You are trying to write s across several lines, where each line is no longer than 100 pixels. Starting at the beginning of s, write as many letters on the first line such that the total width does not exceed 100 pixels. Then, from where you stopped in s, continue writing as many letters as you can on the second line. Continue this process until you have written all of s.
def number_of_lines(widths, s)
  h = {}
  ('a'..'z').each_with_index do |v, i|
    h[v] = widths[i]
  end
  n = s.size
  i = 0
  l = 0
  sum = 0
  while i < n
    sum += h[s[i]]
    if sum > 100
      l += 1
      sum = h[s[i]]
    end
    i += 1
  end
  [l + 1, sum]
end
p number_of_lines([10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10], "abcdefghijklmnopqrstuvwxyz")
