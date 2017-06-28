require 'minitest_helper'

class Kata::RomanNumerals
  describe '#convert' do
    it 'converts 1 to I' do
      assert_equal 'I', Kata::RomanNumerals.convert(1)
    end

    it 'converts 2 to II' do
      assert_equal 'II', Kata::RomanNumerals.convert(2)
    end

    it 'converts 5 to V' do
      assert_equal 'V', Kata::RomanNumerals.convert(5)
    end

    it 'converts 44 to XLIV' do
      assert_equal 'XLIV', Kata::RomanNumerals.convert(44)
    end

    it 'converts 45 to XLV' do
      assert_equal 'XLV', Kata::RomanNumerals.convert(45)
    end

    it 'converts 100 to C' do
      assert_equal 'C', Kata::RomanNumerals.convert(100)
    end

    it 'converts 1002 to MII' do
      assert_equal 'MII', Kata::RomanNumerals.convert(1002)
    end
  end
end
