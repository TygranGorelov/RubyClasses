# Построить три класса (базовый и 2 потомка), описывающих некоторых работников с почасовой оплатой (один из потомков)
# и фиксированной оплатой (второй потомок). Описать в базовом классе абстрактный метод для расчета среднемесячной
# заработной платы.
#         Для «повременщиков» формула для расчета такова:
#                         «среднемесячная заработная плата = 20.8 * 8 * почасовую ставку»
#         для работников с фиксированной оплатой
#                         «среднемесячная заработная плата = фиксированной месячной оплате».
#
# a) Упорядочить всю последовательность работников по убыванию среднемесячного заработка.
# При совпадении зарплаты – упорядочивать данные по алфавиту по имени. Вывести идентификатор работника,
# имя и среднемесячный заработок для всех элементов списка.
# b) Вывести первые 5 имен работников из полученного в пункте а) списка.
# c) Вывести последние 3 идентификатора работников из полученного в пункте а) списка.
# d) Организовать запись и чтение коллекции в/из файл.
# e) Организовать обработку некорректного формата входного файла.

require 'rubygems'
require 'bundler/setup'
require 'faker'

require './basic'
require './hourly'
require './fixed'

# employees = [
#   Fixed.new('Ivanov_H', 1650),
#   Fixed.new('Petrov_F', 2000),
#   Fixed.new('Sidorov_F', 1500),
#   Fixed.new('Klichko_F', 1200),
#   Fixed.new('Zubov_F', 2150),
#   Fixed.new('Yakovlev_F', 2100),
#   Fixed.new('Vasilev_F', 1500),
#   Fixed.new('Romanov_F', 1480),
#   Fixed.new('Kot_F', 1200),
#   Fixed.new('Cherniy_F', 2050),
#   Fixed.new('Glebov_F', 1444),
#   Hourly.new('Ivanov_H', 10),
#   Hourly.new('Petrov_H', 8),
#   Hourly.new('Sidorov_H', 7),
#   Hourly.new('Klichko_H', 12),
#   Hourly.new('Zubov_H', 9),
#   Hourly.new('Yakovlev_H', 11),
#   Hourly.new('Vasilev_H', 6),
#   Hourly.new('Romanov_H', 15),
#   Hourly.new('Kot_H', 10),
#   Hourly.new('Cherniy_H', 7),
#   Hourly.new('Glebov_H', 9)
# ]

employees = []
10.times do |_|
  employees << Fixed.new(Faker::Name.name, rand(999..2000))
end
10.times do |_|
  employees << Hourly.new(Faker::Name.name, rand(10..99))
end

new_arr = []
p 'Работники по убыванию среднемесячного заработка: '
employees.sort_by{|x| x.salary}.each do |x|
  obj = {id: x.id, name: x.name, salary: x.salary, class: x.class }
  new_arr << obj
  puts obj.values.join(' - ')
end

p 'Первые 5 работников с наименьшей з/п: '
# puts new_arr.first(5)
new_arr.first(5).each do |obj|
  puts obj.values.join(' - ')
end

p 'Последние 3 идентификатора работников из списка: '
new_arr.last(3).each {|item| puts item[:id]}

p 'Организовать запись и чтение коллекции в/из файл: '

