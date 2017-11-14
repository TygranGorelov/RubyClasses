class Workers

  @@id = 0
  attr_accessor :salary, :name, :id, :avarage

  def initialize(name, salary)
    @id = @@id += 1
    @name = name
    @salary = salary
    @avarage = calculate
  end

  def calculate; end
end
