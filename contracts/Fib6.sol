pragma solidity 0.8.13;

library Fib {
    function run(uint256 N) public pure returns (bytes memory) {
        uint256 a = 1;
        uint256 b = 1; 

        if (N == 0) {
            uint256 number = 0;
            return abi.encodePacked(number); 
        }

        for (uint256 i = 2; i < N; i++) {
            uint256 c = a + b; 
            a = b;
            b = c;
        }

        return abi.encodePacked(b); 
    }
}

contract Fib6 {
    fallback(bytes calldata _input) external payable returns (bytes memory _output) {
        _output = Fib.run(msg.value);
    }
}
