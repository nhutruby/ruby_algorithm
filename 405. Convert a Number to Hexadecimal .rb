=begin
Given an integer num, return a string representing its hexadecimal representation. For negative integers, two’s complement method is used.

All the letters in the answer string should be lowercase characters, and there should not be any leading zeros in the answer except for the zero itself.

Note: You are not allowed to use any built-in library method to directly solve this problem.



Example 1:

Input: num = 26
Output: "1a"
Example 2:

Input: num = -1
Output: "ffffffff"
=end
# @param {Integer} num
# @return {String}
def to_hex2(num)
  (num% 2**32)
end

NUM_MAP = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
  10 => 'a',
  11 => 'b',
  12 => 'c',
  13 => 'd',
  14 => 'e',
  15 => 'f'
}

def to_hex(num)
  if(num == 0)
    return '0'
  else
    if(num < 0)
      num = 2 ** 32 + num
    end

    res = ''
    while(num > 0) do
      rem = num % 16
      res = "#{NUM_MAP[rem]}#{res}"
      num /= 16
    end

    return res
  end
end
p to_hex(-128)