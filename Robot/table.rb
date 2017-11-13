class Table

  attr_accessor :a, :b

  def initialize (a, b)
    @a = a
    @b = b
  end

  def valid_size?(a, b)
    @a.positive? && @b.positive?
  end

end
