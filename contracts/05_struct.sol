// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract test5 {
    // Structures : allow to create specific data objects

    struct balance {
        uint money;
        uint numPayments;
    }

    mapping(address => balance) Balances; // link between addresses and previously created structure

    function getBalance() public view returns(uint) {
        return Balances[msg.sender].money;
    }

    function getNumPayments() public view returns(uint) {
        return Balances[msg.sender].numPayments;
    }

    receive() external payable {
        Balances[msg.sender].money += msg.value; // use '.' to access structure data
        Balances[msg.sender].numPayments += 1;
    }

}