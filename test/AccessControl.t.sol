// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AccessControlVulnerable} from "../src/AccessControlVulnerable.sol";
import {AccessControlFixed} from "../src/AccessControlFixed.sol";

contract AccessControlTest {
    AccessControlVulnerable vulnerable;
    AccessControlFixed fixedVersion;

    function _assert(bool condition) internal pure {
        require(condition, "assertion failed");
    }

    function testVulnerableConfigurationCanBeOverwritten() public {
        vulnerable = new AccessControlVulnerable();
        address a = address(0x1111);
        address b = address(0x2222);
        vulnerable.setDistributor(a);
        vulnerable.setDistributor(b);
        _assert(vulnerable.distributor() == b);
    }

    function testFixedConfigurationIsOneTimeAdminControlled() public {
        fixedVersion = new AccessControlFixed(address(this));
        address a = address(0x1111);
        address b = address(0x2222);
        fixedVersion.setDistributor(a);

        bool reverted;
        try fixedVersion.setDistributor(b) {
            reverted = false;
        } catch {
            reverted = true;
        }

        _assert(reverted);
        _assert(fixedVersion.distributor() == a);
    }
}
