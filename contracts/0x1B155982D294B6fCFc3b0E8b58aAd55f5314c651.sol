contract main {




// =====================  Runtime code  =====================


address factoryAddress;
address routerAddress;

function factory() payable {
    return factoryAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        revert with 0, 'BOGRouter: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        return address(arg1), arg2
    if not arg2:
        revert with 0, 'BOGRouter: ZERO_ADDRESS'
    return address(arg2), arg1
}

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall factoryAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_e98a5b85(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall factoryAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_98ec7626(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall factoryAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] > !ext_call.return_data[50 len 14]:
        revert with 0, 17
    return (ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14] > 0)
}

function getAmountIn(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    staticcall factoryAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if arg2 == arg3:
        revert with 0, 'BOGRouter: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[18 len 14] > !ext_call.return_data[50 len 14]:
            revert with 0, 17
        if not ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]:
            return 0
        if arg2 == arg2:
            staticcall routerAddress.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall routerAddress.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg3:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[18 len 14] > !ext_call.return_data[50 len 14]:
            revert with 0, 17
        if not ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]:
            return 0
        if arg2 == arg3:
            staticcall routerAddress.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall routerAddress.getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAmountOut(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    staticcall factoryAddress.0xe6a43905 with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if arg2 == arg3:
        revert with 0, 'BOGRouter: IDENTICAL_ADDRESSES'
    if arg2 < arg3:
        if not arg2:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[18 len 14] > !ext_call.return_data[50 len 14]:
            revert with 0, 17
        if not ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]:
            return 0
        if arg2 == arg2:
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        if not arg3:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if ext_call.return_data[18 len 14] > !ext_call.return_data[50 len 14]:
            revert with 0, 17
        if not ext_call.return_data[18 len 14] + ext_call.return_data[50 len 14]:
            return 0
        if arg2 == arg3:
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function execute(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 == arg2:
        revert with 0, 'BOGRouter: IDENTICAL_ADDRESSES'
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        staticcall factoryAddress.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == arg1:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if arg1 == arg1:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(arg3), 128, 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(arg3), 128, 0, None
        else:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if arg1 == arg1:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[0], address(arg3), 128, 0
            else:
                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, address(arg3), 128, 0
    else:
        if not arg2:
            revert with 0, 'BOGRouter: ZERO_ADDRESS'
        staticcall factoryAddress.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 == arg2:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 17
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 17
            staticcall routerAddress.getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if arg1 == arg2:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0], address(arg3), 128, 0, None
        else:
            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, address(arg3), 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
