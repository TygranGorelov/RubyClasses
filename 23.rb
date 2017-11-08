puts 'Введите предложение: '
user_string = gets.strip

def sentenses(x)
  arr = x.split
  arr2= []
  arr.each do |x|
    arr2 << x.capitalize
  end
  p arr2.join('')

  p x.downcase.split().join('_')

  p x.downcase.split().join('-')
end

sentenses(user_string)
