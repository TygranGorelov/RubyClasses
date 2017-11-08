# Accepted
puts 'Введите размер желаемой матрицы '

size = gets.to_i

size.times do |a|
  row = ''
  size.times do |b|
    row += a == b ? '1' : '0'
  end
  puts row
end
