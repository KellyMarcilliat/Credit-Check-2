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
    @cc_split.map!.with_index do |digit, index|
      if index % 2 == 0
        digit
      else
        digit * 2
      end
    end
  end

end
