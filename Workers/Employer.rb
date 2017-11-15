class Employer

  # @@id = 0
  attr_accessor :salary, :name, :id, :avarage

  def initialize(name, salary)
    # @id = @@id += 1
    @id = SecureRandom.hex
    @name = name
    @salary = salary
    # @avarage = calculate
  end

  def to_s
    "#{@id},#{@name},#{@avarage},#{self.class}"
  end

  def calculate; end
end


# class Test
#
#   def initialize(name)
#     @name = name
#   end
#
#   def test
#     @name += ' lel'
#   end
# end
#
# employers = []
# 5.times { |_| employers << Test.new('lel') }
#
# p employers.each(&:test)