// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractExample {
    uint public value;

    function setValue(uint _value) public {
        // require statement
        require(_value > 0, "Value must be greater than 0");

        // assert statement
        assert(_value != 42);

        // revert statement
        if (_value == 99) {
            revert("Value cannot be 99");
        }

        value = _value;
    }
}
