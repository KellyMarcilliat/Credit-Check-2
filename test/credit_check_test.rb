require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit_check = CreditCheck.new#(1234567887654321)

    assert_instance_of CreditCheck, credit_check
  end

  def test_it_holds_credit_card_number
    credit_check = CreditCheck.new

    assert_equal 12344321, credit_check.store_card_number(12344321)
  end

  def test_it_creates_array_of_integers
    credit_check = CreditCheck.new
    credit_check.store_card_number(2468)

    assert_equal [2, 4, 6, 8], credit_check.create_integer_array
  end

  def test_it_normalizes_digit_count
    credit_check = CreditCheck.new
    credit_check.store_card_number(24680)
    credit_check.create_integer_array

    assert_equal [0, 2, 4, 6, 8, 0], credit_check.normalize_number_of_digits

    credit_check = CreditCheck.new
    credit_check.store_card_number(2468)
    credit_check.create_integer_array

    assert_equal [2, 4, 6, 8], credit_check.normalize_number_of_digits
  end


  def test_it_doubles_every_even_index_digit
    # skip
    credit_check = CreditCheck.new
    credit_check.store_card_number(2345)
    credit_check.create_integer_array
    credit_check.normalize_number_of_digits

    assert_equal [4, 3, 8, 5], credit_check.double_even_indices
  end

  def test_it_sums_elements_greater_than_nine
    # skip
    credit_check = CreditCheck.new
    credit_check.store_card_number(4893)
    credit_check.create_integer_array
    credit_check.normalize_number_of_digits
    credit_check.double_even_indices

    assert_equal [8, 8, 9, 3], credit_check.sum_digits_of_elements_greater_than_nine
  end

  def test_it_sums_all_elements
    # skip
    credit_check = CreditCheck.new
    credit_check.store_card_number(4893)
    credit_check.create_integer_array
    credit_check.normalize_number_of_digits
    credit_check.double_even_indices
    credit_check.sum_digits_of_elements_greater_than_nine

    assert_equal 28, credit_check.sum_all_elements
  end

  def test_it_evaluates_validity
    credit_check = CreditCheck.new
    credit_check.store_card_number(5541808923795240)
    credit_check.create_integer_array
    credit_check.normalize_number_of_digits
    credit_check.double_even_indices
    credit_check.sum_digits_of_elements_greater_than_nine
    credit_check.sum_all_elements
    credit_check.evaluate_validity

    assert_equal true, credit_check.evaluate_validity

    credit_check = CreditCheck.new
    credit_check.store_card_number(5541801923795240)
    credit_check.create_integer_array
    credit_check.normalize_number_of_digits
    credit_check.double_even_indices
    credit_check.sum_digits_of_elements_greater_than_nine
    credit_check.sum_all_elements
    credit_check.evaluate_validity

    assert_equal false, credit_check.evaluate_validity
  end

end
