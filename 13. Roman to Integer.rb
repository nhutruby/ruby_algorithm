def roman_to_int(s)
  sum = 0
  last_char = nil
  s.reverse.each_char do |c|
    sum +=
      case c
      when 'I' then (last_char == 'V' || last_char == 'X' ) ? -1 : 1
      when 'V' then 5
      when 'X' then (last_char == 'L' || last_char == 'C' ) ? -10 : 10
      when 'L' then 50
      when 'C' then (last_char == 'D' || last_char == 'M' ) ? -100 : 100
      when 'D' then 500
      when 'M' then 1000
      end
    last_char = c
  end

  sum
end