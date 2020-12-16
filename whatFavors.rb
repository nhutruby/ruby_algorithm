def whatFlavors(cost, money)
  hs = {}
  n = cost.size
  (0...n).each do |i|
    if hs.include?(cost[i])
      p '...'
      p cost[i]
      p '...'
      return  puts hs[cost[i]].to_s + ' ' + (i + 1).to_s
    else
      hs[money - cost[i]] = i + 1
    end
    p hs
  end
end
whatFlavors([2,3,5,7, 9], 11)
def two_sum(arr, target)
  hs = {}
  n = arr.size
  (0...n).each do |i|
    if !hs.include?(arr[i])
      hs[target - arr[i]] = i + 1
    else
      p [target - arr[i], arr[i]]
    end
  end
end
#two_sum([2,3,5,7, 9, 1, 10], 11)