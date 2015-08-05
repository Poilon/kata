class Fixnum
	def is_prime?
		res = true
		2.upto(Math.sqrt(self).floor) do |i|
			res &&= !(self % i == 0)
		end
		res
	end
end
def first_100_primes
	res = []
	i = 0
	while res.length <= 100
		i += 1
		res << i if i.is_prime?
	end
	res.each { |e| puts e }
end

first_100_primes
