pragma solidity 0.8.13;

contract Fib1 {
    function run() external payable returns (uint256) {
        uint256 N = msg.value;
        uint256 a = 1;
        uint256 b = 1;

        if (N == 0) {
            return 0;
        }

        for (uint256 i = 2; i < N; i++) {
            uint256 c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
}
