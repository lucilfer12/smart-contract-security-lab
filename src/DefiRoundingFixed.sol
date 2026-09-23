// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Educational example that exposes the rounding policy explicitly.
contract DefiRoundingFixed {
    uint256 public constant BPS = 10_000;
    uint256 public constant FEE_BPS = 25;

    function feeOn(uint256 amount) public pure returns (uint256) {
        return (amount * FEE_BPS + BPS - 1) / BPS;
    }

    function payout(uint256 amount) external pure returns (uint256) {
        uint256 fee = feeOn(amount);
        if (fee > amount) return 0;
        return amount - fee;
    }
}
