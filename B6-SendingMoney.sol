pragma solidity ^0.5.17;

contract SendMoney{
    uint public balanceReceived;

    function receiveMoney() public payable{ 
        balanceReceived += msg.value;
    }
    function getBalance() public view returns(uint){
        return address(this).balance;
    }
    function withdrawMoney() public{
        address payable to = msg.sender;
        
        to.transfer(this.getBalance());
    }

    function withdrawMoneyTo(address payable _to)public{
        _to.transfer(this.getBalance());
    }
}