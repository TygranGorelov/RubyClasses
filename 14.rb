# accepted
N = 999125444444444
p 'Исходное число ' + N.to_s
p n_str = N.to_s
p array = n_str.split('')
p 'Максимальное число ' + array.max.to_s
p 'Количество вхождений ' + array.count { |x| x == array.max }.to_s
