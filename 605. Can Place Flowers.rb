=begin
605. Can Place Flowers

You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.



Example 1:

Input: flowerbed = [1,0,0,0,1], n = 1
Output: true
Example 2:

Input: flowerbed = [1,0,0,0,1], n = 2
Output: false

=end
# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  count = 0

  a = ([0] + flowerbed + [0]).map{ |f|
    count = f == 0 ? count + 1 : 0
    count >= 3 ? count % 2 : 0
  } >= n
end
f = [1,0,0,0,0,0,1]
n = 1
can_place_flowers(f,n)
def can_place_flowers1(flowerbed, n)
  m = flowerbed.size
  return true if m == 1 and n == 1 and flowerbed[0] == 0
  flowerbed << 0 if m >= 3 and flowerbed[-1] == 0
  flowerbed.unshift(0) if flowerbed[0] == 0
  p flowerbed
  r = []
  c = 0
  flowerbed.each do |i|
    if i == 0
      c += 1
    else
      r << c if c != 0 and c >= 3
      c = 0
    end
  end
  r << c if c != 0 and c >= 3
  p '..'
  p r
  cc = 0
  r.each do |i|
    cc += i.divmod(2)[0]
    cc -= 1 if i.divmod(2)[1] == 0
  end
  #cc -= 1 if flowerbed[0] == flowerbed[-1] and flowerbed[0] == 0
  cc >= n
end