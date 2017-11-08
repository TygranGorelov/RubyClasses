INIT_HASH = {
  a: 12,
  b: 74.9,
  c: [23, 44, 66, -8, 124],
  d: 'Some String',
  z: { ca: 'Inherit hash', cb: 112 }
}.freeze

p "Исходный ХЭШ --> #{INIT_HASH}"

hash = INIT_HASH.dup
hash.delete_if { |_, v| v.is_a?(String) || v.is_a?(Numeric) }
p "Удалены строки и числа --> #{hash}"

# Короткий способ
hash2 = INIT_HASH.dup
rez = hash2.keys.reverse.zip(hash2.values).to_h
p "Реверс ключей не меняя значения --> #{rez}"

# Длинный способ, тоже работает
keys = []
values = []
hash2.each do |key, value|
  keys << key
  values << value
end
keys_r = keys.reverse
rez = keys_r.zip(values)
p "Реверс ключей не меняя значения --> #{rez.to_h}"
