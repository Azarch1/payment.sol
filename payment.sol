pragma solidity ^0.7.4;

contract recieveMoneyContract {
    
    uint public amountRecieved;
    
    function recieveMoney() public payable {
        amountRecieved += msg.value;
    }
    
    function getBalance() public view returns(uint) {
      return address(this).balance;
    }
    
    function SendMoney() public {
        
    }
}