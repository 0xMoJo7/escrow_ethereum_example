pragma solidity ^0.4.13;

contract EscrowContract {
  address public depositor;
  address public beneficiary;
  address public arbiter;

  event Approved(uint256 value);

  function EscrowContract(address _arbiter, address _beneficiary) payable {
    arbiter = _arbiter;
    beneficiary = _beneficiary;
    depositor = msg.sender;
  }

  function approve() public {
    require(msg.sender == arbiter);
    Approved(this.balance);
    beneficiary.transfer(this.balance);
  }
}
