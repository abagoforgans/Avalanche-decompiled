contract main {




// =====================  Runtime code  =====================


address owner;
uint256 last_completed_migration;

function last_completed_migration() payable {
    return last_completed_migration
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    last_completed_migration = arg1
}

function upgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This function is restricted to the contract's owner'
    require ext_code.size(arg1)
    call arg1.0xfdacd576 with:
         gas gas_remaining wei
        args last_completed_migration
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
