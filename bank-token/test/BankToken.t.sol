// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Test} from "@lib/forge/src/Test.sol";
import "../src/BankToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

//Padrões de teste
//arrange, act, assert

//forge test
interface CheatCodes { // interface que o proprio foundry fornece. Funciona como se fosse a máquina virutal do Ethereum
    function startPrank(address) external; //define quem é o msg.sender naquele momento. A wallet de onde irá sair a transação
    function stopPrank() external;
    function expectRevert() external; // Evite que ao ocorrer um erro, o teste pare
}

contract BankTokenTest is Test {
    BankToken private btk; // instancia do contrato que será testado
    CheatCodes cheats = CheatCodes(VM_ADDRESS); // o VM_ADDRESS é dado pela propia lib e serve para inicialiar uma blockchain local

    address defaultOwner = address(1);
    address notAuthorizedMinter = address(3);
    uint256 initialSuply = 1000 * 1e18; // Na blockchain Ethereum é permitido ter até 1e18. Está sendo criado 1000 tokens (unidades) com 18 casas decimais

    function setUp() public {
        cheats.startPrank(defaultOwner);
        btk = new BankToken(defaultOwner, initialSuply); //cria o token
        cheats.stopPrank();

    }

    function testInitialSetUp() public view {
        assertEq(btk.owner(), defaultOwner, "O owner deveria ser o definido no contrato");
        assertEq(btk.totalSupply(), initialSuply, "A supply deve ser igual a definida na criacao");
    }

    function testMint() public {
        //Arrange
        address recipient = address(99);
        uint256 mintAmount = 500 * 1e18;

        //Act
        cheats.startPrank(defaultOwner);
        btk.mint(recipient, mintAmount);

        uint newBalance = btk.balanceOf(recipient);
        uint newSupply = initialSuply + mintAmount;
        cheats.stopPrank();

        //Assert
        assertEq(newBalance, mintAmount, "Saldo do recipient nao esta batendo");
        assertEq(btk.totalSupply(), newSupply, "A supply esta diferente");
    }

    function testTransfer() public {
        // Arrange
        address recipient = address (87);
        uint256 transferAmount = 100 * 1e18;

        // Act
        uint256 senderOldBalance = btk.balanceOf(defaultOwner);
        uint256 recipientOldBalance = btk.balanceOf(recipient);
        
        cheats.startPrank(defaultOwner);
        btk.transfer(recipient, transferAmount);
        cheats.stopPrank();
            
        uint256 senderNewBalance = btk.balanceOf (defaultOwner);
        uint256 recipientNewBalance = btk.balanceOf(recipient);

        // Assert
        assertEq (senderNewBalance, senderOldBalance - transferAmount, "Balanco sender invalido");
        assertEq(recipientNewBalance, recipientOldBalance + transferAmount, "Balanco recipient invalido");
    }
}