require 'pry'

class CreditCheck

  attr_reader   :cc_number,
                :cc_split

  def initialize(cc_number)
    @cc_number = cc_number
    @cc_split = []
  end

  def create_integer_array
    @cc_split = cc_number.split(//).map! do |digit|
      digit.to_i
    end
  end

  def double_odd_indices
    @cc_split.map! do |digit|
      if @cc_split.index(digit).odd? == true
        digit * 2
      else
        digit
      end
    end
    # return @cc_split
  end

end
