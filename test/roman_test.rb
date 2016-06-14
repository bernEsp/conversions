require 'minitest/autorun'
require './lib/roman'

class RomanTest <  Minitest::Test

  def test_convert_7_to_roman
    assert_equal 'VII', Roman.new(7).roman
  end

  def test_convert_77_to_roman
    assert_equal 'LXXVII', Roman.new(77).roman
  end

  def test_convert_39_to_roman
    assert_equal 'XXXIX', Roman.new(39).roman
  end

end
