=begin
We define the usage of capitals in a word to be right when one of the following cases holds:

All letters in this word are capitals, like "USA".
All letters in this word are not capitals, like "leetcode".
Only the first letter in this word is capital, like "Google".
Given a string word, return true if the usage of capitals in it is right.



Example 1:

Input: word = "USA"
Output: true
Example 2:

Input: word = "FlaG"
Output: false
=end
# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  word.upcase == word || word.downcase == word || (word[0].upcase == word[0] && word[1..].downcase == word[1..])
end
# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  return true if word =~ /^[A-Z]*\z|^[a-z]*\z|^[A-Z][a-z]*\z/
  false
end