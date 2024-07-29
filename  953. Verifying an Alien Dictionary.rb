=begin
In an alien language, surprisingly, they also use English lowercase letters, but possibly in a different order. The order of the alphabet is some permutation of lowercase letters.

Given a sequence of words written in the alien language, and the order of the alphabet, return true if and only if the given words are sorted lexicographically in this alien language.



Example 1:

Input: words = ["hello","leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
Output: true
Explanation: As 'h' comes before 'l' in this language, then the sequence is sorted.
Example 2:

Input: words = ["word","world","row"], order = "worldabcefghijkmnpqstuvxyz"
Output: false
Explanation: As 'd' comes after 'l' in this language, then words[0] > words[1], hence the sequence is unsorted.
Example 3:

Input: words = ["apple","app"], order = "abcdefghijklmnopqrstuvwxyz"
Output: false
Explanation: The first three characters "app" match, and the second string is shorter (in size.) According to lexicographical rules "apple" > "app", because 'l' > '∅', where '∅' is defined as the blank character which is less than any other character (More info).
=end
# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
  h = {}
  order.chars.each_with_index{|v,k|
    h[v] = k
  }
  n = words.size - 1
  (0...n).each do |i|
    m = words[i].size
    (0...m).each do |j|
      return false if j >= words[i+1].size
      if words[i][j] != words[i+1][j]
        return false if h[words[i][j]] > h[words[i+1][j]]
        break
      end
    end
  end
  true
end
def is_alien_sorted1(words, order)
  h = {}
  order.chars.each_with_index{|v,k|
    h[v] = k
  }
  n = words.size - 1
  (0...n).each do |i|
    la = words[i].size
    lb = words[i+1].size
    max = [la, lb].max
    (0...max).each do |j|
      if words[i][j] != nil && words[i+1][j] != nil
        break if h[words[i][j]] < h[words[i+1][j]]
        return false if h[words[i][j]] > h[words[i+1][j]]
      end
      next if words[i][j] == nil && la != lb
      return false if words[i+1][j] == nil && lb != la
    end
  end
  true
end