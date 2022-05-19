contract main {




// =====================  Runtime code  =====================


address owner;
uint256 lastCompletedMigration;

function owner() payable {
    return owner
}

function lastCompletedMigration() payable {
    return lastCompletedMigration
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    lastCompletedMigration = arg1
}



}
