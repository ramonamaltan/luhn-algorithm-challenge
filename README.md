### Luhn algorithm challenge - Credit card check
###### This challenge was about implementing the Luhn algorithm to check if a credit card number is valid or not.

Steps involved in Luhn algorithm
Let’s understand the algorithm with an example: 
Consider the example of an account number “79927398713“. 
1. Starting from the rightmost digit double the value of every second digit,
2. If doubling of a number results in a two digits number i.e greater than 9 (e.g., 6 × 2 = 12), then add the digits of the product (e.g., 12: 1 + 2 = 3, 15: 1 + 5 = 6), to get a single digit number. 
3. Now take the sum of all the digits.
4. If the total modulo 10 is equal to 0 (if the total ends in zero) then the number is valid according to the Luhn formula; else it is not valid.

![alt text](https://media.geeksforgeeks.org/wp-content/uploads/gfg2-2-300x101.png "Example")

##### Test those numbers 
```
valid_card?("4242 4242 4242 4242")
# => true
valid_card?("4242 4242  42424242")
# => true
valid_card?("5555 5555 5555 5555")
# => false
valid_card?("4242424242424241")
# => false
```
