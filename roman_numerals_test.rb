require 'minitest/autorun'
require_relative 'roman_numerals.rb'
class Roman_numerals_test < Minitest::Test

  def test_that_first_function_returns_hash
    assert_equal(Hash, letters().class)
  end
end  