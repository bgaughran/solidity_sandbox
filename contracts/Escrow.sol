pragma solidity ^0.5.2;

contract Escrow {

	//state machine for the different escrow phases whose state can only transition in a certain way
	enum State {AWAITING_PAYMENT, AWAITING_DELIVERY, COMPLETE, REFUNDED}

	State public currentState;

	address public buyer;
	address public seller;
	address public arbiter;

	constructor (address _buyer, address _seller, address _arbiter) public {
		buyer = _buyer;
		seller = _seller;
		arbiter = _arbiter;
	}

	//only allow the buyer to send money
	function sendPayment() public payable {
		require (msg.sender == buyer);

	}
}
