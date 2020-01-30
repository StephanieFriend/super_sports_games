require_relative 'standard_deviation'
class Event

  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    ages.sum.to_f / ages.length.to_f
  end

  def standard_deviation_age
    standard_deviation = StandardDeviation.new(@ages)
    standard_deviation.calculate_standard_deviation
  end
end