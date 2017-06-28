require 'minitest_helper'

class Kata::RomanNumerals

  describe '#convert' do
    it 'converts 1 to the I' do
      assert_equal 'I', Kata::RomanNumerals.convert(1)
    end
  end

end