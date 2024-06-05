// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; //Do not change the solidity version as it negativly impacts submission grading

import {Script} from "forge-std/Script.sol";
import {Contract1} from "../src/Contract1.sol";
import {console} from "forge-std/console.sol";

contract Contract1Deploy is Script {
    function run () public {
        // Setup
        uint256 deployerPrivateKey = vm.envUint("WALLET");
        vm.startBroadcast(deployerPrivateKey);

        // Deploy
        Contract1 mit = new Contract1("Mi token 1", "MIT", 1);

        // Verify + End
        console.log(mit.totalSupply());
        vm.stopBroadcast();
    }
}