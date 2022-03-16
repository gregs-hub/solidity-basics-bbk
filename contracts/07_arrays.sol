// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract Arrays {
    // Arrays (tables) : index associated to a value array[]
    // Two types of table visibilities in Solidity :
    // - storage (persistant in the blockchain), by default when declared outside a function
    // - memory (temporary, only used in function memory), declared inside a function
    // We can only declare an array for one type (e.g.: array of strings, array of uint, etc.), no mixed types
    // arrays start with index 0 (Solidity)

    uint[] number; // decalred outside a function (=> storage, stored on the blockchain) -> here an array of uint called number

    // Add a value to an array
    function addValue(uint _valeur) public {
        number.push(_valeur);
    }

    // Modify arra value
    function updateValue(uint _valeur, uint _index) public {
        number[_index] = _valeur;
    }

    // Remove array value
    function deleteValue(uint _index) public {
        delete number[_index];
    }

    // Get and array value (for testing purpose here)
    function getValue(uint _index) public view returns(uint) {
        return number[_index];
    }
    

    // Memory type
    function getnumberX2() public view returns(uint[] memory) {
        uint length = number.length;
        uint[] memory numberX2 = new uint[](length); // for type memory we can specify array length
        for(uint i = 0 ; i < length ; i++) {
            numberX2[i] = number[i] * 2;
        }
        return numberX2; // will return an array with the same length and values*2
    }

    // Possible to provide arrays as function inputs
    function somme(uint[] memory monTableau) public returns(uint[] memory) { // "memory" if function visibility is set to public, private or internal. use "calldata" if external
        
    }

}