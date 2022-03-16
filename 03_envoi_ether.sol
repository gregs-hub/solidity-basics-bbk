// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract test3 {

    address lastPerson;
    uint balance;

    function getLastPerson() public view returns(address) { // pour avoir l'adresse du dernier expéditeur
        return lastPerson;
    }

    function getBalance() public view returns(uint) { // pour avoir le total d'argent envoyé vers le contrat
        return balance;
    }

    receive() external payable { // "external", similaire à "public" saut que public peut être appelé à l'intérieur du contrat et l'extérieur, external que par l'extérieur | pas besoin de function receive pour la fonction spéciale receive | payable signifie qu'on envoie de l'argent
        lastPerson = msg.sender; // fonction spéciale de spécification de l'expéditeur
        balance = balance + msg.value; // valeur en Wei que l'utilisateur envoie sur le contrat intelligent
    }
}