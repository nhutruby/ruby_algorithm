=begin
Your friend is typing his name into a keyboard. Sometimes, when typing a character c, the key might get long pressed, and the character will be typed 1 or more times.

You examine the typed characters of the keyboard. Return True if it is possible that it was your friends name, with some characters (possibly none) being long pressed.



Example 1:

Input: name = "alex", typed = "aaleex"
Output: true
Explanation: 'a' and 'e' in 'alex' were long pressed.
Example 2:

Input: name = "saeed", typed = "ssaaedd"
Output: false
Explanation: 'e' must have been pressed twice, but it was not in the typed output.


Constraints:

1 <= name.length, typed.length <= 1000
name and typed consist of only lowercase English letters.
=end
# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  n = 0
  t = 0
  ts = typed.size
  ns = name.size
  while t < ts and n < ts
    return false if name[n] != typed[t]
    tc = 0
    nc = 0
    while typed[t] == typed[t + 1]
      tc += 1
      t += 1
    end
    while name[n] == name[n + 1]
      nc += 1
      n += 1
    end
    return false if nc > tc
    t += 1
    n += 1
  end
  return true if t == ts and n == ns
  false
end
def is_long_pressed_name1(name, typed)
  name = name.chars.chunk(&:itself).map{|_,c| c.join}
  typed = typed.chars.chunk(&:itself).map{|_,c| c.join}
  sn = name.size
  st = typed.size
  return false if sn != st
  (0...sn).each do |i|
    return false if (name[i][0] == typed[i][0] && name[i].size > typed[i].size) or name[i][0] != typed[i][0]
  end
  true
end