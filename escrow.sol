pragma solidity ^0.4.19;

contract EscrowContract {
  address public arbiter;
  address public beneficiary;
  address public depositor;

  function EscrowContract (address _arbiter, address _beneficiary) public payable {
    depositor = msg.sender; 
	  beneficiary = _beneficiary;
	  arbiter = _arbiter;
  } 
  function approve() public {
    beneficiary.transfer(this.balance);
  }
}
