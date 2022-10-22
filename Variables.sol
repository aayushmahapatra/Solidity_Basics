// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; // solidity compiler version

// Variables
contract Crud {
    // fixed size
    uint256 unsignedNumber;
    int256 Number;
    bool state;
    address user;
    bytes32 e;

    // dynamic size
    string s;
    bytes anything;
    uint[] array;
    mapping(uint256 => address) database;

    // user defined
    struct student {
        string name;
        uint256 rollNumber;
    }
    mapping(uint256 => student) studentDatabase;

    // can be accessed using gameLevel.Beginner
    enum gameLevel {
        Beginner,
        Intermediate,
        Expert
    }

    // Control Statements
    uint public coins = 0;

    function add(uint256 _coins) public {
        if(_coins < 100) {
            coins+=100;
        } else if(coins == 100) {
            coins+=10;
        } else {
            coins-=10;
        }
    }
}
