=begin
An ugly number is a positive integer whose prime factors are limited to 2, 3, and 5.

Given an integer n, return true if n is an ugly number.



Example 1:

Input: n = 6
Output: true
Explanation: 6 = 2 × 3
Example 2:

Input: n = 8
Output: true
Explanation: 8 = 2 × 2 × 2
Example 3:

Input: n = 14
Output: false
Explanation: 14 is not ugly since it includes the prime factor 7.
Example 4:

Input: n = 1
Output: true
Explanation: 1 has no prime factors, therefore all of its prime factors are limited to 2, 3, and 5.
=end
# @param {Integer} n
# @return {Boolean}
def is_ugly(num)
  return false if num <= 0
  return true if num == 1
  prime_factors = [2,3,5]
  prime_factors.each do |factor|
    while(num % factor == 0)
      num = num / factor
    end
  end
  return num == 1
end