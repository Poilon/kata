# write code here

class SquareGrid

  attr_reader :edge_size

  def initialize(edge_size)
    @edge_size = edge_size
  end

  def feynmans_count
    return 1 if edge_size == 1

    return edge_size ** 2 + SquareGrid.new(edge_size-1).feynmans_count
  end

end


puts(SquareGrid.new(2).feynmans_count == 5)
puts(SquareGrid.new(8).feynmans_count == 204)
