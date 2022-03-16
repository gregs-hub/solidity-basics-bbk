// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.7 < 0.9;

contract test2 {

    // Booleans
    bool myBool;

    function getBool() public view returns(bool) {
        return myBool;
    }

    function setBool(bool _bool) public {
        myBool = _bool;
    }

    // Addresses (20 octets, e.g. address ETH)
    address myAddress;

    function getAddress() public view returns(address) {
        return myAddress;
    }

    function setAddress(address _address) public {
        myAddress = _address;
    }

    // Strings
    string myPhrase;

    function getPhrase() public view returns(string memory) { // add "memory" for strings manipulation
        return myPhrase;
    }

    function setPhrase(string memory _string) public {
        myPhrase = _string;
    }

}
