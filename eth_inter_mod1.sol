// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractExample {
    uint public value;

    function setValue(uint _value) public {
        // require statement
        require(_value >= 10 && _value <= 100, "Value must be between 10 and 100");

        // assert statement
        assert(_value != 42);

        // revert statement
        if (_value == 99) {
            revert("Value cannot be 99");
        }

        value = _value;
    }
}
