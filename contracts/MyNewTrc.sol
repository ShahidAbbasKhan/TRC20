// SPDX-License-Identifier: GPL-3.0 
pragma solidity ^0.8.11;

import "./TRC20.sol";
import "./TRC20Detailed.sol";

/**
 * @title SimpleToken
 * @dev Very simple TRC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `TRC20` functions.
 */
contract MyNewTrc is TRC20, TRC20Detailed {

    /**
     * @dev Constructor that gives msg.sender all of existing tokens.
     */
    constructor ()  TRC20Detailed("MyNewTrc", "MNT", 18) {
        _mint(msg.sender, 10000000000 * (10 ** uint256(decimals())));
    }
}
