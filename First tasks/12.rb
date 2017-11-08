# Accepted
array = [37.5, 84.7, 62.6, 91.2, 11.4, 65.5, 57.6, 28.4, 19.1, 49.5]
R = 29.4
p 'Исходный массив ' + array.to_s
p 'Заданное число ' + R.to_s

r_mod = R.abs
rezult = 0
array.each do |x|
  if (R - x).abs < r_mod
    r_mod = (R - x).abs
    rezult = x
  end
end

p 'Число ' + rezult.to_s + ' наиболее близкое к ' + R.to_s
