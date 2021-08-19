# frozen_string_literal: true

# implement a boolean function called isAlmostPalindrome(string word) which returns true either if the word is a palindrome or if modifying just one character could make the word to be a aplindrome,
def almost_palindrome(str)
  n = str.size
  count = 0
  (0...(n / 2)).each do |i|
    count += 1 if str[i] != str[n - i - 1]
  end
  count <= 1
end
p almost_palindrome("abccba")
p almost_palindrome("abccbx")
p almost_palindrome("abccfg")
p almost_palindrome("aba")
p almost_palindrome("abc")
p almost_palindrome("a")
p almost_palindrome("")