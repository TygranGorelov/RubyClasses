require './employee'

class HourlyEmployee < Employee

  def calculate
    (20.8 * 8 * @salary.to_i).to_i
  end

end
