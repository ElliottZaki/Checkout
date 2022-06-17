# Project title: 
Checkout - Process review exercise.

# Motivation:
Create a programme that simulates a supermarket checkout system. The programme should be able to calculate the total price of a number of items - to be run in a REPL like IRB. I/O is not required for this exercise.

# Requirements: 
In a normal supermarket, things are identified using Stock Keeping Units, or SKUs. In our store, we'll use individual letters of the alphabet (A, B, C, and so on). Our goods are priced individually. In addition, some items are multi-priced: buy n of them, and they'll cost you y pounds.

For example, item A might cost 50 pounds individually, but this week we have a special offer:

Buy three As and they'll cost you 130.
Our price table and offers:

    +------+-------+----------------+
    | Item | Price | Special offers |
    +------+-------+----------------+
    | A    | 50    | 3A for 130     |
    | B    | 30    | 2B for 45      |
    | C    | 20    |                |
    | D    | 15    |                |
    +------+-------+----------------+

Notes:

For any illegal input (non capitals) simply return -1
In order to complete the round you need to implement the following method: checkout(String) -> Integer

Where:

param[0] = e.g. 'AAB', a String containing the SKUs of all the products in the basket
@return = e.g. 120, an Integer representing the total checkout value of the items

# Acceptance Criteria
shop.checkout('aBc') # => -1
shop.checkout('-B8x') # => -1
shop.checkout(18) # => -1
shop.checkout('AA') # => 100
shop.checkout('ABCD') # => 115
shop.checkout('AAA') # => 130
shop.checkout('AAAAAA') # => 260

# Installation instructions:
On CML type:<br> 
brew install ruby<br>
current Ruby version as per last updated push(ruby-3.0.0)<br>
gem install rspec<br>
rspec --init<br>

# How to run programme:
On CML type: <br>
cd checkout <br>

# How to run tests:
On CML type:<br> 
cd checkout <br>
rspec<br>

# Build status:
Testing phase
