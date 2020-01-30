class StandardDeviation

  def initialize(numbers)
    @numbers = numbers
  end

  def calculate_standard_deviation
    sum = @numbers.sum

    num = @numbers.length

    divide = sum.to_f / num.to_f

    sub = @numbers.map { |number| number - divide }

    square = sub.map { |s| s ** 2 }

    sum2 = square.sum

    divide2 = sum2 / num

    square = Math.sqrt(divide2).round(2)

    p square
  end
end

standard_deviation = StandardDeviation.new([24, 30, 18, 20, 41])
standard_deviation.calculate_standard_deviation