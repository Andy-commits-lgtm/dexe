// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

contract TokenMock {
    bool public success = true;

    function shouldFail() public {
        success = false;
    }

    function setSuccess(bool _success) public {
        success = _success;
    }

    function transferFrom(address, address, uint256) public view returns (bool) {
        require(success);
        return true;
    }
}