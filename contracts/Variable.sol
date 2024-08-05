pragma solidity ^0.8.24

contrcat VariableType {

    /**
     * State Variable 状态变量
     * 1.存储在合约中（区块链中）
     * 2.具有持久性
     * 
     * 变更状态变量时: 
     * 当需要对一个状态变量进行写入或者变更的时候，需要发送一个交易，
     * 因为这是一个写入操作会改变区块链状态，需要通过共识机制（以太坊 Pos 权益证明）来确保数据的安全性、一致性，
     * 发送交易的时候需要支付 gas 
     * 
     * 查看状态变量时:
     * 读取状态变量是免费的，因为不涉及到变更区块链上的数据，不需要额外支付 Gas .
     * 
     */
    uint public stateVariable; 

    function setStateVariable(uint _stateVariable) public {
        stateVariable = _stateVariable;
    } 

    function getStateVariable() public view return(uint){
        return stateVariable;
    }

    /**
     * local Variable 局部变量
     * 局部变量是临时存储在内存中的变量，只有在函数执行过程中存活
     * 1.存储在函数的内容中
     * 2.函数结束销毁内存
     * 3.在函数中声明
     */
    function localVariableFunc()  public{
        uint localVariable = 1;
    }

    /**
     * Global Variable 全局变量
     * 全局变量可以获取区块链信息
     * 1.获取区块、交易、合约信息
     * 2.直接使用，无需声明
     * 
     * 常见的全局变量
     * msg.sender       ---合约地址
     * msg.value        ---发送的以太币数量
     * block.timestamp  ---当前区块的时间戳
     * block.number     ---当前区块的高度
     * tx.gasprice      ---交易 gas 价格
     * 
     */

    function getGlobalVariable() public view returns (address) {
        return msg.sender;
    }


    /**
     * Constants 常量
     * 1.常量不允许修改
     * 2.可以节省 Gas
     * 3.常量不许要'' "" 
     */

    address public constants myAddress = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;

    Uint16 public constants phone = 16657167616;

    /**
     * Immutable variable 不可变变量
     * 1.可以在构造器内赋值
     * 2.赋值之后就不允许在编辑了
     */
    address public Immutable BLOCK_ADDRESS;
    uint256 public Immutable MY_UINT;
    constructor ImmutableVariable(uint256 _uint){
        BLOCK_ADDRESS= msg.sender;
        MY_UINT = _uint;
    }



}