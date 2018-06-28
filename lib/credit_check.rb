require 'pry'

class CreditCheck

  def store_card_number(card_number)
    @card_number = card_number
  end

  def create_integer_array
    @card_digits = @card_number.digits.reverse
  end

  def normalize_number_of_digits
    if @card_digits.count % 2 == 1
      @card_digits.unshift(0)
    else
      @card_digits
    end
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

  def evaluate_validity
    if @sum_of_digits % 10 == 0
      true
    else
      false
    end
  end

  def express_validity
    if @sum_of_digits % 10 == 0
      "The number #{@card_number} is valid."
    else
      "The number #{@card_number} is invalid."
    end
  end

  def valid_number?(card_number)
    store_card_number(card_number)
    create_integer_array
    normalize_number_of_digits
    double_even_indices
    sum_digits_of_elements_greater_than_nine
    sum_all_elements
    evaluate_validity
  end

  def validation_output(card_number)
    store_card_number(card_number)
    create_integer_array
    normalize_number_of_digits
    double_even_indices
    sum_digits_of_elements_greater_than_nine
    sum_all_elements
    express_validity
  end
end
