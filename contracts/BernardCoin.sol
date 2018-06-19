pragma solidity ^0.4.17;

/*
Currency that can only be issued by the creator and then transferred to anyone
*/
contract BernardCoin {
	address public creator;

	constructor () public {
		creator = msg.sender;
	}

}
