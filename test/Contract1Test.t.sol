// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; //Do not change the solidity version as it negativly impacts submission grading

import {Test} from "forge-std/Test.sol";
import {Contract1} from "../src/Contract1.sol";

contract contract1Test is Test {
    
    Contract1 public token;
    address supplyOwnerAddress = makeAddr("WalletUser"); // 0xE
    
    //inicializar el contrato de test
    function setUp() public {
        // Simulamos que la transacción proviene de supplyOwnerAddress
        vm.prank(supplyOwnerAddress);
        token = new Contract1("Mi token", "MIT", 1);
    }

//Algunas funciones de testing muy simples:
//Los nombres de lostest deben empezar con test.
//Los test deben ser siempre públicos.

    //testear el nombre del token
    function test_realName() public view{
        assertEq(token.name(), "Mi token");
    }

    //testear el alias del token
    function test_realAlias() public view{
        assertEq(token.symbol(), "MIT");
    }

    //testear el fondo
    function test_realSupply() public view{
        assertEq(token.totalSupply(), 1);
    }
}