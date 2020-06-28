def twoStrings2(s1, s2)
  s1 = s1.split(//)
  s2 = s2.split(//)
  r = s1 - s2
  puts r
  n = s1.length
  puts r.length < n ? 'YES' : 'NO'
end
def twoStrings(s1, s2)
  s1 = s1.split(//)
  s2 = s2.split(//)
  r = s1&s2
  puts r
  n = s1.length
  puts r.length != 0 ? 'YES' : 'NO'
end
twoStrings('hi', 'world')