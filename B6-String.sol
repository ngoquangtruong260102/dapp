pragma solidity ^0.8.17;
contract WorkingWithString{
    string public myString= "hello the real world";

    function setMyString(string memory _myString)public{
        myString = _myString;
    }
}