// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; // solidity compiler version

contract Crud {
    uint256 public coins = 0; // unsigned integer cannot take negative values

    function add(uint256 _coins) public {
        addNum(_coins);
    }

    function substract() public {
        coins -= 1;
    }

    function set(uint256 _coins) public {
        coins = _coins;
    }

    // private functions can only be used internally
    function addNum(uint256 _num) private {
        coins += _num;
    }
}
