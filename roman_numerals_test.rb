require 'minitest/autorun'
require_relative 'roman_numerals.rb'
class Roman_numerals_test < Minitest::Test

  def test_that_first_function_returns_hash
    assert_equal(Hash, letters().class)
  end
  def test_that_hash_has_enough_elements_currently
    assert_equal(13, letters().count)
  end
  # def test_that_roman_converter_returns_argument
  #   assert_equal(9, roman_converter(9))
  # end
  def test_that_can_convert_9
    assert_equal("IX", roman_converter(9))
  end
  def test_that_can_convert_numbers_in_the_teens
    assert_equal("XI", roman_converter(11))
    assert_equal("XIV", roman_converter(14))
    assert_equal("XIX", roman_converter(19))
    assert_equal("XVI", roman_converter(16))
    assert_equal("XVIII", roman_converter(18))
  end
  def test_that_works_on_bigger_numbers
    assert_equal("MCMLXXXIX", roman_converter(1989))
    assert_equal("MLXVI", roman_converter(1066))
    assert_equal("XLIX", roman_converter(49))
    assert_equal("CMXCIX", roman_converter(999))
    assert_equal("DCLXVI", roman_converter(666))
  end
  def test_that_arabic_returns_correct
    assert_equal("X", arabic_converter("X"))
  end 
end  