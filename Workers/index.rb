require 'rubygems'
require 'bundler/setup'
require 'faker'
require 'csv'
require './Employer'
require './HourlyEmployer'
require './FixedSalaryEmployer'

employees = []
10.times do |_|
  employees << FixedSalaryEmployer.new(Faker::Name.name, rand(1500..2500))
end

10.times do |_|
  employees << HourlyEmployer.new(Faker::Name.name, rand(10..20))
end

employees.last(5).each { |e| e.salary = 100 }

new_arr = []
p 'Работники по убыванию среднемесячного заработка: '
employees.sort_by(&:calculate).each do |employee|
  obj = {
    id: employee.id,
    name: employee.name,
    avarage: employee.calculate,
    class: employee.class
  }
  employee.instance_variable_set(:@avarage, employee.calculate)
  new_arr << employee
  p obj.values.join(' - ')
end

p 'Первые 5 работников с наименьшей з/п: '
new_arr.first(5).each { |obj| p obj.to_s.split(',').join(' - ') }

p 'Последние 3 идентификатора работников из списка: '
new_arr.last(3).each { |item| puts item.id }

p 'Организовать запись и чтение коллекции в/из файл: '

headers = employees.at(0).instance_variables.reject {|variable| variable == :@salary}.map {|v| v.to_s.gsub(/@/, '')}

headers.push('type')
p 'Запись: '
CSV.open('data.csv', 'w', col_sep: ',', write_headers: true, headers: headers) do |csv|
  employees.each do |man|
    csv << man.to_s.parse_csv
  end
  p 'Записано!'
end

p 'Чтение: '

csv = CSV.read('data.csv', :headers=>true)
p csv['name'].first(5)
p csv['avarage'].first(5)

p '******' * 10
p 'Проверка'

name = 'data.csv'
p name.reverse.split('.')[0].reverse == 'csv' ? 'Формат файла корректный!' :  'Формат файла НЕ корректный!'

File.read(name).class
str = File.read(name)
p str.split("\n")[0].split(',').count == 4 ? 'Кол-во столбцов верное' : 'Кол-во столбцов НЕ верное'




