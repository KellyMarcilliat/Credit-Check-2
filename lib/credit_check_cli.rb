require './lib/credit_check'

puts "Please supply the credit card number you would like to validate. > "
@supplied_number = $stdin.gets.chomp.to_i

credit_check = CreditCheck.new

puts credit_check.validation_output(@supplied_number)

#
