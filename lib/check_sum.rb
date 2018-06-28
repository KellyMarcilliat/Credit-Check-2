require 'pry'
class CheckSum

  def store_card_number(card_number)
    @card_number = card_number
  end

  def create_integer_array
    @card_digits = @card_number.digits.reverse
  end

  def double_even_indices
    @doubled_digits = []
    @card_digits.each.with_index do |digit, index|
      @doubled_digits <<
      if index.even?
        digit * 2
      else
        digit
      end
    end
    return @doubled_digits
  end

  def sum_digits_of_elements_greater_than_nine
    @summed_digits = []
    @doubled_digits.each do |digit|
      @summed_digits <<
      if digit > 9
        digit - 9
      else
        digit
      end
    end
    return @summed_digits
  end

  def sum_all_elements
    @sum_of_digits = @summed_digits.sum
  end

  def give_check_sum_digit
    if @sum_of_digits % 10 > 0
      10 - @sum_of_digits % 10
    else
      @sum_of_digits % 10
    end
  end

  def calculate_check_sum_digit(card_number)
    store_card_number(card_number)
    create_integer_array
    double_even_indices
    sum_digits_of_elements_greater_than_nine
    sum_all_elements
    give_check_sum_digit
  end

end

# check_sum = CheckSum.new
#
# p check_sum.calculate_check_sum_digit(554180892379524)
#
# p check_sum.calculate_check_sum_digit(426684148822564)
#
