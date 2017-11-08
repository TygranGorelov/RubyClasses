# Accepted
text = 'На Западе, эта, последовательность, была исследована. Леонардо Пизанским. Известным как Фибоначчи.'

symbols = text.split('')

# Используем map
rezult = symbols.map do |item|
  if item == '.'
    ','
  elsif item == ','
    '.'
  else
    item
  end
end

p rezult.join

# Используем each
rezult = []
symbols.each do |item|
  if item == '.'
    rezult << ','
  elsif item == ','
    rezult << '.'
  else
    rezult << item
  end
end

p rezult.join
