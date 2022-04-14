contract main {




// =====================  Runtime code  =====================


address owner;
address kinsMasterAddress;

function owner() payable {
    return owner
}

function kinsMaster() payable {
    return kinsMasterAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsMasterAddress)
    call kinsMasterAddress.0x5ffe6146 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setImpermanentLossProtection(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsMasterAddress)
    call kinsMasterAddress.0x7e4f050d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsMasterAddress)
    call kinsMasterAddress.0x8705fcd4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function setFarmVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsMasterAddress)
    call kinsMasterAddress.setFarmVault(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function add(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, bool arg6, bool arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsMasterAddress)
    call kinsMasterAddress.0xacd0fae6 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, address(arg3), arg4, address(arg5), arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function set(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, bool arg6, bool arg7) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(kinsMasterAddress)
    staticcall kinsMasterAddress.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_code.size(kinsMasterAddress)
    call kinsMasterAddress.0xc02154dc with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, address(ext_call.return_data[0]), address(arg4), address(arg5), arg6, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
