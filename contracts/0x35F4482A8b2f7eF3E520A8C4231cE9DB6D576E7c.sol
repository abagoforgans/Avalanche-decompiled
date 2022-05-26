contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    revert
}

function sub_e98a5b85(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return this.address
}

function sub_98ec7626(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[address(arg1)]:
        return bool(stor2[address(arg1)])
    return bool(stor2[address(arg2)])
}

function getAmountIn(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor2[address(arg2)]:
        return 0
    if not stor2[address(arg3)]:
        return 0
    require ext_code.size(stor0)
    staticcall stor0.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))), ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor3', 3))))), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getAmountOut(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor2[address(arg2)]:
        return 0
    if not stor2[address(arg3)]:
        return 0
    require ext_code.size(stor0)
    staticcall stor0.get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))), ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg3')), ('name', 'stor3', 3))))), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function execute(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3))))), ('signextend', 15, ('signextend', 15, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'stor3', 3))))), ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
