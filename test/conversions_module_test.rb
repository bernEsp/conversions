require 'minitest/autorun'
require './lib/conversions'


class ConversionsModuleTest < Minitest::Test
  include Conversions
  class Num
    include Conversions

    def initialize(num)
      @num = num
    end

    def to_int
      @num
    end
  end

  def setup
    @num = Num.new 9
  end

  def test_num_can_know_about_protocol_convertion_to_roman
    assert_respond_to @num, :to_roman
  end

  def test_num_to_roman
    assert_equal 'IX', @num.to_roman
  end

  def test_roman_conversion_of_1000
    assert_equal 'M', Roman(1000)
  end

  def test_roman_conversion_of_0
    assert_equal '', Roman(0)
  end

end
