# accepted
array = [ 0, 1, 20, 6, 34, 78, 4, 2, 8 , 6, 16, 10, 5, 9]
p 'Исходный массив ' + array.inspect
K = 5
p 'Степень ' + K.to_s
p "Элементы массива возведенные в степень"
array.each { |x| p x**K }
