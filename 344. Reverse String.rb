# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
  n = s.length - 1
  i = 0
  while i < n
    temp = s[i]
    s[i] = s[n]
    s[n] = temp
    i +=1
    n -=1
  end
  s
end