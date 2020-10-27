def whatFlavors(cost, money)
  hs = {}
  n = cost.size
  (0...n).each do |i|
    if hs.include?(cost[i])
      return  puts hs[cost[i]].to_s + ' ' + (i + 1).to_s
    else
      hs[money - cost[i]] = i + 1
    end
    p hs
  end
end
whatFlavors([1, 4, 5, 3, 2], 4)