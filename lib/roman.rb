## find if exist the right value
# if not find the closest bigger number
# for intances
# 9
# 5 
# 9-5
# 4
# 1 * 3 < 4
# closest bigger 4 
# 5
# apply subtraction
# IV
# 2 example
# 49
# 10
# 10 * 3 < 49
# apply subtraction
# 50
# L
# get last roman symbol before except V
# X 
# XL
# 49 - 40
# 9
# V
# 9 - 5
# 4 
# 1
# 1 * 3 < 4
# apply subtraction
# not valid substractio return to original number
# 9
# apply substraction
# IX
#
# valid substractions
# I, X, C
# IX = 9
# XL = 40
# XC = 90
# CD = 400
# CM = 900 
#
class Roman
  NUMERALS = {1=> 'I', 4=> 'IV', 5=> 'V', 9=> 'IX', 10=> 'X', 49=> 'XL', 50=> 'L', 90=> 'XC', 
    100=> 'C', 400=> 'CD', 500=> 'D', 900=> 'CM', 1000=> 'M' }
  attr_reader :roman

  def initialize(number)
    @int_num = number.to_int
    @roman = ''
    roman_convertion
  end
  
  private
   def roman_convertion
     _convert
   end

  protected
    def closest_numeral
      NUMERALS.keys.select { |numeral| numeral <= @int_num}.last
    end

    def _convert
      while @int_num > 0
        @roman += NUMERALS.fetch(closest_numeral, '-').to_s 
        @int_num -= closest_numeral
      end
    end
end
