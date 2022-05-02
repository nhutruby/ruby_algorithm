# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  r = []
  (1..n).each do |i|
    r << "FizzBuzz" if i % 3 == 0 and i % 5 == 0
    r << "Fizz" if i % 3 == 0
    r << "Buzz" if i % 5 == 0
    r << i.to_s if i % 3 != 0 and i % 5 != 0
  end
  r
end
p fizz_buzz(3)
