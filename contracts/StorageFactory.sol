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
}