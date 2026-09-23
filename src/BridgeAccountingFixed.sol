// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BridgeAccountingFixed {
    uint256 public totalBridgedOut;
    mapping(address => uint256) public balanceOf;

    error InsufficientOutstandingBridgeAmount();

    function recordOutbound(uint256 amount) external {
        totalBridgedOut += amount;
    }

    function credit(address to, uint256 amountReceived) external {
        if (amountReceived > totalBridgedOut) {
            revert InsufficientOutstandingBridgeAmount();
        }
        totalBridgedOut -= amountReceived;
        balanceOf[to] += amountReceived;
    }
}
