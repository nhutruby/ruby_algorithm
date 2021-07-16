# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s.gsub!(/[^0-9a-z]/i, '')
  s.downcase!
  return s == s.reverse
end
p is_palindrome("A man, a plan, a canal: Panama")