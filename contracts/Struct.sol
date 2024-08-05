pragma solidity ^0.8.24

contract structDemo {

    /**
     * 结构像 Java 中 Class
     * 可以把不同类型的属性放到一个 Struct 中
     */
    Struct Person {
        string  name;
        uint age;
    }

    //使结构体变成状态变量
    Person public person;

    //设置结构体内的变量
    function set(string _name,uint _age)public {
        person = Person(_name,_age);
    }
    function get() public view returns (string name,uint age){
        return (person.name,person.age);
    }


    Person[] public persons;

    function create (string calldata _name){
        //往persons数组中插入一条
        persons.push(Person(_name,18))
        
    }
}