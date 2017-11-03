array = [0, 10, 20, 6, 34, 78, 4, 2, 8 , 6, 16, 10, 5, 9]
p 'Исходный массив ' + array.to_s
elem = array.detect { |i| i > array[0] and i < array[-1] }
p 'Номер первого элементов, который удовлетворяют неравенству ' + array.index(elem).to_s
