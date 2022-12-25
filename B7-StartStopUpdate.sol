pragma solidity ^0.5.13;

contract StartStopUpdate{
    address public owner;

    bool public paused;

    constructor()public{
        owner = msg.sender;
    }

    function setPaused(bool _paused) public{
        require(msg.sender == owner, "YOU ARE NOT OWNER");
        paused = _paused;
    }

    function sendMoney() public payable{}

    function withdrawAllMoney(address payable _to) public{
        require(msg.sender == owner, "YOU ARE NOT OWNER");
        require(!paused, "Contract is Paused!");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to) public{
        require(msg.sender == owner,"You are not owner");
        selfdestruct(_to);
    }
}