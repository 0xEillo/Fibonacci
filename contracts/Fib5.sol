pragma solidity 0.8.13;

// The contents stored in the stack are erased after every function call

contract Fib5 {
    fallback() external payable {
        bytes memory m_input = _input; // copy bytes into memory and place on the stack
        uint256 N; // declare uint N which will bet set to the bytes inputed converted into uint below
        assembly {
            N := mload(add(m_input, 0x20))
        }
        uint256 a = 1; // a is stored in the stack
        uint256 b = 1; // b is stored in the stack

        if (N == 0) {
            return m_input;
        }

        for (uint256 i = 2; i < N; i++) {
            uint256 c = a + b; // c is stored in the stack
            a = b;
            b = c;
        }

        return abi.encodePacked(b); // returning the uint as bytes
    }
}
