def fizzbuzz(limit)
  serie = (0..limit).to_a
  serie.map! do |number|
    if multiple_of_15?(number)
      'FizzBuzz'
    elsif multiple_of_3?(number)
      'Fizz'
    elsif multiple_of_5?(number)
      'Buzz'
    else
      number
    end
  end
end

def multiple_of_3?(number)
  number % 3 == 0
end

def multiple_of_5?(number)
  number % 5 == 0
end

def multiple_of_15?(number)
  number % 15 == 0
end

p fizzbuzz(99)
