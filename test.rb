def twice(f, x)
   f.call(x)
end

add3 = ->(x) { x + 3 }
puts twice(add3, 7) #=> 13