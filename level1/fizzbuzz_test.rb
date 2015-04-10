require 'minitest/autorun'

require_relative 'level1'

class FizzBuzzTest < Minitest::Test
  def test_zero
    assert_equal ['FizzBuzz'], fizzbuzz(0)
  end

  def test_one
    assert_equal ['FizzBuzz', 1], fizzbuzz(1)
  end

  def test_three
    assert_equal ['FizzBuzz', 1, 2, 'Fizz'], fizzbuzz(3)
  end

  def test_five
    assert_equal ['FizzBuzz', 1, 2, 'Fizz', 4, 'Buzz'], fizzbuzz(5)
  end

  def test_six
    assert_equal ['FizzBuzz', 1, 2, 'Fizz', 4, 'Buzz', 'Fizz'], fizzbuzz(6)
  end

  def test_ten
    expected = ['FizzBuzz', 1, 2, 'Fizz', 4,
                'Buzz', 'Fizz', 7, 8, 'Fizz',
                'Buzz']
    assert_equal expected, fizzbuzz(10)
  end

  def test_fifteen
    expected = ['FizzBuzz', 1, 2, 'Fizz', 4,
                'Buzz', 'Fizz', 7, 8, 'Fizz',
                'Buzz', 11, 'Fizz', 13, 14,
                'FizzBuzz']
    assert_equal expected, fizzbuzz(15)
  end

  def test_99
    expected = ['FizzBuzz', 1, 2, 'Fizz', 4, 'Buzz',
                'Fizz', 7, 8, 'Fizz', 'Buzz',
                11, 'Fizz', 13, 14, 'FizzBuzz',
                16, 17, 'Fizz', 19, 'Buzz',
                'Fizz', 22, 23, 'Fizz', 'Buzz',
                26, 'Fizz', 28, 29, 'FizzBuzz',
                31, 32, 'Fizz', 34, 'Buzz',
                'Fizz', 37, 38, 'Fizz', 'Buzz',
                41, 'Fizz', 43, 44, 'FizzBuzz',
                46, 47, 'Fizz', 49, 'Buzz',
                'Fizz', 52, 53, 'Fizz', 'Buzz',
                56, 'Fizz', 58, 59, 'FizzBuzz',
                61, 62, 'Fizz', 64, 'Buzz',
                'Fizz', 67, 68, 'Fizz', 'Buzz',
                71, 'Fizz', 73, 74, 'FizzBuzz',
                76, 77, 'Fizz', 79, 'Buzz',
                'Fizz', 82, 83, 'Fizz', 'Buzz',
                86, 'Fizz', 88, 89, 'FizzBuzz',
                91, 92, 'Fizz', 94, 'Buzz',
                'Fizz', 97, 98, 'Fizz']
    assert_equal expected, fizzbuzz(99)
  end
end
