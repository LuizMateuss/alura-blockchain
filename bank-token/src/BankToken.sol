// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol"; //contrato mais voltado para segurança

contract BankToken is ERC20, Ownable {
    constructor(address initialOwner, uint256 initialSupply)
        ERC20("BankToken", "BTK")
        Ownable(initialOwner)
    {
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) public onlyOwner { // o modifier onlyOwner é utilizado para ter controle de quem tem controle de quem pode chamar a função
        _mint(to, amount);
    }
}