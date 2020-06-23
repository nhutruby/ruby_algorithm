def convert_temp(temp, input_scale:, output_scale: 'celsius')
  return temp if input_scale == output_scale
  case input_scale
  when 'celsius'
    output_scale == 'kelvin' ? temp+273.15 : temp * (9/5.0) + 32
  when 'kelvin'
    output_scale == 'celsius' ? temp - 273.15 : temp * (9/5.0) - 459.67
  when 'fahrenheit'
    output_scale == 'celsius' ? (temp - 32) * (5/9.0) : (temp + 459.67) * (5/9.0)
  end
end