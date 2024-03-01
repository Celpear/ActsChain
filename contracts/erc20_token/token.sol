// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.5.9;

import "@0x/contracts-erc20/contracts/src/ERC20Token.sol";

/**
 * @title ActsChainERC20
 * @dev ActsChain is an open-source Ethereum token project dedicated to providing GPU power for decentralized face recognition services.
 */
contract ActsChainCoin is ERC20Token {
    //current deployment on Sepolia: 0x8FA84d8D434792bE64b00c8f6fFaf244146d3D35
    string public name;
    string public symbol;
    uint256 public decimals;

    constructor ()
        public
    {
        name = "ActsChain";
        symbol = "ACTS";
        decimals = 18;
        _totalSupply = 100000000000000000000000000;
        balances[msg.sender] = _totalSupply;
    }
}