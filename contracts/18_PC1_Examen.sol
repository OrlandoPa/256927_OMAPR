// SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Hospital256927 {
    struct Paciente {
        uint256 id;
        string nombre;
        uint256 edad;
        string especialidad;
    }

    Paciente[] public pacientes;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender; //la cuenta que despliega
    }
}