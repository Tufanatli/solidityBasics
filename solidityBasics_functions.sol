//SPDX-License-Identifer; Unlicensed
pragma solidity ^0.8.0;
contract Functions {
    uint x = 3 ;
    //4 tane fonksiyon durumu bulunur: Public, Private, Internal, External.
    //2 tane fonksyon islevi bulunur: View, Pure.
    //View: Blokda islem yapilmayacagini sadece veri okunacagini taahhut eder.
    //Pure: Blokda herhangi bir okuma ve degisiklik yapilmiyorsa yani sadece kontrat icinde islem yapiliyorsa kullanilir.

    //Public: Fonksiyona hem disaridan kullanicilar kullanabilir hem de kontrat icinden kullanilabilir.
    function add(uint a, uint b) public pure returns(uint){
        return a + b;
    }
    function add2(uint c, uint d) public pure returns(uint){
        return add(c,d);
    } 

    function publicFunc() public pure returns(string memory){
        return "Bu bir public fonksiyondur.";
    }
    function callPublicFunc() public pure returns(string memory){
        return publicFunc();
    }

    //Private: Fonksiyona sadece kontrat icinden ulasilabilir.
    function privateFunc() private pure returns(string memory){
        return "Bu bir private fonksiyondur.";
    }
    function callPrivateFunc() public pure returns(string memory){
        return privateFunc();
    }

    //Internal: Sadece kontrati miras alan kontratlar cagirabilir.
    function internalFunc() internal pure returns(string memory){
        return "Bu bir internal fonksiyondur.";
    }
    function callInternalFunc() public pure returns(string memory){
        return internalFunc();
    }

    //External: Sadece disaridan cagirilabilir. Kontrat icinde kullanilamaz.
    function externalFunction() external pure returns(string memory){
        return "Bu bir external fonksiyondur.";
    }
    
    //Alistirmalar
    function nothing() public pure returns(uint x, bool y, bool z){
        x = 10;
        y = false;
        z = true;
    }
    function nothing2() public pure returns(uint, bool, bool){
        return(7, false, true);
    }
    function setX(uint y) public view returns(uint){
        return x + y;
    }
    function viewEx(uint a, uint b) public view returns(uint){
        return a + b + block.timestamp;
    }
    uint public luckyNumber = 7 ;
    function setNumber(uint newNumber) public {
        luckyNumber = newNumber; 
    }
}
