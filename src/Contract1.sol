// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; //Do not change the solidity version as it negativly impacts submission grading

/*
Construir el contrato: forge build

Testear el contrato (requiere archivos .t.sol): forge test -vvvv

Para el verificado del contrato desde consola:
forge script script/Contract1.s.sol:Contract1Deploy --rpc-url $RPC_URL --broadcast --verify --etherscan-api-key $ARBISCAN_API_KEY -vvvv
*/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Contract1 is ERC20 {

    //constructor oligatorio por ser ERC20
    constructor(string memory name_, string memory symbol_, uint256 mintedTokens_) 
    ERC20(name_, symbol_) {
        _mint(msg.sender, mintedTokens_);
    }

    function mint (address account, uint256 amount) external {
        _mint(account, amount);
    }

}