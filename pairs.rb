#You will be given an array of integers and a target value. Determine the number of pairs of array elements that have a difference equal to a target value.
def pairs(k, arr)
  arr.sort!
  count = 0;
  i = 0;
  j = 1;
  n = arr.size
  while j < n
    diff = arr[j] - arr[i]
    if diff == k
      count += 1
      p "#{arr[j]}, #{arr[i]}"
      j += 1
    elsif diff > k
      i += 1
    elsif diff < k
      j += 1
    end
  end
  count
end
p pairs(2,[1,2,3,4,5])