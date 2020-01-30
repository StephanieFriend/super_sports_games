ages = [24, 30, 18, 20, 41]

sum = ages.sum

num = ages.length

divide = sum.to_f / num.to_f

sub = ages.map { |age| age - divide }

square = sub.map { |s| s ** 2 }

sum2 = square.sum

divide2 = sum2 / num

square = Math.sqrt(divide2).round(2)

p square
