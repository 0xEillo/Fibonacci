pragma solidity 0.8.13;

contract Fib3 {
    fallback(bytes calldata _input) external payable returns(bytes memory _output) {
        uint256 N = msg.value;
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
