// SPDX-License-Identifier: MIT
pragma solidity *0.8.26;

contract FourVariables {
    int intV;
    string stringV;
    bool boolV;
    address addressV;


function setInt(int _intV) public returns (int) {
    intV = _intV;
    return intV;
}

function getInt() public view returns (int) {
    return intV;
}

function setString(string memory _stringV) public returns (string memory) {
    stringV = _stringV;
    return stringV;
}

function getString() public view returns (string memory) {
    return stringV;
}

function setBool(bool _boolV) public returns (bool) {
    boolV = _boolV;
    return boolV;
}

function getBool() public view returns (bool) {
    return boolV;
}

function setAddress(address _addressV) public returns (address) {
    addressV = _addressV;
    return addressV;
}

function getAddress() public view returns (address) {
    return addressV;
}


}
