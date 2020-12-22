pragma solidity ^0.7.4;

contract recieveMoneyContract {
    
    uint public amountRecieved;
    
    // Function to send ether to the smart contract
    
    function recieveMoney() public payable {
        amountRecieved += msg.value;
    }
    
    // function to discern the current value of the smart contract
    function getBalance() public view returns(uint) {
      return address(this).balance;
    }
    
    // vulnerable function where anyone with an account can withdraw ether from the contract
    function sendMoney() public {
    address payable to = msg.sender;
    to.transfer(this.getBalance());
    }

    // this function takes an argument that designates the specific address
    function sendMoney2(address payable _to) public {
        _to.transfer(this.getBalance());
    }
}