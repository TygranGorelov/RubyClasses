# Accepted
a=[]
b=[]
[ 0, 1, 0, 3, 4, 8, 0].each_with_index do |value, index|
  if index.even?
    a.push("#{value}")
  else
    b.push "#{value}"
  end
end
p 'Четные'
p a
p 'Нечетные'
p b
