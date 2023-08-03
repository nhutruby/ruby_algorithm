def occurences(arr, int)
  count = 0
  arr.each do |i|
    count +=1 if i == int
  end
  count
end

arr = [2,3,4,3,2,1]
int = 3
p occurences(arr,int)
p arr.count(3)