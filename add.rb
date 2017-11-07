# От 1 до n
# Дано натуральное число n. Выведите все числа от 1 до n.

def natural(n)
  return 1 if n == 1
  [natural(n-1), n].join(' ')

end

p natural(10)

# От A до B
# Даны два целых числа A и В (каждое в отдельной строке). Выведите все числа от A до B включительно, в порядке возрастания, если A < B, или в порядке убывания в противном случае.

def ab(a, b)
  if a > b
    if a == b
      return a
    end
    return a.to_s + ' ' + ab(a-1, b).to_s
  else
    if a == b
      return a
    end
    return a.to_s + ' ' + ab(a + 1, b).to_s
  end
end

p ab(15, 10)

# D: Точная степень двойки
# Дано натуральное число N. Выведите слово YES, если число N является точной степенью двойки, или слово NO в противном случае.
# Операцией возведения в степень пользоваться нельзя!

def exponent(n)
  n = n.to_f
  if n == 1
    1
  elsif n > 1 && n < 2
    0
  else
    exponent(n / 2)
  end
end

p rezult = exponent(64)

p rezult == 1 ? 'YES' : 'NO'




