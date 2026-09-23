// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Minimal educational model of a bridge accounting failure.
contract BridgeAccountingVulnerable {
    uint256 public totalBridgedOut;
    mapping(address => uint256) public balanceOf;

    function recordOutbound(uint256 amount) external {
        totalBridgedOut += amount;
    }

    function credit(address to, uint256 amountReceived) external {
        // Vulnerability: amountReceived can exceed the outstanding balance.
        totalBridgedOut -= amountReceived;
        balanceOf[to] += amountReceived;
    }
}
