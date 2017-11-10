class Table

  attr_accessor :a, :b

  def initialize (a, b)
    @a = a.to_i
    @b = b.to_i
  end

end

# p 'Table here'