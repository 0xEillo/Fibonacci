# Fibonacci

What is the shortest runtime bytecode for a contract that:
* expects only one uint256 as calldata (no function selector)
* returns the fibonacci number at that index (can start the sequence at either 0 or 1)
Please provide all working solutions as you optimize, along with:
* opcodes as words
* comments with contents of stack and memory as appropriate
Bonus: optimize for gas costs instead of code size
as a reference example, the shortest runtime bytecode for returning the chainId is: 0x463d52593df3

## Contracts

### Fib1

First implementation of a contract with a function returning the Fibonacci number at the Nth index.
fib(100) = 61260 gas

### Fib2

2nd implementation using the fallback function to comply to the (no function selector) requiremnt. uint256 is sent as Wei in the transaction.
fib(100) = 61406 gas

### Fib3

3rd implementation using the fallback function to comply to the (no function selector) requiremnt, however the result is returned in bytes by the fallback function to comply to (returns the fibonacci number at that index).
fib(100) = 60511 gas

### Fib4

4th implementation using the above modification but changing the algorithm to Binet's Formula (Found online) to try and reduce gas costs.
fib(100) = 29985 gas
