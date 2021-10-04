
def solution2(a)
  increase = 1
  decrease = 1
  n = a.length
  pt = []
  for i in 1...n
    if(a[i] < a[i-1])
        if increase == 1
            decrease = decrease + 1
        else
            return -1
        end
    elsif(a[i] > a[i-1])
            if increase == 1
                pt = a[i-1]
            end
            if decrease >= 2
                increase = increase + 1
            else
                return -1
            end
    elsif(a[i] == a[i-1])
                return -1
    end
    end
  if(increase >= 2 and decrease >= 2)
    return pt
  else
    return -1
  end

end
def solution(a)
  h = Hash.new(0)
  m = a.max
  a.each do |i|
    h[i] += 1
  end
  r = h.length
  h.each_pair do |k, v|
    r += 1 if v >= 2 and k != m
  end
  r
end
p solution([5,4,3,4])