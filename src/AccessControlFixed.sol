// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract AccessControlFixed {
    address public immutable admin;
    address public distributor;

    error NotAdmin();
    error DistributorAlreadySet();
    error ZeroAddress();

    constructor(address admin_) {
        if (admin_ == address(0)) revert ZeroAddress();
        admin = admin_;
    }

    function setDistributor(address newDistributor) external {
        if (msg.sender != admin) revert NotAdmin();
        if (newDistributor == address(0)) revert ZeroAddress();
        if (distributor != address(0)) revert DistributorAlreadySet();
        distributor = newDistributor;
    }
}
