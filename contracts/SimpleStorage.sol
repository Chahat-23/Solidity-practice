// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint public favNum;

    function store(uint favoriteNum) public {
        favNum = favoriteNum;
        favNum = favNum + 1;
    }
}

