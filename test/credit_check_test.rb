require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit_check = CreditCheck.new(1234567887654321)

    assert_instance_of CreditCheck, credit_check
  end

  def test_it_has_cc_number
    credit_check = CreditCheck.new(1234567887654321)

    assert_equal 1234567887654321, credit_check.cc_number
  end

  def test_it_creates_array_of_integers
    credit_check = CreditCheck.new(2468)

    assert_equal [], credit_check.cc_split

    assert_equal [2, 4, 6, 8], credit_check.create_integer_array
  end

  def test_it_doubles_every_odd_index_digit
    credit_check = CreditCheck.new(2222)
    credit_check.create_integer_array

    assert_equal [2, 4, 2, 4], credit_check.double_odd_indices
  end

  def test_it_sums_elements_greater_than_nine
    credit_check = CreditCheck.new(4893)
    credit_check.create_integer_array
    credit_check.double_odd_indices

    assert_equal [4, 7, 9, 6], credit_check.sum_digits_of_elements_greater_than_nine
  end

  def test_it_sums_all_elements
    credit_check = CreditCheck.new(4893)
    credit_check.create_integer_array
    credit_check.double_odd_indices
    credit_check.sum_digits_of_elements_greater_than_nine

    assert_equal 26, credit_check.sum_all_elements
  end

end
