// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint public favNum;

    mapping (string => uint) public nameToFavNum;

    People public person = People({favNum: 2, name:'Chahat'});
    People public person1 = People({favNum: 3, name:'Prey'});
    People public person2 = People({favNum: 4, name:'Shell'});

    struct People {
        uint favNum;
        string name;
    }

    uint[] public favNumList;
    People[] public people;

    function store(uint favoriteNum) public {
        favNum = favoriteNum;
        favNum = favNum + 1;
    }

    function addPerson(string memory _name, uint _favNum) public {
        People memory newPerson = People(_favNum, _name);
        people.push(newPerson);
        people.push(People(_favNum,_name));
        nameToFavNum[_name] = _favNum;
    }
}

