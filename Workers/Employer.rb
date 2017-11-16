class Employer
  attr_accessor :salary, :name, :id
  OUTPUT_HEADER = %w[ID Name Salary].freeze

  def initialize(name, salary, id = nil)
    @id = id || SecureRandom.hex
    @name = name
    @salary = salary
 end

  def to_s
    [@id, @name, calculate].join(',')
  end

  def calculate; end
end
