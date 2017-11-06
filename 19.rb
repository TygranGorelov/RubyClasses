text = 'На Западе, эта, последовательность, была исследована. Леонардо Пизанским. Известным как Фибоначчи.'

symbols = text.split('')

rezult =[]
symbols.each do |item|
  if item == '.'
    rezult << ','
  elsif item == ','
    rezult << '.'
  else
    rezult << item
  end
end

p rezult.join(' ')
