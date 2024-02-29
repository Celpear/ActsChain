// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.5.9;

import "@0x/contracts-erc20/contracts/src/ERC20Token.sol";

/**
 * @title ActsChainERC20
 * @dev ActsChain is an open-source Ethereum token project dedicated to providing GPU power for decentralized face recognition services.
 */
contract ActsChainCoin is ERC20Token {

    string public name;
    string public symbol;
    uint256 public decimals;

    constructor (
        string memory _name,
        string memory _symbol,
        uint256 _decimals,
        uint256 _totalSupply
    )
        public
    {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        _totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }
}