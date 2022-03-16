// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.7 < 0.9;

contract test5 {
    // Structures : permettent de créer nos propres structures de données

    struct balance {
        uint money;
        uint numPayments;
    }

    mapping(address => balance) Balances; // lier dans le mapping des adresses avec des structures

    function getBalance() public view returns(uint) {
        return Balances[msg.sender].money;
    }

    function getNumPayments() public view returns(uint) {
        return Balances[msg.sender].numPayments;
    }

    receive() external payable {
        Balances[msg.sender].money += msg.value; // pour accéder à des données d'une structure il suffit de faire point "."
        Balances[msg.sender].numPayments += 1;
    }

}