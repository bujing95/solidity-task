pragma solidity ^0.8.24

contract ErrorDemo {


    /**
     * 
     * assert: 
     * 1.用于检查不变量和严重错误。它通常用于内部错误检查，不应由外部用户输入触发。
     * 2.不满足条件时会触发异常，所有状态回滚，剩余的 gas 会被消耗
     * 3.用例：检查逻辑错误、不变量验证
     * 
     */

    function testAssert(uint256 a) public pure {
        assert(a != 0); // 检查 a 不为 0
    }


    /**
     * 
     * require:
     * 1.校验函数前置条件（函数入参、执行前的状态变量）
     * 2.当 require 不满足条件时会触发异常，所有状态会回滚，但剩余的 gas 会退回
     * 3.输入参数校验、权限验证、权限控制、检查外部调用的返回值
     * 
     */

    function testRequire(uint256 a) public pure {
        require(a > 0, "Input must be greater than zero"); // 检查 a 是否大于 0
    }

    /**
     * 
     * revert:
     * 1.是一种通用的错误处理机制，可以携带错误信息，通常用于更复杂的错误条件。
     * 2.触发 revert 时，所有状态变化会被回滚，剩余的 gas 会被退还。
     * 3.复杂条件下的错误处理，函数的早期返回。
     * 
     */

    function testRevert(uint256 a) public pure {
        if (a == 0) {
            revert("Input cannot be zero"); // 当 a 为 0 时触发 revert
        }
    }

    /**
     * 
     * 自定义错误：
     * 1.自定义错误是一种更高效的错误处理方式，可以通过定义错误类型并在条件不满足时触发它们。
     * 2.自定义错误可以减少 gas 消耗，因为它们比字符串消息更紧凑。
     * 3.定义合约特定的错误类型，并在需要时触发它们。
     * 
     */
    error InsufficientBalance(uint256 available, uint256 required);

    function testCustomError(uint256 balance, uint256 amount) public pure {
        if (balance < amount) {
            revert InsufficientBalance(balance, amount); // 触发自定义错误
        }
    }
    
}