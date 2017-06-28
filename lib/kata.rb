require "kata/version"

module Kata
  class RomanNumerals
    def self.convert(number)
      first = ''
      if (number / 10).truncate == 4
        first = 'XL'
      elsif (number/10).truncate == 10
        first = 'C'
      elsif (number/10).truncate == 100
        first = 'M'
      end

      last = ''
      last = case number % 10
             when 1
               'I'
             when 2
               'II'
             when 4
               'IV'
             when 5
               'V'
             else
               ''
             end

      first + last
    end
  end
end
