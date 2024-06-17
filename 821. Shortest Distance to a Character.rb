=begin
Intuition
I solve the left first, then right for the closest distance.
n for without the character c in the left
-1 for it is the character c itself in s

Given a string s and a character c that occurs in s, return an array of integers answer where answer.length == s.length and answer[i] is the distance from index i to the closest occurrence of character c in s.

The distance between two indices i and j is abs(i - j), where abs is the absolute value function.



Example 1:

Input: s = "loveleetcode", c = "e"
Output: [3,2,1,0,1,0,0,1,2,2,1,0]
Explanation: The character 'e' appears at indices 3, 5, 6, and 11 (0-indexed).
The closest occurrence of 'e' for index 0 is at index 3, so the distance is abs(0 - 3) = 3.
The closest occurrence of 'e' for index 1 is at index 3, so the distance is abs(1 - 3) = 2.
For index 4, there is a tie between the 'e' at index 3 and the 'e' at index 5, but the distance is still the same: abs(4 - 3) == abs(4 - 5) = 1.
The closest occurrence of 'e' for index 8 is at index 6, so the distance is abs(8 - 6) = 2.

=end
# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
    a = []
    s = s.chars
    n = s.size
    (0...n).each do |i|
        s[i] == c ? a[i] = -1 : a[i] = i
    end
    l = left_closest(a, n)
    r = left_closest(a.reverse, n).reverse
    c = []
    (0...n).each do |i|
        c[i] = [l[i], r[i]].min
        c[i] = 0 if c[i] == -1
    end
    c
end
def left_closest(a, n)
    l = n
    r = []
    (0...n).each do |i|
        if a[i] == -1
            l = i
            r[i] = -1
            next
        end
        if l == n
            r[i] = n
        else
            r[i] = (i - l)
        end
    end
    r
end