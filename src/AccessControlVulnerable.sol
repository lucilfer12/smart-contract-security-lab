// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Educational model: a sensitive address can be overwritten
/// without protecting the initialization/configuration invariant.
contract AccessControlVulnerable {
    address public distributor;

    function setDistributor(address newDistributor) external {
        distributor = newDistributor;
    }
}
