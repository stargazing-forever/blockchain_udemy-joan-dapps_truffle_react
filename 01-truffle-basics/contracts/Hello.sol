// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Hello {
    string public message = 'Hola mundo';

    //visualizacion del mensaje de la blockchain
    function getMessage() public view returns(string memory) {
        return message;
    }

    //envio de un mensaje a la blockchain
    function setMessage (string memory _message) public {
        message = _message;
    }
}
