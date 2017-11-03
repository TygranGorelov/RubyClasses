# Accepted
array = [0, 1, 20, 6, 34, 78, 4, 2, 8 , 6, 16, 10, 5, 9]
p 'Исходный массив: ' + array.to_s
p 'Нечетные элементы: ' + array.select(&:odd?).to_s
