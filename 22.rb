INIT_HASH = {
    key1: 'FIRST',
    key2: 'SECOND',
    key3: {
        key4: 'FOURTH',
        key5: 'FIFTH',
        key6: {
            key7: {
                key8: 'EIGHTH',
                key9: ['NINETH']}
        }
    }
}

puts 'Введите ключ: '

u_key = gets.strip
user_key = u_key.to_sym

main_hash = INIT_HASH

def search(main_hash, user_key)
  return main_hash[user_key] if main_hash.has_key? user_key
  main_hash.each do |_, value|
    return search(value, user_key) if value.is_a? Hash
  end
  nil
end

p search(main_hash, user_key)
