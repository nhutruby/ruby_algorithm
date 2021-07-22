# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  i = 0
  j = numbers.length-1
  while(i < j)
    curr_sum = numbers[i]+numbers[j]
    if(target > curr_sum)
      i += 1
    elsif(target < curr_sum)
      j -= 1
    else
      return [i+1,j+1]
    end
  end
end