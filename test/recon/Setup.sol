// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";
import "src/Generosity.sol";

abstract contract Setup is BaseSetup {
    Generosity generosity;

    function setup() internal virtual override {
        generosity = new Generosity();
        (bool success, ) = address(generosity).call{value: 42 ether}("");
    }
}
