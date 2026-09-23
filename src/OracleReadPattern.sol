// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Educational model showing why a state-changing path should not
/// blindly consume an externally supplied read when consistency matters.
contract OracleReadPattern {
    uint256 public storedPrice;

    function setPrice(uint256 newPrice) external {
        storedPrice = newPrice;
    }

    function executeWithStoredPrice(uint256 amount) external view returns (uint256) {
        return amount * storedPrice;
    }
}
