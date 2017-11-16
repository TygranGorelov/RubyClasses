module FileHelper

  def read(path, with_headers = false)
    error = !(File.exist?(path) && path.split('.').last == 'csv')
    csv = CSV.read(path, col_sep: ',', headers: with_headers)
    unless error
      # error = csv.headers.count != 4
      error = csv.all? { |row| row.count != 4 }
    end
    if error
      p('Такого файла не существует или неверный формат файла!')
      [] #чтобы не выполнялся each
    else
      csv
    end
  end

  def write(file, data, headers = nil)
    CSV.open(file, 'w', col_sep: ',', write_headers: !headers.nil?, headers: headers ) do |csv|
      data.each do |man|
        csv << man.to_s.parse_csv
      end
      p 'Рассчитано и записано в файл: ' + file.to_s
    end
  end
end


