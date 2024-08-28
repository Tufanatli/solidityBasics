//SPDX-License-Identifer; Unlicensed
pragma solidity ^0.8.0;
contract Constructor{
    //Constructor: Bir kontrati deploy ederken bir kere cagirilir ve bir daha erisilemeyen ozel fonksiyondur
    string public tokenName;
    uint public totalSupply;
    //Degistirilemeyen veri uygulamasi icin iki tanim vardir

    //Constant: Veri turuyle birlikte veri girilir ve veri bir daha degistirilemez.
    uint public constant cNumber = 10;

    //Immutable: constant'dan farkli olarak verinin direkt girilmesine gerek yoktur. 
    //Bu kullanimda amac verinin sonradan atanabilmesidir.
    uint public immutable iNumber;

    
    constructor(string memory name, uint number, uint number2){
        tokenName = name;
        totalSupply = number;
        //immutable numberin atanmasi
        iNumber = number2;

    }
    function set(uint number) public {
        totalSupply = number; 
    }
}
