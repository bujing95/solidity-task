pragma solidity ^0.8.24

contract DataLocations {

     /**
      * 显式的声明变量的数据位置
        生命周期：
            Storage：变量在合约的整个生命周期中存在，保存在区块链上。
            Memory：变量在函数调用期间存在，函数执行完毕后即销毁。
            Calldata：变量在外部函数调用期间存在，只读且临时存在。
        Gas 消耗：
            Storage：修改 storage 中的数据会消耗大量 gas，因为数据需要永久存储在区块链上。
            Memory：访问 memory 中的数据相对较快，但大数据量操作时也会消耗较多 gas。
            Calldata：传输大数据量时 gas 消耗较低，因为数据是只读的且不需要复制到 memory。
        读写权限：
            Storage：读写均可。
            Memory：读写均可，但只在函数调用期间有效。
            Calldata：只读，无法修改。
      */
     
    // 状态变量，存储在 storage 中
    uint256 public data;

    // 修改 storage 中的数据
    function setData(uint256 _data) public {
        data = _data;
    }

    // 读取 storage 中的数据
    function getData() public view returns (uint256) {
        return data;
    }

    /**************************** Memory 分割线*******************************/

    // 使用 memory 位置声明的临时变量
    function manipulateData(uint256 _input) public pure returns (uint256) {
        uint256[] memory tempArray = new uint256[](5);
        for (uint256 i = 0; i < tempArray.length; i++) {
            tempArray[i] = _input + i;
        }
        return tempArray[2];
    }



    /**************************** calldata 分割线*******************************/
    // 使用 calldata 位置声明的函数参数
    function processCalldata(uint256[] calldata _input) public pure returns (uint256) {
        return _input[0];
    }
    

}