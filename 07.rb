array = [ 0, 1, 20, 6, 34, 78, 4, 2, 8 , 6, 16, 10, 5, 9]
p 'Исходный массив ' + array.to_s
K = 5
p 'Число К = ' + K.to_s
p 'Сущетсвует ли элемент меньший К - ' + array.any? {|i| i<K}.to_s
