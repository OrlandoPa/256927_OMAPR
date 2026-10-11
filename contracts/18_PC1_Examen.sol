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

     function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad, string memory _especialidad) public {
        require(_id % 2 == 0, "No se permiten ids impares");
        pacientes.push(Paciente(_id, _nombre, _edad, _especialidad));
    }

    function contarElementos() public view returns (uint256) {
        return pacientes.length;
    }

    function cambiarDireccion(address _nueva) public {
        direccion = _nueva;
    }
}