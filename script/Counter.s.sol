// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script, console2} from "forge-std/Script.sol";
import "../src/Counter.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerkey = vm.envUint("PRIVATE_KEY");
        address forworder = 0xc82BbE41f2cF04e3a8efA18F7032BDD7f6d98a81;
        vm.startBroadcast(deployerkey);

        Counter counter = new Counter(forworder);
        vm.stopBroadcast();
    }
}

//0x026c09E6C16716b503F9DFf0e2046f53D8729715