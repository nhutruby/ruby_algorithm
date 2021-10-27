# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence2(s, t)
  ls = s.length
  return true if ls == 0
  lt = t.length
  i = 0
  j = 0
  check = true
  c = false
  while i < ls
    c = false
    while j < lt
      if s[i] == t[j]
        c = true
        j += 1
        break
      else
        j += 1
      end
    end
    break check = false if j > lt
    i += 1
  end
  check && c
end
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
  s_index = 0
  t.each_char do |c|
    s_index += 1 if c == s[s_index]
    break if s_index == s.length
  end
  s_index == s.length
end
p is_subsequence("abc", "ahbgdc")