=begin
A permutation perm of n + 1 integers of all the integers in the range [0, n] can be represented as a string s of length n where:

s[i] == 'I' if perm[i] < perm[i + 1], and
s[i] == 'D' if perm[i] > perm[i + 1].
Given a string s, reconstruct the permutation perm and return it. If there are multiple valid permutations perm, return any of them.



Example 1:

Input: s = "IDID"
Output: [0,4,1,3,2]
Example 2:

Input: s = "III"
Output: [0,1,2,3]
Example 3:

Input: s = "DDI"
Output: [3,2,0,1]
=end
# @param {String} s
# @return {Integer[]}
def di_string_match(s)
  lo, hi = 0, s.size
  ans = []
  s.chars.each do |c|
    if c == 'D'
      ans << hi
      hi -= 1
    else
      ans << lo
      lo += 1
    end
  end
  ans << lo
end
def di_string_match1(s)
  n = s.size
  d = s.count('D')
  i = n - d
  ad = [*((n - d + 1)..n)]
  id = *(0..i)
  r = []
  s.chars.each do |c|
    r << (c == 'D' ? ad.pop : id.shift)
  end
  r << id.shift
end