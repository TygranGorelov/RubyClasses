# array = [ 0, 1, 0, 3, 4, 8, 0]
#
# p "Четные "
# i=0
# while i <= array.length
#   p array[i]
#   i+=2
# end
#
# p "Нечетные "
#
# i=1
# while i <= array.length
#   p array[i]
#   i+=2
# end



# [ 0, 1, 0, 3, 4, 8, 0].each_with_index do |value, index|
#   if index.even?
#     p 'Четные ' + "#{index}: #{value}".to_s
#   else
#     p 'Нечетные ' + "#{index}: #{value}".to_s
#   end
# end



a=[]
b=[]
[ 0, 1, 0, 3, 4, 8, 0].each_with_index do |value, index|
  if index.even?
    a.push("#{value}")
  else
    b.push "#{value}"
  end
end
# p 'Четные ' + a.to_s
# p 'Нечетные ' + b.to_s

p 'Четные'
p a
p 'Нечетные'
p b

