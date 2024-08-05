pragma solidity ^0.8.24

contract Mapping {
    /**
     * 在其他语言中就是 Hash表 或者 字典。
     * 
     * address 是 key 的类型
     * uint    是 value 的类型
     * 
     */
    mapping (address => uint) public name;

    function get (address _addr) public view return(uint){
            return name[_addr];
    }

    function put (address key , uint value) public {
        name[key] = value;
    }

    function remove (address key) public {
        delete name[key];
    }


    /**
     * 嵌套映射
     * 
     */

    mapping(address => mapping(string => string)) public mapping2 ;

    function get (address _addr,string _skey))public view return(string){
        return mapping2[_addr][_skey];
    }

    function set (address _addr,string _skey,string _sValue))public {
         mapping2[_addr][_skey] = _sValue;
    }


}