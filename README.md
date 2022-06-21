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

Notes:<br> 

For any illegal input (non capitals) simply return -1<br> 
In order to complete the round you need to implement the following method: checkout(String) -> Integer<br> 

Where:<br> 

param[0] = e.g. 'AAB', a String containing the SKUs of all the products in the basket<br> 
@return = e.g. 120, an Integer representing the total checkout value of the items<br> 

# Acceptance Criteria
shop.checkout('aBc') # => -1<br> 
shop.checkout('-B8x') # => -1<br> 
shop.checkout(18) # => -1<br> 
shop.checkout('AA') # => 100<br> 
shop.checkout('ABCD') # => 115<br> 
shop.checkout('AAA') # => 130<br> 
shop.checkout('AAAAAA') # => 260<br> 

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
Completed - Passing tests.<br>
Completed - Exercise.<br>

# Additional Report:
Guard clause implemented for a string that is not found on the hash table. However, error occurs if the string starts with a correct :key in the hash table. Subsequent error message follows: "nil can't be coerced into Integer".<br>
- If additional time, to investigate further. 
