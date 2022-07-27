=begin
Given a string s and an integer k, reverse the first k characters for every 2k characters counting from the start of the string.

If there are fewer than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and leave the other as original.



Example 1:

Input: s = "abcdefg", k = 2
Output: "bacdfeg"
Example 2:

Input: s = "abcd", k = 2
Output: "bacd"
=end
def reverse_str2(s, k)
  a = s.split(//)
  n = a.size
  (0...n).step(2*k).each do |i|
    j = [i + k - 1, n -1].min
    a[i..j] = a[i..j].reverse
  end
  a.join('')
end
def reverse_str(s, k)
  a = s.split(//)
  n = a.size
  (0...n).step(2*k).each do |i|
    j = [i + k - 1, n -1].min
    p i
    p j
    p '....'
    while i < j
      tmp= a[i]
      a[i] = a[j]
      i = i + 1
      a[j] = tmp
      j = j - 1
    end
    p a
  end
  a.join('')
end
p reverse_str("abcdefg", 2)