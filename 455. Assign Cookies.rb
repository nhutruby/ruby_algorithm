# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g.sort!
  s.sort!
  gi = 0
  si = 0
  glen = g.length
  slen = s.length
  happy = 0
  while gi < glen and si < slen
    if g[gi] <= s[si]
      happy += 1
      gi += 1
      si += 1
    else
      si += 1
    end
  end
  happy
end