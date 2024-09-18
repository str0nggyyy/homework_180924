// SPDX-License-Identifier: GPL-3.

pragma solidity >=0.6.0 <0.9.0;

interface IDeliveryProvider {
    function calculateDeliveryCost(uint distance) external view returns (uint);
    function deliverGoods(uint distance) external returns (uint);
}

contract FastDelivery is IDeliveryProvider {

    function calculateDeliveryCost(uint distance) public pure override returns (uint) {
        return distance * 5;
    }

    function deliverGoods(uint distance) pure public override returns (uint) {
        return calculateDeliveryCost(distance);
    }
}

contract EconomyDelivery is IDeliveryProvider {

    function calculateDeliveryCost(uint distance) public pure override returns (uint) {
        return distance * 2;
    }

    function deliverGoods(uint distance) pure public override returns (uint) {
        return calculateDeliveryCost(distance);
    }
}