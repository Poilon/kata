def first_100_primes
  numbers = (2..550).to_a
  primes = []
  until primes.length == 100
    primes << numbers.first
    primes.each do |prime|
      numbers.reject! { |num| num % prime == 0 }
    end
  end
  p primes
end

first_100_primes
