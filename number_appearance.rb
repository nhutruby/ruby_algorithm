
# write a function that receives an array of positive integers with values between 1 and 5000 and the length of the array. the function returns the number that most frequently appears in the array. if there are two or more numbers that appear the same number of times, the function should return the lowest number that appears most
def appearance_number(arr, n)

  h = Hash.new(0)
  arr.each do |i|
    h[i] += 1
  end
  r = [h.keys.first]
  max = h.values.first
  h.each_pair do |k, v|
    if v > max
      max = v
      r = [k]
    elsif v == max
      r << k
    end
  end
  r.min
end
#p appearance_number([34,31,34,77,82],5)
#p appearance_number([22,101,102,101,102,525,88],7)
p appearance_number([22,22, 1],3)
#p appearance_number([66],1)
#p appearance_number([14,14,2342,2342,2342],5)
#p appearance_number([],0)