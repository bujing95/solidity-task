pragma solidity ^0.8.24

contract Functions {

    /**
     * 
     * pure 关键字
       在 Solidity 中，函数可以有几种不同的类型修饰符，如 pure，view，和 payable。
       pure 关键字的含义
       pure 修饰符表示该函数不读取也不修改合约的状态。换句话说，pure 函数既不能访问合约的状态变量，也不能调用其他修改状态的函数。
       pure 函数只能使用传入的参数来执行计算，并返回结果。

       方法可以有多个返回值
     * @return 
     * @return 
     * @return 
     * 
     * 
     */
    function multipleReturnVal() public pure returns(uint256,bool,uint256){
        return (1,true,2)
    }
    function multipleReturnVal() public pure returns(uint256 x,bool flag,uint256 y){
        return (1,true,2)
    }
    /**
     * 命名返回值的变量可以在函数体内直接进行赋值，而不需要使用 return 语句。
     * 当函数执行完毕时，这些变量的值会自动作为返回值。
     */
    function noReturns() public pure returns (string _name ,uint256 _age ,string _address){
            _name = "dingjinjing";
            _age = 18;
            _address = "china";
    }

    /**
     * 解构赋值
     * 
     */
    function destructuringAssignment() public pure returns (uint256,bool,uint256,string,uint256){
        (uint256 x,bool flag,uint256 y) = multipleReturnVal(); 
        (string name,uint256 age) = ("DingJinJing",18);
        return (x,flag,y,name,age);
    }

    
}