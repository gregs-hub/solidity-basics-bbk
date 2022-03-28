// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract Exercise {

    // revert (with more complex logic) and require : will allow you to return a value, will refund any remaining gas to the caller
    // assert: to prevent anything bad from happening

    uint number;

    function setNumber(uint _number) public {
        require(_number != 10, "number can't be equal to 10"); // require(condition, otherwise)
        number = _number;
    }

    function getNumber() public view returns(uint) {
        return number;
    }

}