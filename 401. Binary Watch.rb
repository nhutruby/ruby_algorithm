# @param {Integer} turned_on
# @return {String[]}
def read_binary_watch(num)
  res = []
  (0..11).each do |h|
    (0..59).each do |s|
      if (h.to_s(2)+s.to_s(2)).count('1') == num
        p h.to_s(2)
        p s.to_s(2)
        res.push "#{h}:#{s.to_s.rjust(2, "0")}"
      end
    end
  end
  res
end
p read_binary_watch(1)