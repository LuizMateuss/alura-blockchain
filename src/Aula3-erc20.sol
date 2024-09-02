// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TokenERC20 {
    uint256 public totalSupply; 
    mapping (address => uint256) public balanceOf; // faz um mapeamento de address para uint256, ao buscar um endereço, irá retornar o valor atrelado a ele
    mapping (address => mapping (address => uint256)) public allowance; //um endereço aponta para um outro mapping, que aponta para um endereço que aponta para outro inteiro. usuario 1 permite que o 2 gaste x
    string public name;
    string public symbol;
    uint8 public decimals;


    event Transfer(address indexed from, address indexed to, uint256 value); //indexed serve para poder ser utilizado como filtro no futuro
    event Approval(
        address indexed owner, address indexed spender, uint256 value
    ); //esse evento é para permitir que outra pessoa possa realizar a transferencia 

    constructor(string memory _name, string memory _symbol, uint8 _decimals) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }

    // recebe quem vai receber o token e a quantidade, tem o modificador de visibilidade external, podendo ser chamada fora do contrato e retorna um booleano
    function transfer (address recipient, uint256 amount)
        external
        returns (bool)
    {
        balanceOf[msg.sender] -= amount; //diminui o saldo de quem está enviando
        balanceOf[recipient] += amount; // adiciona saldo em quem está recebendo
        emit Transfer(msg.sender, recipient, amount); // emite o evento
        return true;
    }

    // define quem pode gastar pela pessoa e a quantidade que pode ser gasta. Ex: a filha pode gastar x na conta do pai
    function approve (address spender, uint256 amount) external returns (bool) {
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    // faz a transferencia por meio de um terceiro
    function transferFrom (address sender, address recipient, uint256 amount)
        external
        returns (bool)
    {
        allowance[sender][msg.sender] -= amount; //diminui a quantidade que a pessoa pode gastar da conta do terceiro
        balanceOf[sender] -= amount; //diminui a quantidade da conta do terceiro
        balanceOf[recipient] += amount;
        emit Transfer(sender, recipient, amount);
        return true;
    }

    // essa função vai tratar do controle da supply do token. A função mint cria novos tokens
    function _mint(address to, uint256 amount) internal {
        balanceOf[to] += amount;
        totalSupply += amount;
        emit Transfer(address(0), to, amount); // Como não se tem ninguem enviando, o address(0) significa que acabou de ser criado novos tokens
    }

    //é o inverso da anterior, quando a pessoa quer queimar o seus toekns
    function _burn(address from, uint256 amount) internal {
        balanceOf[from] -= amount;
        totalSupply -= amount;
        emit Transfer(from, address(0), amount);
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }
}