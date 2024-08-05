
pragma solidity ^0.8.24

contract Gas {

    
    /**
     * Gas 
     * 作用：
     * 1.每个操作(转账，合约调用)都需要支付一定量的 Gas ，用户需要为这些操作支付一定量的 Gas .
     * 2.防止滥用资源，可以通过 Gas 来防止资源的恶意滥用，从而保护网络
     * 
     * Gas的价格：每个 Gas 单位的价格 比如 1Kwei , 1Gwei
     * Gas的限制：用户愿意位某个操作最大支付的 Gas 
     * 
     * 具体例子 ：某个操作需要 20000 个 Gas  = Gas的价格 * Gas的数量
     * 10Kwei * 20000 = 0.0000000002 Ether
     *  
     * 每个操作所需的 Gas 量更具市场决定的（动态的），如果网络繁忙会需要更多的 Gas ，如果网络空闲所需的 Gas 会少一些
     * 每次操作的 Gas 用户可以手动控制，更多的 Gas 可以提高交易优先级，较低的 Gas 可能会存在交易延迟
     * 
     */


    uint256 public value;

    // Basic function to set a value
    function setValue(uint256 _value) public {
        value = _value; // This operation requires Gas
    }

    // Function to estimate gas cost
    function estimateGas() public view returns (uint256) {
        return gasleft(); // Returns the remaining gas
    }

    // Function to demonstrate gas usage
    function useSomeGas() public returns (uint256) {
        uint256 startGas = gasleft(); // Get the gas at the beginning
        // Perform some operations
        value = 42;
        // More operations
        for (uint256 i = 0; i < 100; i++) {
            value += i;
        }
        uint256 endGas = gasleft(); // Get the gas at the end
        return startGas - endGas; // Return the gas used by this function
    }

    /*******************************举例**********************************/
    uint256 public i = 0;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    // 死循环会导致本次转账失败，并且 Gas 不返回
    function forever() public {
        while (true) {
            i += 1;
        }
    }
}