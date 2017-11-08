# Accepted
words = 'Под под рекурсией понимается способность функции вызывать саму себя рекурсией понимается способность'

arr_words = words.split(' ').map(&:capitalize).sort

p arr_words.inject(Hash.new(0)) { |h, w| h[w] = arr_words.count { |word| word == w }; h }
# 1. h == {}, w == 'Под'
# 2. h == {'Под' => 2}, w == 'Под'
