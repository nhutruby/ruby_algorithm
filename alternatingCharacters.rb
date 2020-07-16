def alternatingCharacters(s)
  s = s.split(//)
  l = s.length
  r =[s[0]]
  (1...l).each do |i|
    last = r.last
    r << s[i] if s[i] != last
  end
  l - r.length
end
def alternatingCharacters(s)
  count = 0
  s = s.split(//)
  l = s.length
  (0...l).each do |i|
    count += 1 if s[i] == s[i+1]
  end
  count
end