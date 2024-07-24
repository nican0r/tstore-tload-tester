// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {Setup} from "./Setup.sol";

// ghost variables for tracking state variable values before and after function calls
abstract contract BeforeAfter is Setup {
    struct Vars {
        bool giftSent;
    }

    Vars internal _before;
    Vars internal _after;

    function __before(address user) internal {
        _before.giftSent = generosity.sentGifts(user);
    }
    function __after(address user) internal {
        _after.giftSent = generosity.sentGifts(user);
    }
}
