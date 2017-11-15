require './Employer'

class HourlyEmployer < Employer

  def calculate
    (20.8 * 8 * @salary).to_i
  end
end

