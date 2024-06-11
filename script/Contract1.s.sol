// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; //Do not change the solidity version as it negativly impacts submission grading

import {Script} from "forge-std/Script.sol";
import {Contract1} from "../src/Contract1.sol";
import {console} from "forge-std/console.sol";

contract Contract1Deploy is Script {

    function setUp() public {
    }

    function run () public {
        // Setup
        address deployer = vm.rememberKey(vm.envUint("PRIVATE_KEY"));
        //address account = vm.addr(deployerPrivateKey);

        vm.startBroadcast(deployer);

        // Deploy
        Contract1 miContrato = new Contract1("mi","MIT", 0.0001 ether);
        miContrato.mint(deployer, 0.001 ether);        

        // Verify + End
        console.log("Total minteado: ", miContrato.totalSupply());
        console.log("Contrato1 deployed at: ", address(miContrato));
        console.log("Owner del contrato: ", deployer);
        vm.stopBroadcast();       
    }
}