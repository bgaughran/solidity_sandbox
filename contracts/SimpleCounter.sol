pragma solidity 0.4.25;

contract SimpleCounter {

    //state variable
    int counter;

    constructor() public {
        counter = 0;
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
}
