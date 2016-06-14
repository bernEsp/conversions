require 'roman'
module Conversions

  def to_roman
    Roman(self)
  end

  private 
    def Roman(num)
      return num if num.is_a? Roman
      Roman.new(num).roman
    end
end
