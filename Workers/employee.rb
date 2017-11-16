class Employee

  attr_accessor :salary, :name, :id

  OUTPUT_HEADER = %w[ID Name Salary].freeze

  def initialize(name, salary, id = nil)
    @name = name
    @salary = salary
    @id = id || SecureRandom.hex
 end

  def to_s
    [@id, @name, calculate].join(',')
  end

  def self.from_csv(csv_object)
    new(csv_object['Name'], csv_object['Salary'], csv_object['ID'])
  end

  def calculate; end
end
