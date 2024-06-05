// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; //Do not change the solidity version as it negativly impacts submission grading

/*
Construir el contrato: forge build

Testear el contrato (requiere archivos .t.sol): forge test -vvvv

Para el verificado del contrato desde consola:
forge script script/Staker.s.sol:StakerDeploy --rpc-url VARIABLE --private-key VARIABLE --verify --etherscan-api-key VARIABLE -vvvv

desplegar contratos sin script: forge create
Verificar contratos: forge verify

*/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Contract1 is ERC20 {

    //constructor oligatorio por ser ERC20
    constructor(string memory name_, string memory symbol_, uint256 mintedTokens_) 
    ERC20(name_, symbol_) {
        _mint(msg.sender, mintedTokens_);
    }

}