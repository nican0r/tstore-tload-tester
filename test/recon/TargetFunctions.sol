// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "./BeforeAfter.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is
    BaseTargetFunctions,
    Properties,
    BeforeAfter
{
    function generosity_claimGift1() public {
        generosity.claimGift();

        t(generosity.sentGifts(address(this)), "generosity_claimGift1 fails");
    }

    function generosity_claimGift2() public {
        __before(address(this));

        generosity.claimGift();

        __after(address(this));

        t(_before.giftSent != _after.giftSent, "generosity_claimGift2 fails");
    }

    fallback() external payable {}
}
