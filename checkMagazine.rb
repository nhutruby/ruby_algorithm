
def checkMagazine(magazine, note)
  m = magazine.length
  n = note.length
  j = 0
  magazine = magazine.sort()
  note = note.sort()
  if m < n
    puts 'No'
  else
    (0..m-1).each do |i|
      j += 1 if magazine[i] == note[j]
    end
    puts j == n  ? 'Yes' : 'No'
  end
end
def checkMagazine2(magazine, note)
  dict = Hash[magazine.map {|v| [v,0]}]
  magazine.each do |word|
    dict[word] += 1
  end
  note.each do |word|
    if dict[word]==0
      puts 'No'
      return nil
    end
    if dict[word] != nil
      dict[word]-=1
    else
      puts 'No'
      return nil
    end
  end
  puts 'Yes'
end
puts checkMagazine(["give", "me", "one", "grand", "today", "night"], ["give", "one", "grand", "today"])