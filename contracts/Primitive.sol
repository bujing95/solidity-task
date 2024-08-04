pragma solidity ^0.8.24;

contract Primitives {

    /**
     * uint 是非负数的整数，有不同大小可以选择
     * 
     * 2 ** 8 等式 2 的八次方
     * 
     * uint的范围举例：
     * 0<= uint8 = 2 ** 8 -1 
     * 0<= uint16 = 2 ** 16 -1 
     * 0<= uint32 = 2 ** 32 -1 
     * ....
     * 0<= uint256 = 2 ** 256 -1 
     */

    /**
     * int 允许负数的整数，有多种不同大小可选择
     * 
     * int的范围：
     * int8 = -2 ** 7 到 2 ** 7 - 1
     * int16 = -2 ** 15 到 2** 15 -1 
     * ....
     * int256 = -2 ** 255 到 2** 255 -1 
     */

    /**
     * int 最大\最小值
     * int256 public minVal = type(int256).min;
     * int256 public maxVal = type(int256).max;
     */
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;
    bool public flag = true;

    /**
     * 静态数组
     * uint[5] fixedArrays;
     * 1.长度固定，无法改变
     * 2.元素可以通过索引访问和修改
     * 3.内存分配在编译时确定
     * 4.超出长度会数组越界
     */

    uint[5] fixedArrays;
    function pullArrays() public {
        for (uint i = 0; i < 5; i++) {
            fixedArrays[i] = i;
        }
        fixedArrays[5]=6; //数组越界了，因为数组初始化长度在 5 ，下标从 0 开始 尾位 4
    }

    /**
     * 动态数组
     * uint[] dynamicArrays;
     * 1.长度可变，通过 push 、pop 来插入和删除元素
     * 2.内存分配在编译时确定
     * 3.通过元素下标来访问获取
     * 
     */
    uint[] dynamicArrays ;

    function dynamicArrayFunc()  public {
        //往动态数组插入数据
        dynamicArrays.push(0);
        dynamicArrays.push(1);
        dynamicArrays.push(2);
        //从动态数组末尾中删除一条数据
        dynamicArrays.pop();
        //通过下标获取数组元素
        dynamicArrays[0];
        //修改下标元素的值
        dynamicArrays[0] = 1;
    } 

    /**
     * 未赋值的变量有默认值
     */
    bool public flagDefualt; // false
    int256 public defualtintVal; // 0
    uint256 public defualtUintVal ;//0
    address public defualtAddress ;// 0x0000000000000000000000000000000000000000

    
}