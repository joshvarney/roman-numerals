require 'minitest/autorun'
require_relative 'roman_numerals.rb'
class Roman_numerals_test < Minitest::Test

  # def test_that_first_function_returns_hash
  #   assert_equal(Hash, letters().class)
  # end
  # def test_that_hash_has_enough_elements_currently
  #   assert_equal(13, letters().count)
  # end
  # def test_that_roman_converter_returns_argument
  #   assert_equal(9, roman_converter(9))
  # end
  # def test_that_can_convert_9
  #   assert_equal("IX", roman_converter(9))
  # end
  # def test_that_can_convert_numbers_in_the_teens
  #   assert_equal("XI", roman_converter(11))
  #   assert_equal("XIV", roman_converter(14))
  #   assert_equal("XIX", roman_converter(19))
  #   assert_equal("XVI", roman_converter(16))
  #   assert_equal("XVIII", roman_converter(18))
  # end
  # def test_that_works_on_bigger_numbers
  #   assert_equal("MCMLXXXIX", roman_converter(1989))
  #   assert_equal("MLXVI", roman_converter(1066))
  #   assert_equal("XLIX", roman_converter(49))
  #   assert_equal("CMXCIX", roman_converter(999))
  #   assert_equal("DCLXVI", roman_converter(666))
  # end
  # def test_that_arabic_returns_correct
  #   assert_equal("X", arabic_converter("X"))
  # end
  # def test_that_converter_splits_into_array
  #   assert_equal(Array, arabic_converter("X").class)
  #   assert_equal(["X", "I"], arabic_converter("XI"))
  #   assert_equal(5, arabic_converter("MXIIV").count)
  # end
  # def test_that_converter_splits_into_array
  #   assert_equal(["XC", 0, "IV", 0, "IX", 0], arabic_converter("XCIVIX"))
  #   assert_equal(["X", "I", "IX", 0], arabic_converter("XIIX"))
  #   assert_equal(["M", "X", "I", "IV", 0], arabic_converter("MXIIV"))
  # end
   def test_that_can_convert_numbers_in_the_teens
    assert_equal(11, arabic_converter("XI"))
    assert_equal(14, arabic_converter("XIV"))
    assert_equal(19, arabic_converter("XIX"))
    assert_equal(16, arabic_converter("XVI"))
    assert_equal(18, arabic_converter("XVIII"))
  end
  def test_that_can_convert_numbers_in_bigger_with_arabic_converter
    assert_equal(1989, arabic_converter("MCMLXXXIX"))
    assert_equal(1066, arabic_converter("MLXVI"))
    assert_equal(49, arabic_converter("XLIX"))
    assert_equal(999, arabic_converter("CMXCIX"))
    assert_equal(666, arabic_converter("DCLXVI"))
  end
  # def test_that_will_return_invalid_if_class_not_string
  #   assert_equal("Invalid Input", arabic_converter(19))
  #   assert_equal("Invalid Input", arabic_converter(true))
  #   assert_equal("Invalid Input", arabic_converter(["XV", "I"]))
  # end
  def test_that_will_return_invalid_if_too_many_letters_or_wrong_characters
    assert_equal("Invalid Input", arabic_converter("IIII"))
    assert_equal("Invalid Input", arabic_converter("1"))
    assert_equal("Invalid Input", arabic_converter("xV"))
    assert_equal("Invalid Input", arabic_converter("a.]"))
  end    
end  