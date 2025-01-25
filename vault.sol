// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
    bool public locked;
    bytes32 private password;

    constructor(bytes32 _password) {
        locked = true;
        password = _password;
         // unlocks if the password from the input equals the password from the state variable 

    }
    // since the password is a state variable, the password can be gotten by 
    // await web3.eth.getStorageAt(contract.address, 1)
    // where 1 equals the number of the state variable 

    function unlock(bytes32 _password) public {
        if (password == _password) {
            locked = false;
        }
    }
   
}
