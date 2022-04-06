pragma solidity 0.8.13;

contract Fib1 {
    function run(uint256 _number) external pure returns (uint256) {
        uint256 a = 1;
        uint256 b = 1;

        if (_number == 0) {
            return 0;
        }

        for (uint256 i = 2; i < _number; i++) {
            uint256 c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
}
