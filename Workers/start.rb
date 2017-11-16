require 'rubygems'
require 'bundler/setup'
require 'faker'
require 'csv'
require './Employer'
require './HourlyEmployer'
require './FixedSalaryEmployer'

puts 'Введите имя файла для рассчета итоговой запрлаты: '
income_file = gets.strip

# чтение
if File.exist?(income_file) && File.read(income_file).split("\n")[0].split(',').count == 4 && income_file.split('.').last == 'csv'
# чтение
  employees = []
  csv = CSV.read(income_file, col_sep: ',', headers: true)
  csv.each do |x|
    if x['type'] == 'Fixed'
      employees << FixedSalaryEmployer.from_csv(x)
    elsif x['type'] == 'Hourly'
      employees << HourlyEmployer.from_csv(x)
    end
  end
else
  p 'Такого файла не существует или неверный формат файла!'
end

# запись
outcome_file = 'data_out.csv'
CSV.open(outcome_file, 'w', col_sep: ',', write_headers: true, headers: Employer::OUTPUT_HEADER) do |csv|
  employees.each do |man|
    csv << man.to_s.parse_csv
  end
  p 'Рассчитано и записано в файл: ' + outcome_file.to_s
end
