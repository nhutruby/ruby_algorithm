(1..100).each do |i|
  r = i.to_s
  if i % 3 == 0 or i.to_s.index("3")
    r = r + ' ' + 'snap'
  end
  if i % 7 == 0 or i.to_s.index("7")
    r = r + ' ' + 'crackle'
  end
  puts r
end


#test
