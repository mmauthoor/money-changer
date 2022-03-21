# The Envato Money Changer

The Envato Money Changer is a simple Ruby program run on the command line. It is designed to calculate the correct coins to give customers in a shop as change. 

Users can input an amount of change in cents as a whole number and the program will calculate and return the appropriate coins to give to the customer. 
The coin types are limited to 50, 20, 10, 5, 2, and 1 cents in value. 

E.g:
```
\\ User input
> 24
\\ Output
> 1 * 20 cent coins
> 2 * 2 cent coins
```

## Technologies & installation
The EMC is written entirely in Ruby and requires no Gem installations. Follow these instructions to run the program:
- **On a Mac:** as Ruby is pre-installed on Macs, navigate into the directory containing the `money_changer.rb` file and simply run the command `ruby money_changer.rb` in the terminal.
- **In other operating systems (e.g. Windows, Linux)**: as Ruby may not be pre-installed on your machine, you may need to download and install it. Instructions are available at [ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/). Then run the above command in your terminal as per the Mac guide. 

## How to use
- Upon program start, users will be prompted to enter the change in total number of cents. 
- Once the user has entered the change amount and hit the Enter/Return key, the program will calculate and return a summary of the exact coin values and their quantities to provide the correct change to the customer.
- The program will automatically exit after returning the coin summary. 
- The program will print an error message if user input is not a positive whole number. Users must restart the program to input a valid change amount.

## Approach and assumptions
- As demonstrated in the examples from the EMC brief, the program calculates the most convenient change for the customer, i.e. the fewest possible coins. It does so by defaulting to the largest possible coin value (that is smaller than the change value) as a divisor of the change value throughout the loop. 
- In accordance with the single responsibility SOLID principle, the program has been broken into two methods (`validate_change` and `calculate_coins`). This allows for easier unit testing in the future as well. 
- The correct functioning of this program is contingent on the coin array in the `calculate_coins` method being sorted in descending numeric order. The `coins` array is hard-coded as such, but a reversed sort is also used to preserve the descending order in case changes are made to the array in the future. 
- The `each` loop in the `calculate_coins` method is acceptable on a small scale but it may be better to use a different method (e.g. binary search) for optimisation if many, many coin values were to be included in the array, to avoid iterating over a long array unnecessarily.
- Some error handling has been included to ensure the program only returns the coin summary for valid positive integers (not strings, floats, empty strings or negative integers). The program catches any Argument errors and prints a generic error message for the user. 

