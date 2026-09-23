// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @notice Educational example of an asymmetric rounding calculation.
/// The protocol computes the fee in base units and rounds down.
contract DefiRoundingVulnerable {
    uint256 public constant BPS = 10_000;
    uint256 public constant FEE_BPS = 25;

    function feeOn(uint256 amount) public pure returns (uint256) {
        return (amount * FEE_BPS) / BPS;
    }

    function payout(uint256 amount) external pure returns (uint256) {
        return amount - feeOn(amount);
    }
}
