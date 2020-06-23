def repeatedString(s, n)
  l = s.size
  r = n/l
  a_s = s.count('a')
  remain = n - l*r
  p remain
  r = r*a_s
  r += s[0..remain - 1].count('a') if remain > 0
  r
end
p repeatedString('aba', 10)