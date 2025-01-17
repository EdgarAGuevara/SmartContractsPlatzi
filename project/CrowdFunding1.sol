// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CrowdFunding {
    // This is the first version of this project.
    // you can see like the fisrt step of new project.

    string public id;
    string public name;
    string public description;
    address payable public author;
    string public status = "Opened";
    uint256 public funds;
    uint256 public fundraisingGoal;

    constructor(
        string memory _id,
        string memory _name,
        string memory _description,
        uint256 _fundraisingGoal
    ) {
        id = _id;
        name = _name;
        description = _description;
        fundraisingGoal = _fundraisingGoal;
        author = payable(msg.sender);
    }

    function fundProject() public payable {
        author.transfer(msg.value);
        funds += msg.value;
    }

    function changeStatusProject(string calldata newStatus) public {
        // beacause of newStatus it wont be changed we define it like calldata.
        status = newStatus;
    }
}
