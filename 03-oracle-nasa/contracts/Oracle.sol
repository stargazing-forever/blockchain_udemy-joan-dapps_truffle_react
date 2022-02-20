
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Oracle {

    // GET https://api.nasa.gov/neo/rest/v1/feed?start_date=START_DATE&end_date=END_DATE&api_key=API_KEY
    
    //direccion del owner
    address owner;

    //numero de asteroides
    uint public numberAsteroids;

    //evento que reciba datos del oraculo
    event CallbackNewData();

    //restriccio de la ejecucion de las funciones
    modifier onlyOwner () {
        require(owner == msg.sender, 'Only owner');
        _;
    }

    //constructor
    constructor() {
        owner = msg.sender;
    }

    //funcion para configuracion manual del numero de asteroides
    function setNumberAsteroids (uint _newNumberAsteroids) public {
        numberAsteroids = _newNumberAsteroids;
    }

    //recibe datos del oraculo
    function update() public onlyOwner {
        emit CallbackNewData();
    }


}