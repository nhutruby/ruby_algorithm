def makeAnagram(a,b)
  dict = Hash.new{0}
  count = 0
  a = a.split(//)
  b = b.split(//)
  a.each {|n| dict[n] += 1}
  b.each {|n| dict[n] -= 1}
  p dict
  dict.each {|k,v| count += v.abs}
  count
end
p makeAnagram('fcrxzwscanmligyxyvym','jxwtrhvujlmrpdoqbisbwhmgpmeoke')