// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContractDemo {

    string public studentName;
    string public projectTitle;
    address public owner;
    uint256 public timestamp;

    constructor(string memory _name, string memory _projectTitle) {
        studentName = _name;
        projectTitle = _projectTitle;
        owner = msg.sender;
        timestamp = block.timestamp;
    }

    function getDetails() public view returns (
        string memory,
        string memory,
        address,
        uint256
    ) {
        return (studentName, projectTitle, owner, timestamp);
    }
}
