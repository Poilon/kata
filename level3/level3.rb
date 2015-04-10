class SquareGrid
  def initialize(edge_size)
    @edge_size = edge_size
  end

  def feynmans_count
    squares = 0
    squares += @edge_size**2
    until @edge_size == 0
      squares += (@edge_size - 1)**2
      @edge_size -= 1
    end
    squares
  end
end

puts(SquareGrid.new(2).feynmans_count == 5)
