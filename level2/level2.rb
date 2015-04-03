PRIMES = []

# Determines whether a number is prime from the existing list
def is_prime(i)

  PRIMES.each do |prime|
    return true if prime * prime > i # Cannot find dividers anymore

    if (i % prime) == 0
      return false
    end
  end

  return true

end


def first_100_primes

  index = 2

  while PRIMES.length < 100
    if is_prime(index)
      PRIMES << index
    end
    index += 1
  end

  puts PRIMES.join("\n")

end

first_100_primes
