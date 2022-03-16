// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.7 < 0.9;

contract test4 {
    // Mappings (mieux que les tableaux car tableaux coûtent plus cher en gas) - mapping permettent d'assigner des valuers à des clés
    mapping(address => uint) Balances; // on lie une adresse avec un uint. Définit la balance disponible avec le contrat (regarde quelle adresse a envoyé quelle somme sur le contrat)

    function getBalance(address _monAdresse) public view returns(uint) { // retourne le montant que mon adresse d'input a envoyé vers le contrat intelligent
        return Balances[_monAdresse];
    }

    receive() external payable {
        Balances[msg.sender] = msg.value;
    }

}