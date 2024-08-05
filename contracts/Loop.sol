pragma solidity ^0.8.24

contract Loop {

    /**
     * 循环 for 、while 、do while 
     * 不要使用无界循环，会导致 Gas 消费完，合约执行失败，所以很少用到 while 和 do while 
     */

    function loop() public {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint256 j;
        while (j < 10) {
            j++;
        }
    }

}