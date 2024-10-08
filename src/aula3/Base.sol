// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Base {
    uint private data;
    event DataUpdated (uint oldValue, uint newValue);

    constructor(uint _initialData) {
        data = _initialData;
    }

    function setData(uint _data) public virtual {
        emit DataUpdated (data, _data);
        data = _data;
    }

    function getData() public view returns (uint) {
        return data;
    }
}
