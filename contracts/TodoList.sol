pragma solidity 0.5.0;

contract TodoList{
    uint public taskCount = 0; //written to storage (inside the blockchain)

    struct Task{
        uint id; //# of the task
        string content; //what are the tasks
        bool completed; //checkbox state of the todo list
    }

    mapping(uint => Task) public tasks;
    
    constructor() public{
        createTask("Make a shopping list");
    }
    
    function createTask (string memory _content) public{
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

}


