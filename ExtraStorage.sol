// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function store(uint _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}