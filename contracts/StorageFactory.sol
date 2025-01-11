// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage public simpleStorage;
    SimpleStorage[] public simpleStorageArray;

    function createSimpleSTorageContract () public {
        simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint _simpleStorageIndex, uint _simpleStorageNum) public {
        //to interact, we need address & ABI of contract
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNum);
    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint) {
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }

}