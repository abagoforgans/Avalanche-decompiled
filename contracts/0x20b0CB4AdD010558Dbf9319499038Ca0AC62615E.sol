contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;

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
    require arg2 == arg2
    require arg3 == arg3
    if not stor2[address(arg2)]:
        return 0
    if not stor2[address(arg3)]:
        return 0
    staticcall stor0.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    staticcall stor0.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg3), address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function getAmountOut(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if not stor2[address(arg2)]:
        return 0
    if not stor2[address(arg3)]:
        return 0
    staticcall stor0.0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        return 0
    staticcall stor0.quotePotentialSwap(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg2), address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function execute(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall stor0.swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), ext_call.return_data[0], 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
