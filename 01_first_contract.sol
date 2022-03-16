// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.8.7 < 0.9;

contract test {

    // Integers
    uint nombre; //2**8 = 256 uint == uint256. uint default value is zero

    function getNombre() public view returns(uint) {
        return nombre;
    }

    function setNombre(uint _nombre) public {
        nombre = _nombre;
    }
}
