// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "../lib/forge-std/src/Script.sol";
import {SubscriptionConsumer} from "../src/SubscriptionConsumer.sol";

contract DeploySubConsumer is Script {
    uint256 private subId = 82014272314049956929141337899853056437717472539712572981999147446854002179802;
    function run() public {
        vm.startBroadcast();
        SubscriptionConsumer subscriptionConsumer = new SubscriptionConsumer(subId);
        vm.stopBroadcast();
    }
}

