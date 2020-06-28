def sherlockAndAnagrams(str)
  counter = Hash.new(0)
  p counter
  (1...str.length).each do |len|
    puts len
    str.chars.each_cons(len) do |substr|

      p substr
      p '...'
      p substr.sort.join
      counter[substr.sort.join] += 1
    end
  end
  puts counter
  counter.values.map { |n| n * (n - 1) / 2 }.reduce(:+)
end
p sherlockAndAnagrams('kkkk')