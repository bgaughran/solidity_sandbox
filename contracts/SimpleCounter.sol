pragma solidity 0.4.25;

contract SimpleCounter {

    int256 counter; //state variable
    address owner;

    constructor() public {
        counter = 0;
        owner = msg.sender;
    }

    //explicitly declaring this getter - though this will be generated automatically
    function getCounter() view public returns(int){
        return counter;
    }

    function increment() public {
        counter += 1;
    }

    function decrement() public {
        counter -= 1;
    }

    //function only callable by contract owner
    function reset() public {
        require(msg.sender == owner);
        counter == 0;
    }
}
