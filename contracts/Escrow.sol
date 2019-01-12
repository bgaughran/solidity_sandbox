pragma solidity ^0.4.24;

contract Escrow {

	//state machine for the different escrow phases whose state can only transition in a certain way
	enum State {AWAITING_PAYMENT, AWAITING_DELIVERY, COMPLETE, REFUNDED}

	State public currentState;

	address public buyer;
	address public seller;
	address public arbiter;

	//only allow the buyer to send money or confirm delivery (or aribter in case of dispute)
	modifier buyerOnly() {
		require (msg.sender == buyer || msg.sender == arbiter);
		_;
	}

	//only allow the seller to refund (or arbiter in case of dispute)
	modifier sellerOnly() {
		require (msg.sender == seller || msg.sender == arbiter);
		_;
	}

	//check state is as expected
	modifier inExpectedState(State _state) {
		require (currentState == _state);
		_;
	}

	constructor (address _buyer, address _seller, address _arbiter) public {
		buyer = _buyer;
		seller = _seller;
		arbiter = _arbiter;
	}

	//invoked by the buyer to start the process
	function sendPayment() public payable buyerOnly inExpectedState(State.AWAITING_PAYMENT){
		//enforce strict state transition
		currentState = State.AWAITING_DELIVERY;
	}

	//invoked by the buyer to ensure the seller gets paid
	function confirmDelivery() public buyerOnly inExpectedState(State.AWAITING_DELIVERY){
		//enforce strict state transition
		currentState = State.COMPLETE;

		//send money to the seller
		seller.transfer(address(this).balance);
	}

	//invoked by the buyer to start the process
	function refundPayment() public sellerOnly inExpectedState(State.AWAITING_DELIVERY){
		//enforce strict state transition
		currentState = State.REFUNDED;

		//send money back to the buyer
		buyer.transfer(address(this).balance);
	}
}
