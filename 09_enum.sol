// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7 < 0.9;

contract Exercice {

    // enum can create user-defined types (mainly used as steps or progressive stages)
    // ordered (0), shipped (1), delivered (2) here
    enum stage {ordered, shipped, delivered}

    struct product {
        uint _SKU;
        Exercice.stage _stage;
    }

    mapping(address => product) ClientOrders;

    function order(address _client, uint _SKU) public {
        product memory p = product(_SKU, stage.ordered);
        ClientOrders[_client] = p;
    }

    function ship(address _client) public {
        ClientOrders[_client]._stage = stage.shipped;
    }

    function getSKU(address _client) public view returns(uint) {
        return ClientOrders[_client]._SKU;
    }

    function getStage(address _client) public view returns(stage) {
        return ClientOrders[_client]._stage;
    }

}