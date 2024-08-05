pragma solidity ^0.8.24

contrcat ViewAndPure {

    /**
     * 
     * 两种常见的修饰符，它们限制了函数对合约状态的访问方式。
     * view 函数
     *  定义：view 函数声明该函数不会修改合约的状态（即状态变量）。
     *  作用：可以读取状态变量，但不能修改它们。
     *  典型用例：用于返回状态变量的值 
     * 
     */

    uint256 public data; //状态变量

    // view 函数：读取状态变量 data 的值
    function getData() public view returns (uint256) {
        return data;
    }

    /**
     * 
     * pure 修饰的函数
     * 定义：pure 声明的函数既不读取也不修改合约状态
     * 作用：既不能访问状态变量，也不能修改它们，只能使用传入的参数或函数内部的局部变量。
     * 用例：纯计算
     * 
     */

    // pure 函数：执行纯计算，不依赖于合约状态
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

}