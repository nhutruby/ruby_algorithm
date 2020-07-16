def bubbleSort(a)
  swaps = 0
  l = a.length
  (0...l).each { |i|
    (0...(l-1)).each { |j|
      if a[j]> a[j+1]
        a[j],a[j+1]=a[j+1],a[j]
        swaps+=1
    end
    }
  }
  puts 'Array is sorted in ' + swaps.to_s + ' swaps.'
  puts "First Element: " + a.first.to_s
  puts "Last Element: " + a.last.to_s
end
bubbleSort([3,2,1])