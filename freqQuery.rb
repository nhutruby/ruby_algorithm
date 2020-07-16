def freqQuery(queries)
  freq = Hash.new(0)
  cnt = Hash.new(0)
  arr = []

  queries.each { |q|
    if q[0] == 1
      cnt[freq[q[1]]] -= 1
      freq[q[1]] += 1
      cnt[freq[q[1]]] += 1
    elsif q[0] == 2
      if freq[q[1]] > 0
        cnt[freq[q[1]]] -= 1
        freq[q[1]] -= 1
        cnt[freq[q[1]]] += 1
      end
    else
      if cnt[q[1]] > 0
        arr.append(1)
      else
        arr.append(0)
      end
    end
    p freq
    p cnt
    p arr
    p '...'
  }
  return arr
end
#p freqQuery([[1, 5],[1,6],[3,2],[1,10],[1,10],[1,6],[2,5],[3,2]])
# p freqQuery([[3,4],[2,1003],[1,16],[3,1]])
p freqQuery([[1,3],[2,3],[3,2],[1,4],[1,5],[1,5],[1,4],[3,2],[2,4],[3,2]])