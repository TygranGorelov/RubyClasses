require './basic'
require './fixed'

class Hourly < Basic

  attr_accessor :name, :month_wage

  def initialize(name, wage_per_hour)
    @name = name
    @wage_per_hour = wage_per_hour
    calculate
    super()
  end

  def calculate
    @salary = (20.8 * 8 * @wage_per_hour).to_i
  end

end
