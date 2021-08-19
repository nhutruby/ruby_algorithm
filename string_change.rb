# frozen_string_literal: true

def string_change(arr)
  r = []
  arr.each do |str|
    r << "#{str.gsub(/[$]/, '').upcase}"
  end
  r.join(' ')
end
arr = %w[B$u$i$ld $t$$h$e N$e$x$t E$$ra $$o$f$ S$$of$t$wa$r$e De$$ve$l$op$me$n$t]
p string_change(arr)