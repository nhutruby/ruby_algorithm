def change_element(str)
  return str = str.gsub!("$", '').upcase
end
def change_array(arr)
  res = []
  arr.each do |i|
    res << change_element(i)
  end
  res.join(" ")
end
p change_array(["B$u$i$ld", "$t$$h$e", "N$e$x$t", "E$$ra", "$$o$f$", "S$$of$t$wa$r$e", "De$$ve$l$op$me$n$t"])
