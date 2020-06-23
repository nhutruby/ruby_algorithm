def countingValleys(n, s)
  a = s.scan(/./)
  count = 0
  result = 0
  (0..n-1).each do |i|
    pre = count
    if a[i] == 'U'
      count += 1
    else
      count -= 1
    end
    if count == 0 and a[i] == 'U'
      result +=1
    end
  end
  result
end
puts countingValleys(8,'UDDDUDUU')