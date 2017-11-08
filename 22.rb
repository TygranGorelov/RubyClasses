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

def search(m_h, u_k)
  return m_h[u_k] if m_h.has_key? u_k
  m_h.each do |_, value|
    return search(value, u_k) if value.is_a? Hash
  end
end

p search(main_hash, user_key)

