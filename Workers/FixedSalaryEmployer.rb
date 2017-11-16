require './Employer'

class FixedSalaryEmployer < Employer
  def calculate
    @salary
  end

  def self.from_csv(csv_object)
    new(csv_object['name'], csv_object['salary'], csv_object['id'])
  end
end
