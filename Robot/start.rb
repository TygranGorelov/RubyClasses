require './interface'

puts 'Hello! Lets move the Robot! :)'

interface = Interface.new   #обьект класса Interface = Interface.создать новый обьект

interface.create_table #вызываем метод обьекта класса Interface
interface.place
interface.next2