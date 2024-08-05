pragma solidity ^0.8.24

contract Enums {

        /**
         * 表示运输过程状态枚举
         */

        enum Status {
            Pending,
            Shipped,
            Accepted,
            Rejected,
            Canceled
        }
        // 设置初始状态
        constructor() {
            status = Status.Pending;
        }

        function ship (){
            status = Status.Shipped;
        }
        function accept (){
            status = Status.Accepted;
        }
        //....

        //返回当前状态
        function getConcurrentStatus() public view return(Status){
            return status ;
        }


        function reset() public {
            delete status;
        }   

}
