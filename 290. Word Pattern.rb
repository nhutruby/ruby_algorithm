# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  p = pattern.chars
  s = s.split(' ')
  return false if s.length != p.length
  sha, tha = {}, {}
  0.upto(s.length - 1) do |i|
    return false if sha[s[i]] != tha[p[i]]
    sha[s[i]], tha[p[i]] = i, i
  end
  true
end
p word_pattern("abba", "dog cat cat dog")
p word_pattern("abba", "dog cat cat fish")
p word_pattern("aaaa", "dog cat cat dog")
p word_pattern("abba", "dog dog dog dog")
p word_pattern("aaaa", "dog dog dog dog")