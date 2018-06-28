require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/check_sum'

class CheckSumTest < Minitest::Test

  def test_it_exists
    check_sum = CheckSum.new

    assert_instance_of CheckSum, check_sum
  end

  def test_it_exists
    check_sum = CheckSum.new#(1234567887654321)

    assert_instance_of CheckSum, check_sum
  end

  def test_it_holds_credit_card_number
    check_sum = CheckSum.new

    assert_equal 12344321, check_sum.store_card_number(12344321)
  end

  def test_it_creates_array_of_integers
    check_sum = CheckSum.new
    check_sum.store_card_number(2468)

    assert_equal [2, 4, 6, 8], check_sum.create_integer_array
  end

  def test_it_doubles_every_even_index_digit
    # skip
    check_sum = CheckSum.new
    check_sum.store_card_number(2345)
    check_sum.create_integer_array

    assert_equal [4, 3, 8, 5], check_sum.double_even_indices
  end

  def test_it_sums_elements_greater_than_nine
    # skip
    check_sum = CheckSum.new
    check_sum.store_card_number(4893)
    check_sum.create_integer_array
    check_sum.double_even_indices

    assert_equal [8, 8, 9, 3], check_sum.sum_digits_of_elements_greater_than_nine
  end

  def test_it_sums_all_elements
    # skip
    check_sum = CheckSum.new
    check_sum.store_card_number(4893)
    check_sum.create_integer_array
    check_sum.double_even_indices
    check_sum.sum_digits_of_elements_greater_than_nine

    assert_equal 28, check_sum.sum_all_elements
  end

  def test_it_gives_check_sum_digit
    check_sum = CheckSum.new
    check_sum.store_card_number(554180892379524)
    check_sum.create_integer_array
    check_sum.double_even_indices
    check_sum.sum_digits_of_elements_greater_than_nine
    check_sum.sum_all_elements

    assert_equal 0, check_sum.give_check_sum_digit

    check_sum = CheckSum.new
    check_sum.store_card_number(601179766886782)
    check_sum.create_integer_array
    check_sum.double_even_indices
    check_sum.sum_digits_of_elements_greater_than_nine
    check_sum.sum_all_elements

    assert_equal 8, check_sum.give_check_sum_digit
  end

end

#
