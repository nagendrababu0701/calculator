gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'

class CalculatorTest < Minitest::Test
  attr_reader :result, :calculator

  def setup
    @calculator = Calculator.new
  end

  def test_add
    assert_equal 9, @calculator.add(5,4)
  end

  def test_substract
    assert_equal 1, @calculator.substract(5,4)
  end

  def test_divide
    assert_equal 1, @calculator.divide(5,4)
    assert_equal 0, @calculator.divide(0,1)
    assert_raises(RuntimeError) {@calculator.divide(5,0)}
    assert_raises(RuntimeError) {@calculator.divide(0,0)}
  end

  def test_multiply
    assert_equal 20, @calculator.multiply(5,4)
    assert_equal 0, @calculator.multiply(5,0)
  end

end