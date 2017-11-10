class Table

  attr_accessor :a, :b

  def initialize (a, b)
    @a = a
    @b = b
  end

  def table
    p 'Table size: a = ' + @a.to_s + ', b = ' + @b.to_s

  end


end

# p 'Table here'