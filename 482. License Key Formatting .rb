# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  p s.upcase.tr('-', '').reverse.scan(/.{1,#{k}}/)
  s.upcase.tr('-', '').reverse.scan(/.{1,#{k}}/).join('-').reverse
end
p license_key_formatting("5F3Z-2e-9-w",4)