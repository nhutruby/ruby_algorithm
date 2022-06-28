=begin
Given an array of strings words, return the words that can be typed using letters of the alphabet on only one row of American keyboard like the image below.

In the American keyboard:

the first row consists of the characters "qwertyuiop",
the second row consists of the characters "asdfghjkl", and
the third row consists of the characters "zxcvbnm".



Example 1:

Input: words = ["Hello","Alaska","Dad","Peace"]
Output: ["Alaska","Dad"]
Example 2:

Input: words = ["omk"]
Output: []
Example 3:

Input: words = ["adsdf","sfd"]
Output: ["adsdf","sfd"]
=end
# @param {String[]} words
# @return {String[]}
def find_words2(words)
  cwords = []
  words.each do |i|
    cwords << i.downcase.split(//).uniq
  end

  keyboard = ['qwertyuiop'.split(//), 'asdfghjkl'.split(//), 'zxcvbnm'.split(//)]
  rindex = []
  r = []
  p cwords
  keyboard.each do |i|
    cwords.each_with_index do |j, index|
      r = i - j
      rindex << index if r.length + j.length == i.length
    end
  end
  result = []
  p rindex
  rindex.each do |i|
    result << words[i]
  end
  result
  #first = 'qwertyuiop'.split(//)
  #r = first - words
  #return r if r.length +  words.length== first.length
end

def find_words(words)

  row1 = "qwertyuiop"
  row2 = "asdfghjkl"
  row3 = "zxcvbnm"

  words.map do |word|
    word if word.downcase.chars.all? {|letter| row1.include?(letter)} ||
      word.downcase.chars.all? {|letter| row2.include?(letter)} ||
      word.downcase.chars.all? {|letter| row3.include?(letter)}
  end.compact


end
p find_words(["Hello","Alaska","Dad","Peace"])