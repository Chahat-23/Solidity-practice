// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

//inheritance
contract ExtraStorage is SimpleStorage {

//override; add virtual to initial function to make it overridable
    function store (uint _favNum) public override {
        favNum = _favNum + 5;
    }
}