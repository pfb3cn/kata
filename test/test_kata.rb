require 'minitest_helper'

class TestKata < MiniTest::Unit::TestCase
  

  def test_it_converts_one_to_I
    assert_equal 1, Kata::RomanNumerals.convert(1)
  end
end
