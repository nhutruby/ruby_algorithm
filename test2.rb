def numPlayers(k,scores)
  levelUp = 0
  rank = 1
  scores.sort!
  scores.reverse!
  base = scores[0]
  n = scores.size
  (0...n).each do |i|
    if rank <= k and base == i
      levelUp += 1
      base = i
    elsif rank < k and base != i
      base = i
      levelUp += 1
      rank +=1
    end
  end
  return levelUp
end
p numPlayers(4, [20,40,60,80,100])
