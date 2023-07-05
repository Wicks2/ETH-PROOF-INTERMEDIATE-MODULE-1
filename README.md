# ETH-PROOF-INTERMEDIATE-MODULE-1
Following describes Smart-contract-using-solidity

A smart contract is a self-executing agreement implemented on a blockchain platform, typically using a programming language called Solidity. Solidity is a high-level language designed specifically for writing smart contracts on the Ethereum blockchain, although it can also be used on other blockchain platforms. In Solidity, you can define smart contracts by writing code that specifies the contract's functionality, rules, and interactions with other contracts and users.

Error Handling in Solidity - Module1
In Solidity, you can define smart contracts by writing code that specifies the contract's functionality, rules, and interactions with other contracts and users. This Solidity smart contract demonstrates error handling techniques using the require, assert, and revert statements. Let's explore how error handling is implemented in the code!

Getting Started
Executing Program
The project will involve the following steps:
Setting up Remix:
1. Open the Remix IDE in your web browser. To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

2. Creating the smart contract: Start a new file in the code editor within Remix. Copy and paste the following code into the file:

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


Functionality of Contract: 

The functionality of the provided smart contract is relatively straightforward. The contract consists of a single variable 'value' and a function 'setValue' that allows users to set the value of that variable. Let's describe the functionality in more detail:

1. Variable: 'value' is declared as a public unsigned integer variable. It represents the value to be set by the 'setValue' function.

2. Function: 'setValue' is a public function that takes an unsigned integer '_value' as an input. It allows users to set the value of the 'value' variable.

a. 'require()': The first statement in the function is a 'require()' statement. It checks if the input '_value' is greater than 0. If the condition evaluates to 'false', the transaction is reverted, and an error message is provided.

b. 'assert()': The second statement is an 'assert()' statement. It checks if the '_value' is not equal to 42. If the condition evaluates to 'false', the transaction is reverted.

c. 'revert()': The next statement is an if condition that checks if the '_value' is equal to 99. If the condition evaluates to 'true', the transaction is reverted with the specified error message.

d. 'Value Assignment': If all the checks pass, meaning none of the conditions trigger a revert, the input '_value' is assigned to the value variable.

It's important to note that this smart contract is a simplified example to demonstrate the usage of 'require()', 'assert()', and 'revert()' statements. 

Compiling the Contract:
.Use the Remix compiler panel to compile your smart contract. .Select the appropriate compiler version pragma solidity ^0.8.0;

Deploying the Contract:
1. Switch to the "Deploy & run transactions" tab in Remix.

2. Deploy the compiled contract by clicking the "Deploy" button.

Interacting with the smart contract:
1. Utilize the Remix IDE to interact with the deployed contract creation.

2. In the above smart contract, there are two functions: setValue() and setValueWithRevert(). Both functions take an input _value and set the value variable of the contract to that input value. However, they use different error-handling mechanisms.

3. Input the address and value and click on the corresponding function buttons to execute our contract.

Author
Abhay Partap Singh Rana https://www.linkedin.com/in/abhay-rana-4520a5220

License
his project is licensed under the MIT License - see the LICENSE.md file for details. This code is licensed under the MIT License. You can find the license text in the SPDX-License-Identifier comment at the beginning of the contract.
