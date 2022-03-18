# The Envato Money Changer

The Envato Money Changer is a simple Ruby program run on the command line. It is designed to calculate the correct coins to give customers in a shop as change. 

Users can input an amount of change in cents, and the program will calculate and return the appropriate coins to give to the customer. 
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
The EMC is written entirely in Ruby and requires no Ruby gem installations. To run the program:
- **On a Mac:** as Ruby is pre-installed on Macs, simply run the command `ruby money_changer.rb` in the terminal
- **In other operating systems (e.g. Windows, Linux)**: as Ruby may not be pre-installed on your machine, you may need to download and install it. Instructions are available at [ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/). Then run the above command in your terminal as per the Mac guide. 

## How to use
- Upon start, users will be prompted to enter the change in total number of  cents. 
- Once the user has entered the change amount and hit the Enter/Return key, the program will calculate and return information on the exact coin values and their quantities to provide the correct change to the customer.
- The program will automatically exit after returning the above information. 

## Approach and assumptions
- The correct functioning of this program is contingent on the coin array being sorted in descending numeric order. The `coins` array is hard-coded as such, but a reversed sort could also be used to preserve its descending order in case changes are made to the array in the future. 
- As implied in the examples from the EMC brief, the program calculates the most convenient change for the customer, i.e. the fewest possible coins. It does so by defaulting to the largest possible coin value (that is smaller than the change value) as a divisor of the change value throughout the loop. 
- The `each` loop is fine on a small scale but may be better to use a different method (e.g. binary search) for optimisation if many, many coin values were to be included in the array, to avoid iterating over a long array unnecessarily.
