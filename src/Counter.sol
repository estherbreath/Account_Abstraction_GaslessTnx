// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {ERC2771Context} from "lib/openzeppelin-contracts/contracts/metatx/ERC2771Context.sol";
contract Counter is ERC2771Context {
    uint256 public number;
    address public lastAddr;
    address  _trustedForwarder;

    constructor (address _t) ERC2771Context(_t){
        _trustedForwarder = _t;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
        lastAddr = _msgSender();
    }

      function getAddress() public view returns (address) {
        return lastAddr; 
    }
}
