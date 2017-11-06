# Есть массив чисел, сделать сумму и разность с помощью inject или reduce
array = [150, 10, 20, 6, 34, 200, 4, 2, 8 , 6, 16, 10, 5, 2000]

p "Inject = #{array.inject(:+)}, #{array.inject(:-)}"

p "Reduce = #{array.reduce(:+)}, #{array.reduce(:-)}"