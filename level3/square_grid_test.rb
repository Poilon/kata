require 'minitest/autorun'
require_relative 'level3'

class SquareGridTest < Minitest::Test
  def test_one_square_grid
    assert_equal 1, SquareGrid.new(1).feynmans_count
  end

  def test_two_squares_grid
    assert_equal 5, SquareGrid.new(2).feynmans_count
  end

  def test_three_squares_grid
    assert_equal 14, SquareGrid.new(3).feynmans_count
  end

  def test_four_squares_grid
    assert_equal 30, SquareGrid.new(4).feynmans_count
  end

  def test_five_squares_grid
    assert_equal 55, SquareGrid.new(5).feynmans_count
  end

  def test_twelve_squares_size
    assert_equal 650, SquareGrid.new(12).feynmans_count
  end
end
