require 'rubygems'
require 'bundler/setup'
require 'faker'
require 'csv'
require './employee'
require './hourly_employee'
require './fixed_salary_employee'

employees = []
10.times do |_|
  employees << FixedSalaryEmployee.new(Faker::Name.name, rand(1500..2500))
end

10.times do |_|
  employees << HourlyEmployee.new(Faker::Name.name, rand(10..20))
end

p 'Работники по убыванию среднемесячного заработка: '
employees.sort_by!(&:calculate)

p 'Первые 5 работников с наименьшей з/п: '
employees.first(5).each { |employer| p employer.to_s }

p 'Последние 3 идентификатора работников из списка: '
employees.last(3).each { |employer| puts employer.id }

p 'Организовать запись и чтение коллекции в/из файл: '
p 'Запись: '
CSV.open('data3.csv', 'w', col_sep: ',', write_headers: true, headers: Employee::OUTPUT_HEADER) do |csv|
  employees.each do |man|
    csv << man.to_s.parse_csv
  end
  p 'Записано!'
end

p employees

# p 'Чтение: '
#
# csv = CSV.read('data3.csv', :headers=>true)
# p csv['name'].first(5)
# p csv['avarage'].first(5)
#
# name = 'data3.csv'
# p name.split('.').last == 'csv' ? 'Формат файла корректный!' :  'Формат файла НЕ корректный!'
#
# if File.exist?(name)
#   str = File.read(name)
#   p str.split("\n")[0].split(',').count == 4 ? 'Кол-во столбцов верное' : 'Кол-во столбцов НЕ верное'
# else
#   p 'Такого файла не существует'
# end
