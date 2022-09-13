// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract () public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageValue) public {
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageValue);
    } 

    function sfGet(uint _simpleStorageIndex) public view returns(uint256) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}