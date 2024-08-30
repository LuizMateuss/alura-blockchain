pragma solidity ^0.8.0;

contract MeuToken {
    string public name = "MyToken";
    string public symbol = "MTK";
    
    mapping(address => uint256) public balanceOf; // extrutura de dados mais avançada, mas basicamente controla o balanço de cada usuario dentro do token
    event Transfer(address indexed from, address indexed to, uint256 value); //Evento emitido quando acontecer uma transferencia

    constructor(uint256 initialSupply) {
        balanceOf[msg.sender] = initialSupply; //Recebe uma variável (a quantidade inicial de tokens) e coloca no balanço de quem enviou a transação para a blockchain
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }
}

// forge create --rpc-url https://rpc.ankr.com/polygon_amoy --private-key 63dc2a12c5f0125a1f9c06e0e591b5c113993c59228bfc2111967d5df3651ce1 src/MeuPrimeiroToken.sol:MeuToken --constructor-args 10000000

// Comando para compilar os bitcodes na blockchain
// --rpc-url -> é uma forma de se conectar na blockchain
// --private-key -> como se fosse a senha da carteira (define quem é o msg.sender no constructor)
// -- src é onde está o arquivo e o nome do token
// --constructor-args é o valor passado para o initialSupply
// Explorer para acessar todos os dados da blockchain. Colocar o hash da transação e a transação irá aparecer.
// https://amoy.polygonscan.com/
// Informações importantes de uma transação

//     Status: indica se a transação foi bem-sucedida ou não;

//     Bloco: informa em qual bloco da blockchain a transação foi incluída;

//     De (From): endereço que enviou a transação (ex.: sua carteira MetaMask);

//     Para (To): endereço que recebeu a transação (ex.: endereço do contrato inteligente);

//     Valor: quantidade de criptomoedas (ex.: MATIC) ou tokens transferidos;

//     Taxa de Gas: custo da transação em termos de "gas" (unidade de processamento na blockchain).


// Como adquirir moedas de teste
// https://docs.polygon.technology/tools/gas/matic-faucet/

// Hash da minha primeira transação:
// Deployer: 0x6d372a322E281aA649f5986145eB98FBE207bf9a
// Deployed to: 0x313C34A6046Aa8Ac9Da6841B1b77da9c5Ef18D6c
// Transaction hash: 0x8d8a1cd99611b857ad80a6ef42e1421ec4f03091c339204db9201472415cd500