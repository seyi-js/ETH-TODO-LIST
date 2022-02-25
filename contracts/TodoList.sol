// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    //Number of task
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("Wash clothe");
    }

    function createTask(string memory _content) public {
        taskCount++;

        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
