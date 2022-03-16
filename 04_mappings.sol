// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract test4 {
    // Mappings (use less gas than arrays) - mapping assign a key to a value
    mapping(address => uint) Balances; // address is likned to a uint. Define available balance on the contract (amount for each address)

    function getBalance(address _myAddress) public view returns(uint) { // get balance sent by the input address to the smart contract
        return Balances[_myAddress];
    }

    receive() external payable {
        Balances[msg.sender] = msg.value;
    }

}