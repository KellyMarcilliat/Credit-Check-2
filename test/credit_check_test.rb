require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/credit_check'

class CreditCheckTest < Minitest::Test

  def test_it_exists
    credit_check = CreditCheck.new("1234567887654321")

    assert_instance_of CreditCheck, credit_check
  end

  def test_it_has_cc_number
    credit_check = CreditCheck.new("1234567887654321")

    assert_equal "1234567887654321", credit_check.cc_number
  end

  def test_it_converts_string_into_array_of_integers
    credit_check = CreditCheck.new("2468")

    assert_equal [], credit_check.cc_split

    assert_equal [2, 4, 6, 8], credit_check.create_integer_array
  end

  def test_it_doubles_every_odd_index_digit
    credit_check = CreditCheck.new("1111")
    credit_check.create_integer_array

    assert_equal [1, 2, 1, 2], credit_check.double_odd_indices
  end

end
