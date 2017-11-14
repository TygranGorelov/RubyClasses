class Basic

  @@id = 0
  attr_accessor :salary, :name, :id

  def initialize
    @id = @@id += 1
    @name = name
  end

  def calculate
    p 'Smth'
  end

end
