pragma solidity 0.8.13;

// The contents stored in the stack are erased after every function call

contract Fib3 {
    fallback(bytes calldata _input) external payable returns(bytes memory _output) {
        uint256 N = msg.value;  // N representing the inputed uint is stored in the stack
        uint256 a = 1;  // a is stored in the stack
        uint256 b = 1; // b is stored in the stack

        if (N == 0) {
            uint256 number = 0;
            return abi.encodePacked(number);
        }

        for (uint256 i = 2; i < N; i++) {
            uint256 c = a + b;  // c is stored in the stack
            a = b;
            b = c;
        }

        return abi.encodePacked(b);
    }
}
