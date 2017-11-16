require 'rubygems'
require 'bundler/setup'
require 'faker'
require 'csv'
require './employee'
require './hourly_employee'
require './fixed_salary_employee'
require './file_helper'

include FileHelper

puts 'Введите имя файла для рассчета итоговой запрлаты: '
income_file = 'data_in.csv'

# Чтение
employees = []
read(income_file, true).each do |x|
  if x['Type'] == 'Fixed'
    employees << FixedSalaryEmployee.from_csv(x)
  elsif x['Type'] == 'Hourly'
    employees << HourlyEmployee.from_csv(x)
  end
end

# Запись
outcome_file = 'data_out.csv'
write(outcome_file, employees, Employee::OUTPUT_HEADER)
