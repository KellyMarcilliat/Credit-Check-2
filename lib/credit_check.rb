require 'pry'

class CreditCheck

  attr_reader   :cc_number,
                :cc_split

  def initialize(cc_number)
    @cc_number = cc_number
    @cc_split = []
  end

  def create_integer_array
    @cc_split = cc_number.digits.reverse
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

  def sum_digits_of_elements_greater_than_ten
    @cc_split.map! do |digit|
      if digit > 9
        digit - 9
      else
        digit
      end
    end
  end

  def sum_all_elements
    @sum_of_digits = @cc_split.sum
  end 



end
