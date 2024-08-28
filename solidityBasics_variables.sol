//SPDX-License-Identifer; Unlicensed
pragma solidity ^0.8.0;
contract Variables {
    //state variables
    string public company = "atlaspad";

    function show() public pure returns (uint){
        //local variables
        uint number = 17;
        return number;
    }

    function show2() public view returns (address) {
        //global variables
        block.difficulty;
        block.gaslimit;
        block.timestamp;
        return msg.sender;
    }
/*
    //Fixed-size Types
    bool isTrue = false; // false
    int8 number = 12; // -2^8 to 2^8
    uint256 number2 = 12; // 0 to 2^256
    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 ;
    bytes32 name1 = "tufan";
    //Dynamic-size Types
    string name2 = "atlaspad";
    bytes name3 = "atli";
    uint[] array = [1, 2, 3, 4, 5];
    mapping(uint => address) list;
    // User Defined Value Types
    struct Human {
        int ID;
        string name;
        uint age;
        address walletAddress;
    }
    mapping (uint => Human) list2;

    Human person1;
    person1.ID = 1234;
    person1.name = "Tufan";
    person1.age = 20;
    person1.walletAdress = 0x.....;
}
    enum trafficLight{
        red;
        yellow;
        green;
    }
    trafficLight.green;
**/
}