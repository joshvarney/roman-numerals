require 'minitest/autorun'
require_relative 'roman_numerals.rb'
class Roman_numerals_test < Minitest::Test

  def test_that_first_function_returns_hash
    assert_equal(Hash, letters().class)
  end
  def test_that_hash_has_enough_elements_currently
    assert_equal(7, letters().count)
  end
  def test_that_roman_converter_returns_argument
    assert_equal(9, roman_converter(9))
  end
end  