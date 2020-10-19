def getMinimumCost(k, c)
  c = c.sort{|x,y| -(x <=> y)}
  n = c.size
  r = n - k
  time = 0
  result = 0
  while r >= 0
    if (k*time + k) < n
      (k*time...(k*time+k)).each do |j|
        result += c[j]*(time+1)
      end
    else
      (k*time...n).each do |j|
        result += c[j]*(time+1)
      end
    end
    time += 1
    r = n - time*k
  end
  result
end
def getMinimumCost2(k,c)
  c = c.sort{|x,y| -(x <=> y)}
  n = c.size
  cost = 0
  (0...n).each do |i|
    cost += (i / k + 1) * c[i]
  end
  cost
end
#p getMinimumCost(2,[2,5,6])
#p getMinimumCost(3,[1,2,3,4])
p getMinimumCost2(3,[2,5,6])
p getMinimumCost2(3,[1,3,5,7,9])