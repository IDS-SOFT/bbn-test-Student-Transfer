//SPDX-License-Identifier:GPL-3.0

pragma solidity ^0.8.0;

contract StudentTransfer {
    // Define the terms of the contract
    string public studentName;
    uint public studentID;
    string public currentSchool;
    string public newSchool;

    // Define the parties involved
    address public currentSchoolAdmin;
    address public newSchoolAdmin;

    // Define the constructor function
    constructor(string memory _studentName, uint _studentID, string memory _currentSchool, string memory _newSchool) {
        currentSchoolAdmin = msg.sender;
        studentName = _studentName;
        studentID = _studentID;
        currentSchool = _currentSchool;
        newSchool = _newSchool;
    }

    // Define the function for approving the transfer
    function approveTransfer() public view {
        require(msg.sender == newSchoolAdmin, "Only the new school administrator can approve the transfer");
        // Code to approve the transfer
    }

    // Define the function for rejecting the transfer
    function rejectTransfer() public  view {
        require(msg.sender == newSchoolAdmin, "Only the new school administrator can reject the transfer");
        // Code to reject the transfer
    }
}
