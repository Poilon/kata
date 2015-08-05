# write code here
class SquareGrid
	attr_accessor :edge_size
	def initialize(e)
		@edge_size = e
	end

	def feynmans_count
		(1..edge_size).to_a.inject(0) { |res, n| res += n**2 }
	end
end

puts(SquareGrid.new(2).feynmans_count == 5)
