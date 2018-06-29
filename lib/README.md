# Questions

1. What are you proud of?  The fact that I was able to both finish my entire project and spend a significant amount of time helping my peers.

1. What do you need to improve? The accuracy of what I do is getting better; I still need to improve the speed.  Also, I'd like to memorize more methods, so I can use them without reference to Ruby-docs.

1. What questions do you still have? I'd like to know more about testing when using a CEO method.  Should I be testing the individual methods as I did, or testing the CEO method, or testing both?

# Rubric

## Functionality 4

Notes:

- [x] Student completes through Iteration 3

## Mechanics 3

Notes:

The student(s):

- [x] appropriately uses Strings, Integers, Floats, Ranges, Symbols, Nils, Arrays, and Hashes
- [x] implements best-choice enumerable methods to iterate over collections
- [x] uses boolean expressions and flow control structures to logically manage a program's flow
- [x] uses methods, arguments, and return values to break code into logical components
- [x] creates Classes that utilize instance variables, attribute accessors, and instance methods

## Design 4

Notes:

The student(s):

- [x] adheres to the Single Responsibility and DRY principles
- [x] creates Objects and Classes that appropriately encompass state and behavior
- [x] uses instance and local variables appropriately
- [x] writes readable code with the following characteristics:
    * Variable and method names are self explanatory
    * Methods are under 7 lines
    * Lines of code are under 80 characters
    * Project directory structure adheres to convention
    * A linter reports less than 5 errors

## Testing 3

Notes:

The student(s):

- [x] writes Minitest tests that describe the expected behavior of a program according to technical specifications
- [x] names and orders tests so that a test file reads like documentation
- [x] writes Minitest assertions that accurately test a piece of functionality
- [x] writes a test before writing code that implements the behavior to make that test pass
- [ ] writes both integration and unit tests

## Version Control 3

Notes:

The student(s):

- [x] hosts their code on the master branch of their remote repository
- [ ] makes commits in small chunks of functionality
- [x] submits and merges Pull Requests using the Github interface

Credit Check = Project Assignment
Learning Goals:
 - break a problem into logical components
 - implement approriate Ruby syntax
 - utilize methods and classes

Let’s write a program that can detect mistakes in a credit card number.

Background: Luhn Algorithm
The Luhn algorithm is a check-summing algorithm best known for checking the validity of credit card numbers.

You can checkout the full description on Wikipedia: http://en.wikipedia.org/wiki/Luhn_algorithm

Description
(adapted from Wikipedia)

The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. This full account number must pass the following test:

from the rightmost digit, which is the check digit, moving left, double the value of every second digit
if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
take the sum of all the digits
if and only if the total modulo 10 is equal to 0 then the number is valid
Example
Validating an Account Number
Using 79927398713 as our sample input:

Account number:        7   9   9   2   7   3   9   8   7   1   3
2x every other digit:  7   18  9   4   7   6   9   16  7   2   3
Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   3
Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70
Modulo Ten:            70 % 10 == 0
Since the summed results modulo 10 is zero, the account number is valid according to the algorithm.

Assignment
Iteration 1 - The Luhn Algorithm
Start with this template and save it as credit_check.rb in your lib directory:

card_number = "4929735477250543"

# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
Sample Data
If helpful, you can use the following sample data:

Valid: 5541808923795240, 4024007136512380, 6011797668867828
Invalid: 5541801923795240, 4024007106512380, 6011797668868728
Iteration 2 - Github and Classes
Create a repository on Github and push your algorithm to it. From here on, all your code should be hosted on Github.

Create a class that responds to the following interaction pattern:

credit_check = CreditCheck.new
=> #<CreditCheck:0x00007fe82d2a8a38>
credit_check.valid_number?(5541808923795240)
=> true
credit_check.valid_number?(5541801923795240)
=> false
credit_check.validation_ouput(5541808923795240)
=> "The number 5541808923795240 is valid"
credit_check.validation_ouput(5541801923795240)
=> "The number 5541801923795240 is invalid"
Iteration 3 - Branching and Minitest
Create a branch in your local git repo called testing

Create a Minitest test that accurately covers the expected behavior of your CreditCheck class

Push the branch up to your Github repository and merge the branch using a Pull Request

Iteration 4 - Extensions
Create a command line interface that allows the user to validate a number

Add functionality to calculate the check sum digit.

Can you make it work for American Express numbers? 342804633855673 is valid but 342801633855673 is invalid
