// script/DeployBankToken.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {BankToken} from "../src/BankToken.sol";

contract DeployBankToken is Script {
    function run() external {
        // Define as chaves privadas e o endereço inicial do proprietário
        address initialOwner = vm.addr(1);  // ou o endereço de sua escolha
        uint256 initialSupply = 1000000 * 10 ** 18; // Suprimento inicial de 1 milhão de tokens (ajuste de acordo com a precisão)

        // Inicia a transmissão da transação na blockchain local
        vm.startBroadcast();

        // Faz o deploy do contrato BankToken
        new BankToken(initialOwner, initialSupply);

        // Para a transmissão
        vm.stopBroadcast();
    }
}

// Rodando em uma rede blockchain local
// anvil
// forge script script/BankToken.s.sol --broadcast --rpc-url http://localhost:8545 --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80
// ou
// forge script script/BankToken.s.sol --broadcast --rpc-url http://localhost:8545 --mnemonics "test test test test test test test test test test test junk"
