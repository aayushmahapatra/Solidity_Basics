// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; // solidity compiler version

// Loops
contract Crud {
    mapping(uint256 => string) public students;

    // For Loop
    function add(uint256 _num) public {
        for (uint256 i = 0; i < _num; i++) {
            students[i] = "Alex";
        }
    }

    // While Loop
    function addNames(string[] memory _names) public {
        uint256 i = 0;
        while (i < _names.length) {
            students[i] = _names[i];
            i++;
        }
    }

    // Do While Loop
    function letsBreak(uint256 _num) public {
        do {
            students[0] = "Alex";
        } while (_num < 0);
    }

    // Break Keyword
    uint256 public coins = 0;

    function checkBreak() public {
        for (int256 i = 0; i < 10; i++) {
            if (i == 4) {
                break;
            }
            coins++;
        }
    }
}
