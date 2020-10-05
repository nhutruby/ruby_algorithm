def luckBalance(k, contests)

  imp = 0
  impA = []
  result = 0
  contests.each do |i|
    if i[1] == 1
      imp += 1
      impA << i[0]
    end
  end
  c = imp - k
  p c
  if c > 0
    impA = impA.sort
    impA = impA[0..c-1]
    contests.each do |i|
      if impA.include? i[0]
        i[0] = -i[0]
        c -= 1
      end
      break if c == 0
    end
  end
  contests.each do |i|
    result += i[0]
  end
  return result
end
def luckBalance2(k, contests)
  contests = contests.sort{|x,y| -(x <=> y)}
  luck = 0
  p contests
  contests.each do |contest|
    if contest[1] == 0
        luck += contest[0]
    else
      if k > 0
        luck += contest[0]
        k -= 1
      else
        luck -= contest[0]
      end
    end
  end
  return luck
end
p luckBalance2(3, [[5, 1], [2, 1], [1, 1], [8, 1], [10, 0], [5, 0]]
  )