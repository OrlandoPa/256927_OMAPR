// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/*
    Primer Contrato OMAPR
*/

contract Storage {

    uint256 number; //uint = uint256 la u es por guardar valores que no sean negativos

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }
}