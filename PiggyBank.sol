// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title Piggy Bank to save money for your next trip !
 * @author Jakub-Kliment
 * @notice Create you piggy bank to save money. You can add funds to your piggy bank
 * anytime you want. You also have the possibility to lock your piggy bank if you can't
 * stop spending money. When it is locked, you can't withdraw and to unlock it you have 
 * to put the code that you set up for you bank when you have created it.
 */
contract PiggyBank {
    /*//////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/
    error PiggyBankLocked();
    error NotEnoughMoney();
    error IncorrectCode();

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/
    uint256 s_amountSaved;
    uint256 s_code;
    bool s_locked;
    
    /*//////////////////////////////////////////////////////////////
                               FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    constructor(uint256 code) {
        s_amountSaved = 0;
        s_code = code;
        s_locked = false;
    }

    function addMoney(uint256 _amount) public {
        s_amountSaved += _amount;
    }

    function takeOutMoney(uint256 _amount) public {
        if (s_locked) {
            revert PiggyBankLocked();
        }
        if (s_amountSaved < _amount) {
            revert NotEnoughMoney();
        }
        s_amountSaved -= _amount;
    }

    function lock() public {
        s_locked = true;
    }

    function unlock(uint256 _code) public {
        if (s_code != _code) {
            revert IncorrectCode();
        } 
        s_locked = false;
    } 

    function changeCode(uint256 _oldCode, uint256 _newCode) public {
        if (s_code != _oldCode) {
            revert IncorrectCode();
        }
        s_code = _newCode;
    }

    /*//////////////////////////////////////////////////////////////
                                GETTERS
    //////////////////////////////////////////////////////////////*/
    function getAmountSaved() public view returns (uint256) {
        return s_amountSaved;
    }

    function seeIfLocked() public view returns (bool) {
        return s_locked;
    }
}