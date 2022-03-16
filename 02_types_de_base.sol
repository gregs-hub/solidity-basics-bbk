// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.7 < 0.9;

contract test2 {

    // Booleans
    bool monBool;

    function getBool() public view returns(bool) {
        return monBool;
    }

    function setBool(bool _bool) public {
        monBool = _bool;
    }

    // Addresses (20 octets, address ETH par ex)
    address monAdresse;

    function getAdresse() public view returns(address) {
        return monAdresse;
    }

    function setAdresse(address _address) public {
        monAdresse = _address;
    }

    // Strings
    string maPhrase;

    function getPhrase() public view returns(string memory) { // ajouter "memory" can on manipule les strings
        return maPhrase;
    }

    function setPhrase(string memory _string) public {
        maPhrase = _string;
    }

}