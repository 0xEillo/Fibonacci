pragma solidity 0.8.13;

contract Fib2 {
    event Result(uint256 result);

    fallback() external payable {
        uint256 N = msg.value;
        uint256 a = 1;
        uint256 b = 1;

        if (N == 0) {
            emit Result(0);
        }

        for (uint256 i = 2; i < N; i++) {
            uint256 c = a + b;
            a = b;
            b = c;
        }

        emit Result(b);
    }
}
