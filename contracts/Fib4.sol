pragma solidity 0.8.13;

contract Fib4 {
    fallback(bytes calldata _input) external payable(bytes memory _output) {
        uint256 n = msg.value;
        if (n <= 2) {
            uint256 number = 0;
            return abi.encodePacked(number);
        }

        uint256 h = n / 2;
        uint256 mask = 1;

        // find highest set bit in n
        while (mask <= h) mask <<= 1;

        mask >>= 1;
        uint256 a = 1;
        uint256 b = 1;
        uint256 c;

        while (mask > 0) {
            c = a * a + b * b;
            if (n & mask > 0) {
                b = b * (b + 2 * a);
                a = c;
            } else {
                a = a * (2 * b - a);
                b = c;
            }
            mask >>= 1;
        }
        return abi.encodePacked(a);
    }
}
