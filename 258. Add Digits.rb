=begin
=end
# @param {Integer} num
# @return {Integer}
def add_digits(num)
  return 0 if num == 0
  return 9 if num % 9 == 0
  return num % 9
end
# @param {Integer} num
# @return {Integer}
def add_digits2(num)
  return 0 if num == 0
  digital_root = 0
  while num > 0 do
    digital_root += num % 10
    num = num / 10

    if num == 0 and digital_root > 9
      num = digital_root
      digital_root = 0
    end
  end
  return digital_root
end