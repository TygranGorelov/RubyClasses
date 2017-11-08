# Accepted
INIT_ARRAY = [{a: 1, b: 4}, {a: -33, b: -8}, {a: -22, b: 23}, {a: -2.01, b: 77}, {a: 15, b: 13}].freeze

array = INIT_ARRAY.dup

p "1. Сортированый массив положительных чисел  #{array.map(&:values).flatten.map { |x| x >= 0 ? x : nil }.compact.sort}"

p "2. Первый всртечный хеш, где a < 0  #{array.find { |hash| hash[:a] < 0 }}"

result = {
    a: array.map { |hash| hash[:a] }.sum,
    b: array.map { |hash| hash[:b] }.sum
}

p "3. Сумма всех :a и :b  #{result}"

p "4. Отсортировать весь массив по значениям :b  #{array.sort_by { |hash| hash[:b] }}"

p "5. Элементы у которых :b делится на 2 без остатка  #{array.map { |hash| hash[:b] if hash[:b] % 2 == 0 }.compact}"

p "6. Элемент у которого все значения < 0  #{array.find { |hash| hash[:a] < 0 && hash[:b] < 0 }}"

p "6+. Есть ли в массиве элемент у которого все значения < 0  #{array.any? { |hash| hash[:a] < 0 && hash[:b] < 0 }}"
