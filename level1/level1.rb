def fizzbuzz

	100.times do |i|
		i += 1
		res = ""
		res += "Fizz" if i%3 == 0
		res += "Buzz" if i%5 == 0
		res.empty? ? puts(i) : puts(res)
	end
end


fizzbuzz
