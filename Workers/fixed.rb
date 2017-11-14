require './basic'
require './hourly'

class Fixed < Basic

  attr_accessor :name, :month_wage

  def initialize(name, month_wage)
    @name = name
    @month_wage = month_wage
    calculate
    super()
  end

  def calculate
    @salary = @month_wage
  end

end
