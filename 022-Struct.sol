//SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract StructsLecture {

    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;

    mapping (address=> Car[]) public carsByOwner;

    function examples() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car( { year: 1980, model:"Lamborghini", owner: msg.sender});
        Car memory tesla; // all default values year=0 , address= address(0) exm.
        tesla.model="Tesla";
        tesla.year= 2010;
        tesla.owner=msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari",2020,msg.sender));

        // if we use memory rather than storage making channges on cars array only works in function execution
        // After func changes not works for cars array, so we use storage
        Car storage _car= cars[0];
        _car.year = 1999;
        delete _car.owner; // reset owner address(0)
        delete cars[1]; // Delete car struct make element 1 default value struct cars[1]= ",0,address(0)
    }


}