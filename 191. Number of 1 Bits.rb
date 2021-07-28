# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  bits = 0
  mask = 1
  (0..31).each do |i|
    bits += 1 if (n & mask) != 0
    mask = mask << 1
  end
  bits
end