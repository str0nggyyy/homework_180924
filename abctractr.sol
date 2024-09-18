// SPDX-License-Identifier: GPL-3.

pragma solidity >=0.6.0 <0.9.0;

abstract contract Account {
    string public role = "Vitya-AK";
        function getRole() public view virtual  returns (string memory) {
            return (role);
    }
    constructor(string memory _role) {
        role = _role;
    }
    function performAction() public pure virtual returns (string memory);
    
}
abstract contract UserAccount is Account {
    function performAction() public pure override returns (string memory) {
        return "User Performing Action";
    }
}
abstract contract AdminAccount is Account {
    function performAction() public pure override returns (string memory) {
        return "Admin Performing Action";
    }
}