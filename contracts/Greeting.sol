pragma solidity ^0.4.17;

/*
Simple sample contract that returns a greeting..
*/
contract Greeting {
	address creator;
	string greeting;

	constructor (string theGreeting) public {
		greeting = theGreeting;
		creator = msg.sender;
	}

	//returns the current greeting
	function greet() public constant returns(string){
		return greeting;
	}

	//changes the  greeting
	function setGreeting(string theGreeting) public {
		greeting = theGreeting;
	}
}
