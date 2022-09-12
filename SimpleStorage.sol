//SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

contract SimpleStorage {
    // This gets initialized to zero!
    uint public favoriteNumber;
    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
 
    
    function retrieve() public view returns(uint) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
} 
//0xd9145CCE52D386f254917e481eB44e9943F39138 