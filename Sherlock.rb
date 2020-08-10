def isValid(s)
  s = s.split(//)
  count = Hash.new(0)
  s.each do |v|
    count[v] += 1
  end
  countNumber = Hash.new(0)
  count.each_value do |v|
    countNumber[v] += 1
  end
  p countNumber
  l = countNumber.length
  p l
  return 'YES' if l == 1
  return 'NO' if l > 2
  acountNumber = []
  countNumber.each_value do |v|
    acountNumber << v
  end
  p acountNumber
  min = acountNumber.min
  max = acountNumber.max
  convertCountNumber = Hash.new()
  countNumber.each do |key, value|
    convertCountNumber[value] = key
  end
  p convertCountNumber
  return 'YES' if convertCountNumber[1] == 1
  return 'YES' if min == 1 and convertCountNumber[min] - convertCountNumber[max]== 1
  return 'NO'
end
p isValid('abcdefghhgfedecba')
