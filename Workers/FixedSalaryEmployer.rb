require './Employer'

class FixedSalaryEmployer < Employer

  def calculate
    @salary
  end
end
