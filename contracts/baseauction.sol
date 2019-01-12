pragma solidity ^0.4.24;

import "./auction.sol";

/*
Base contract class that keeps track of the auction owner, and provides
an event to announce the winner at the end of the auction
*/
contract BaseAuction is Auction {

    address public owner;

    //modifier to restrict functions to the contract owner
    modifier ownerOnly(){
        require(msg.sender == owner);
        _;
    }

    event AuctionComplete(address winner, uint bid);

    function BaseAuction(){
        //set this variable to the address that deployed the contract
        owner = msg.sender;
    }
}