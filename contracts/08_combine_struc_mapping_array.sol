// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract Exercice {

    struct student {
        string name;
        uint[] notes;
    }

    mapping(address => student) Students;

    function addNote(address _student, uint _note) public {
        Students[_student].notes.push(_note);
    }

    function getNotes(address _student) public view returns(uint[] memory) {
        return Students[_student].notes;
    }

    function setNom(address _student, string memory _name) public {
        Students[_student].name = _name;
    }

    function getNom(address _student) public view returns(string memory) {
        return Students[_student].name;
    }

}