# Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
#
# Follow up: Could you solve it without converting the integer to a string?
def is_palindrome(x)
  if x.to_s.reverse.to_i == x
    return true
  else
    return false
  end
end