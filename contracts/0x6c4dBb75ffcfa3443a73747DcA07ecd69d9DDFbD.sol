contract main {




// =====================  Runtime code  =====================


#
#  - migrate(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#  - sub_c8189f32(?)
#
address owner;
address stor1;
address oldRouterAddress;
address routerAddress;

function owner() payable {
    return owner
}

function oldRouter() payable {
    return oldRouterAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x534f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_2bc22ccf(?) payable {
    require calldata.size - 4 >= 160
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 == arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x54536e6f7754726164654c6962726172793a204944454e544943414c5f4144445245535345,
                    mem[201 len 27]
    if arg3 < arg4:
        if not arg3:
            revert with 0, 'SnowTradeLibrary: ZERO_ADDRESS'
        require ext_code.size(oldRouterAddress)
        staticcall oldRouterAddress.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(arg3, arg4), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        call address(sha3(0, address(ext_call.return_data[0]), sha3(arg3, arg4), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg5
    else:
        if not arg4:
            revert with 0, 'SnowTradeLibrary: ZERO_ADDRESS'
        require ext_code.size(oldRouterAddress)
        staticcall oldRouterAddress.factory() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sha3(0, address(ext_call.return_data[0]), sha3(arg4, arg3), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)))
        call address(sha3(0, address(ext_call.return_data[0]), sha3(arg4, arg3), 0xbbca9af0511ad1a1da383135cf3a8d2ac620e549ef9f6ae3a4c33c2fed0af91)).0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
