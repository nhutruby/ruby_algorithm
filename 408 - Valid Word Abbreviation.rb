def valid_word_abbreviation(s, abbr)
  return false if s == nil || abbr == nil
  count = 0
  i = 0
  aabbr = abbr.scan(/\d+|\D/)
  l = aabbr.length
  while i < l
    if aabbr[i].match?(/[[:alpha:]]/)
      return false if aabbr[i] != s[count]
      count += 1
    else
      count += aabbr[i].to_i
    end
    i += 1
  end
  count == s.length
end
p valid_word_abbreviation("word", "2r1")
p valid_word_abbreviation("word", "1or1")
p valid_word_abbreviation("internationalization", "i12iz4n")
p valid_word_abbreviation("word", "abcd")
p valid_word_abbreviation("apple", "a2e")
