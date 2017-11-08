puts 'Введите размер желаемой матрицы '
size = gets.to_i

size.times do |a|
  row = ''
  size.times do |b|
    if a == b
      row += '1'
    else
      row += '0'
    end
  end
  p row
end
