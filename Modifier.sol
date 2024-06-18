// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract AdminControlled {

  address public admin; // Address of the admin

  constructor() {
    admin = msg.sender; // Set the contract deployer as the admin
  }

  modifier onlyAdmin() {
    require(msg.sender == admin, "Only admin can call this function");
    _; // Placeholder for the function body
  }

  // Function that can only be called by the admin
  function setNewAdmin(address newAdmin) public onlyAdmin {
    // Code to be executed only by the admin
    admin = newAdmin; // Update the admin address
  }

  // Function that anyone can call (reads contract information)
  function getAdmin() public view returns(address) {
    // Code that can be accessed by anyone (read-only)
    return admin; // Return the current admin address
  }
}
