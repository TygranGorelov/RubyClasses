new =[]
array = [ 0, 1, 20, 6, 34, 78, 4, 2, 8 , 6, 16, 10, 5, 9]
p 'Исходный массив ' + array.to_s
array.each_with_index do |value, index|
  if value.even?
    new.push(value)
    new.push(0)
  else
    new.push(value)
  end
end
p 'Результат ' + new.to_s
