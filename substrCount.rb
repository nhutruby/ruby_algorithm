# A string is said to be a special string if either of two conditions is met:
# All of the characters are the same, e.g. aaa.
# All characters except the middle one are the same, e.g. aadaa.
def substrCount(n, s)
  # since each individual character is a valid special palindromic string, there will be at least n results.
  result = n

  (0..n - 2).each { |i|
    j = i

    # if next character is the same, that's a valid special palindrome string
    while s[i] == s[j + 1]
      result += 1
      j += 1
    end

    j += 1

    # check next characters to see if it's a valid sandwich
    start_ind = j + 1
    end_ind = j + (j - i)
    if s[start_ind..end_ind] == s[i..j - 1]
      result += 1
    end
  }

  result
end

 

 

 

 

 

 

 

 

 