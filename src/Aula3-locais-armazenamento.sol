// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TiposComplexos {
    struct Person { //para criar objetos complexos
        string name;
        uint age;
    }

    Person public person; //variável do tipo person
    Person[] array; //array de struct

//pega do storege
    function addPerson(string calldata _name, uint _age) public {
        person.name = _name;
        person.age = _age;
    }

// retornar na memoria (como se fosse a ran)
    function getPerson(uint i) public view returns (Person memory) {
        return array[i];
    }

//utiliza um array temporário para salvar no storege
//calldata é como se fosse um pendrive. O dado é imutável e está no scopo da função
    function addElement(string calldata _name, uint _age) public {
        Person memory personMemory;
        personMemory.name = _name;
        personMemory.age = _age;
        array.push(personMemory);
    }
}