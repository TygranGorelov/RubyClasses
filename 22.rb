# Написать рекурсивный метод для поиска значения заданого ключа пользователем в хеше:

INIT_HASH = {
    key1: 'Xaxaxa',
    key2: 'SECOND',
    key3: {
        key4: 'str',
        key5: 'str2',
        key6: {
            key7: {
                key8: 1,
                key9: [2]}
        }
    }
}

#p INIT_HASH[:key1] #- ОБРАЩЕНИЕ К ЭЛЕМНТУ ХЕША!!!!

#p INIT_HASH.keys



# p hash.class - определить тип переменной

puts 'Введите ключ: '

u_key = gets.strip
user_key = u_key.to_sym

#ПЕРЕДЕЛАТЬ
def search(key)
  if INIT_HASH.has_key?(key) #Если в нашем хэше INIT_HASH есть ключ key, то выводим этот ключ. Если нету, то идем в else
    return INIT_HASH[key]  #работает

  else
    search(INIT_HASH[key]) #надо вызвать ф-цию search на элементы key1, key2, key3
  end
end

p search(user_key)

# def search(key)
#   if INIT_HASH.has_key?(key) #Если в нашем хэше INIT_HASH есть ключ key, то выводим этот ключ. Если нету, то идем в else
#     return INIT_HASH[key]  #работает
#
#   else
#     search(INIT_HASH[key]) #надо вызвать ф-цию search на элементы key1, key2, key3
#   end
# end
# p search(user_key)
