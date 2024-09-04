// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Variables {
    uint8 a = 1;         // 8-bit inteiro sem sinal (0 a 255)
    uint16 b = 65535;    // 16-bit inteiro sem sinal (0 a 65535)
    uint256 c = 100000000; // 256-bit inteiro sem sinal (0 a 2^256-1)

    int8 d = -128;        // 8-bit inteiro com sinal (-128 a 127)
    int16 e = 32767;      // 16-bit inteiro com sinal (-32768 a 32767)
    int256 f = -100000000; // 256-bit inteiro com sinal (-2^255 a 2^255-1)

    bool isReady = true;
    bool hasBalance = false;

    address owner = 0x1234567890123456789012345678901234567890; //address é um tipo para identificar um usuário na blockchain
    address payable payableOwner = payable(owner); //modificador define que a variável do tipo address consegue receber fundos nesse endereço\

    string greeting = "Hello, World!";
    string name = "Alice";

    enum State { Created, Locked, Inactive } //numero finito de valores
    State public state; //variavel do tipo State definida no enum

    event Added(uint value);

    // public, internal, external, private
    function getGreeting() public returns (string memory) {
        return "Hello, World!";
    }

    // pure, view
    function getGreetingPure() public pure returns (string memory) { //pure quer dizer que a função não interaje com a blockchain, retorna apenas uma string. Mais eficiente
        return "Hello, World!";
    }

    function add(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    function addWithEvent(uint _a, uint _b) public returns (uint){
        uint _c = _a + _b;
        emit Added(_c); //emite o evento Added, a cada vez que a função for executada, sera adicionada na blockchain.
        return _c;
    }

    function getNameView() public view returns (string memory) { //view. Embora não altere a blockchain, ela consulta uma variável declarada nesse código. Ela não é pura, precisa consultar a blockchain em algum momento.
        return name;
    }

    function getSender() public view returns (address) { // view indica que a função não altera o estado do contrato, apenas lê, o que a torna mais barata em termos de consumo.
        return msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the contract owner"); //verifica se é o dono do contrato, é uma condição
        _; //define em qual momento a função será executada, a função que chama o modifier
    }

    function getNameViewOnlyOwner() public view onlyOwner returns (string memory) { // valida com o modificador onlyOwner se quem está enviando o msg.sender é o owner do contrato
        return name;
    }
}
