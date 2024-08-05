pragma solidity ^0.8.24

contract TransientDemo {

    /**
     * Transient stroage 临时存储
     * 临时存储是指在智能合约执行过程中使用的短期存储，执行结束后这些存储的数据不会被保留。
     * 
     * 生命周期：临时存储的数据在合约执行期间存在，执行结束后即被销毁。
     * 存储位置：与持久存储不同，临时存储不会将数据永久地写入区块链。
     * 访问和修改：与持久存储一样，临时存储中的数据可以被读写。
     * 成本：相比持久存储，临时存储的读写操作成本较低，因为不需要将数据永久地写入区块链。
     * 
     * 用法：（ 1.Solidity 中并没有直接支持临时存储的关键词或语法。
     *         2.但我们可以通过一些编程技巧和设计模式来模拟临时存储的行为）
     * 
     * 使用内存变量：在函数内部声明内存变量，用于存储临时数据。这些变量在函数执行期间有效，函数执行完毕后即被销毁。
     * 事件日志:使用事件记录临时数据，虽然事件数据会被永久记录在区块链上，但它们不会影响合约的存储空间，可以用于记录临时状态或中间结果。
     * 
     */

    // 状态变量，存储在 storage 中
    uint256 public persistentData;

    // 设置持久数据的方法
    function setPersistentData(uint256 _data) public {
        persistentData = _data;
    }

    // 使用内存变量存储临时数据的方法
    function processTemporaryData(uint256 _data) public pure returns (uint256) {
        uint256 tempData = _data * 2; // 内存变量，仅在函数执行期间存在
        return tempData;
    }

    // 使用事件记录临时数据的方法
    event TempDataEvent(uint256 indexed data);

    function emitTemporaryData(uint256 _data) public {
        emit TempDataEvent(_data); // 使用事件记录临时数据
    }

}