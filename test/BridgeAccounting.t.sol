// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {BridgeAccountingVulnerable} from "../src/BridgeAccountingVulnerable.sol";
import {BridgeAccountingFixed} from "../src/BridgeAccountingFixed.sol";

contract BridgeAccountingTest {
    BridgeAccountingVulnerable vulnerable;
    BridgeAccountingFixed fixedVersion;

    function setUp() public {
        vulnerable = new BridgeAccountingVulnerable();
        fixedVersion = new BridgeAccountingFixed();
    }

    function _assert(bool condition) internal pure {
        require(condition, "assertion failed");
    }

    function testVulnerableCreditRevertsOnUnbackedAmount() public {
        vulnerable = new BridgeAccountingVulnerable();
        bool reverted;
        try vulnerable.credit(address(this), 1) {
            reverted = false;
        } catch {
            reverted = true;
        }
        _assert(reverted);
    }

    function testFixedVersionRejectsUnbackedAmount() public {
        fixedVersion = new BridgeAccountingFixed();
        bool reverted;
        try fixedVersion.credit(address(this), 1) {
            reverted = false;
        } catch {
            reverted = true;
        }
        _assert(reverted);
    }

    function testFixedVersionPreservesAccountingInvariant() public {
        fixedVersion = new BridgeAccountingFixed();
        fixedVersion.recordOutbound(100);
        fixedVersion.credit(address(this), 40);
        _assert(fixedVersion.totalBridgedOut() == 60);
        _assert(fixedVersion.balanceOf(address(this)) == 40);
    }
}
