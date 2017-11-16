require './Employer'

class HourlyEmployer < Employer
  def self.from_csv(csv_object)
    new(csv_object['name'], csv_object['salary'], csv_object['id'])
  end

  def calculate
    (20.8 * 8 * @salary.to_i).to_i
  end
end
