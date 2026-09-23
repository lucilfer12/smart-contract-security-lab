// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {DefiRoundingVulnerable} from "../src/DefiRoundingVulnerable.sol";
import {DefiRoundingFixed} from "../src/DefiRoundingFixed.sol";

contract DefiRoundingTest {
    DefiRoundingVulnerable vulnerable;
    DefiRoundingFixed fixedVersion;

    function _assert(bool condition) internal pure {
        require(condition, "assertion failed");
    }

    function testRoundingPolicyIsObservable() public {
        vulnerable = new DefiRoundingVulnerable();
        fixedVersion = new DefiRoundingFixed();

        uint256 amount = 401;
        uint256 vulnerableFee = vulnerable.feeOn(amount);
        uint256 fixedFee = fixedVersion.feeOn(amount);

        _assert(vulnerableFee == 1);
        _assert(fixedFee == 2);
    }
}
