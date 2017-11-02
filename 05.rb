array = [ 1, 5, 20, 6, 34, 78, 4, 23, 8, 6, 16, 10, 5, 9]
array2 = array[(array.index(array.min) + 1)...array.index(array.max)]

p 'Исходный массив ' + array.to_s
p 'Минимальный элемент ' + array.min.to_s
p 'Максимальный элемент ' + array.max.to_s
p 'Массив без первого и последнего элементов ' + array2.to_s
p 'Результат ' + array2.reverse.to_s
