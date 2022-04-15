contract main {




// =====================  Runtime code  =====================


uint256 unlockTime;
address owner;

function UnlockTime() payable {
    return unlockTime
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_dada5ae6(?) payable {
    if unlockTime < block.timestamp:
        revert with 0, 17
    return (unlockTime - block.timestamp)
}

function unlock(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 0, 'ERROR::unlock: ZERO address.'
    if block.timestamp < unlockTime:
        revert with 0, 'ERROR: Not yet Unlocked'
    require tx.origin == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Unlocked(ext_call.return_data[0], arg1, arg2);
}



}
