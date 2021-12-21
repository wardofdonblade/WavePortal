// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint) public waveCount;

    constructor() {
        console.log("What a neato burrtio smart contract");
    }

    function wave() public {
        totalWaves += 1;
        waveCount[msg.sender]++;        
        console.log("%s has waved %s time(s)!", msg.sender, waveCount[msg.sender]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}