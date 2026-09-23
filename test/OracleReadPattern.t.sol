// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {OracleReadPattern} from "../src/OracleReadPattern.sol";

contract OracleReadPatternTest {
    function testStoredValueIsExplicitState() public {
        OracleReadPattern oracle = new OracleReadPattern();
        oracle.setPrice(2000);
        require(oracle.executeWithStoredPrice(2) == 4000, "unexpected value");
    }
}
