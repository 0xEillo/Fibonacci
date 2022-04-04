# Fibonacci

What is the shortest runtime bytecode for a contract that:
* expects only one uint256 as calldata (no function selector)
* returns the fibonacci number at that index (can start the sequence at either 0 or 1)
Please provide all working solutions as you optimize, along with:
* opcodes as words
* comments with contents of stack and memory as appropriate
Bonus: optimize for gas costs instead of code size
as a reference example, the shortest runtime bytecode for returning the chainId is: 0x463d52593df3
