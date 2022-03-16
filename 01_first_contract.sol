// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract test {

    // Integers
    uint nombre; //2**8 = 256 uint == uint256. uint default value is zero

    function getNumber() public view returns(uint) {
        return number;
    }

    function setNumber(uint _number) public {
        number = _number;
    }
}
