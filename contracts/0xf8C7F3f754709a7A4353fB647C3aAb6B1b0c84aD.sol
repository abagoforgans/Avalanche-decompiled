contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_7fb074cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function sub_83d3e920(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send eth'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_645c126c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'to shouldn't be zero'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_80819af4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != stor1:
        if ext_call.return_data[12 len 20] != stor1:
            revert with 0, 'ns0'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] < ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    staticcall 'console.log'.0x969cdd03 with:
            gas gas_remaining wei
           args 0, 96, Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 2, '%d', 0
    if address(ext_call.return_data[0]) == stor1:
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'ns2'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    else:
        if Mask(144, 112, ext_call.return_data[0]) <= 0:
            revert with 0, 'ns1'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(144, 112, ext_call.return_data[0]) and 997 > -1 / Mask(144, 112, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(144, 112, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if 997 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(144, 112, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(144, 112, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5c16daba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) != address(arg2):
        if ext_call.return_data[12 len 20] != address(arg2):
            revert with 0, 'ns0'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[0] < ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    staticcall 'console.log'.0x969cdd03 with:
            gas gas_remaining wei
           args 0, 96, Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), 2, '%d', 0
    if address(ext_call.return_data[0]) == address(arg2):
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'ns2'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and 997 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / 997 != ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / Mask(112, 0, ext_call.return_data[0]) != (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * ext_call.return_data[0]) + (997 * Mask(112, 0, ext_call.return_data[32])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (3 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    else:
        if Mask(144, 112, ext_call.return_data[0]) <= 0:
            revert with 0, 'ns1'
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
        if Mask(144, 112, ext_call.return_data[0]) and 997 > -1 / Mask(144, 112, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 997 * Mask(144, 112, ext_call.return_data[0]) / 997 != Mask(144, 112, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(144, 112, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, 0 / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
        else:
            if 997 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * Mask(144, 112, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[32]) != 997 * Mask(144, 112, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * Mask(144, 112, ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            if (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                revert with 'NH{q', 18
            require ext_code.size(address(arg1))
            call address(arg1).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (3 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10051b33(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _58 = mem[_57]
        require mem[_57] == mem[_57 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _62 = mem[_61]
        require mem[_61] == mem[_61 + 12 len 20]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_58))
        staticcall address(_58).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _66 = mem[_65]
        require mem[_65] == mem[_65]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_62))
        staticcall address(_62).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _70 = mem[_69]
        require mem[_69] == mem[_69]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _73 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _74 = mem[_73]
        require mem[_73] == mem[_73 + 18 len 14]
        _75 = mem[_73 + 32]
        require mem[_73 + 32] == mem[_73 + 50 len 14]
        require mem[_73 + 64] == mem[_73 + 92 len 4]
        if _66 < mem[_73 + 18 len 14]:
            revert with 'NH{q', 17
        if _70 < mem[_73 + 50 len 14]:
            revert with 'NH{q', 17
        _77 = mem[64]
        mem[64] = mem[64] + 64
        mem[_77] = 2
        mem[_77 + 32] = '%d'
        _78 = mem[64]
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = 2
        s = 0
        while s < 2:
            mem[mem[64] + s + 164] = mem[_77 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 166] = 0
        mem[mem[64] + 68] = _66 - Mask(112, 0, _74)
        mem[mem[64] + 100] = _70 - Mask(112, 0, _75)
        _121 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_121 + 32] = mem[_121 + 36 len 28] or 0x969cdd0300000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_121 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_121 + 36 len mem[_121] - 4]
        if address(_58) == stor1:
            if _70 - Mask(112, 0, _75) > 0:
                if Mask(112, 0, _75) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _74) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if _70 - Mask(112, 0, _75) and 997 > -1 / _70 - Mask(112, 0, _75):
                    revert with 'NH{q', 17
                if (997 * _70) - (997 * Mask(112, 0, _75)) / 997 != _70 - Mask(112, 0, _75):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _74):
                    if Mask(112, 0, _75) and 1000 > -1 / Mask(112, 0, _75):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _75) / 1000 != Mask(112, 0, _75):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _75) > (-997 * _70) + (997 * Mask(112, 0, _75)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _75)) + (997 * _70) < 1000 * Mask(112, 0, _75):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _75)) + (997 * _70):
                        revert with 'NH{q', 18
                    mem[_78 + 196] = 0
                    mem[64] = _78 + 228
                    mem[_78 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_78 + 232] = 0
                    mem[_78 + 264] = 0 / (3 * Mask(112, 0, _75)) + (997 * _70)
                    mem[_78 + 296] = this.address
                    mem[_78 + 328] = 128
                    mem[_78 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_78 + s + 392] = mem[_78 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (3 * Mask(112, 0, _75)) + (997 * _70), address(this.address), 128, 0
                else:
                    if (997 * _70) - (997 * Mask(112, 0, _75)) and Mask(112, 0, _74) > -1 / (997 * _70) - (997 * Mask(112, 0, _75)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _74):
                        revert with 'NH{q', 18
                    if (997 * _70 * Mask(112, 0, _74)) - (997 * Mask(112, 0, _75) * Mask(112, 0, _74)) / Mask(112, 0, _74) != (997 * _70) - (997 * Mask(112, 0, _75)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _75) and 1000 > -1 / Mask(112, 0, _75):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _75) / 1000 != Mask(112, 0, _75):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _75) > (-997 * _70) + (997 * Mask(112, 0, _75)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _75)) + (997 * _70) < 1000 * Mask(112, 0, _75):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _75)) + (997 * _70):
                        revert with 'NH{q', 18
                    mem[_78 + 196] = 0
                    mem[64] = _78 + 228
                    mem[_78 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_78 + 232] = 0
                    mem[_78 + 264] = (997 * _70 * Mask(112, 0, _74)) - (997 * Mask(112, 0, _75) * Mask(112, 0, _74)) / (3 * Mask(112, 0, _75)) + (997 * _70)
                    mem[_78 + 296] = this.address
                    mem[_78 + 328] = 128
                    mem[_78 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_78 + s + 392] = mem[_78 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * _70 * Mask(112, 0, _74)) - (997 * Mask(112, 0, _75) * Mask(112, 0, _74)) / (3 * Mask(112, 0, _75)) + (997 * _70), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if _66 - Mask(112, 0, _74) > 0:
                if Mask(112, 0, _74) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _75) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if _66 - Mask(112, 0, _74) and 997 > -1 / _66 - Mask(112, 0, _74):
                    revert with 'NH{q', 17
                if (997 * _66) - (997 * Mask(112, 0, _74)) / 997 != _66 - Mask(112, 0, _74):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _75):
                    if Mask(112, 0, _74) and 1000 > -1 / Mask(112, 0, _74):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _74) / 1000 != Mask(112, 0, _74):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _74) > (-997 * _66) + (997 * Mask(112, 0, _74)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _74)) + (997 * _66) < 1000 * Mask(112, 0, _74):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _74)) + (997 * _66):
                        revert with 'NH{q', 18
                    mem[_78 + 196] = 0
                    mem[64] = _78 + 228
                    mem[_78 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_78 + 232] = 0
                    mem[_78 + 264] = 0 / (3 * Mask(112, 0, _74)) + (997 * _66)
                    mem[_78 + 296] = this.address
                    mem[_78 + 328] = 128
                    mem[_78 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_78 + s + 392] = mem[_78 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (3 * Mask(112, 0, _74)) + (997 * _66), address(this.address), 128, 0
                else:
                    if (997 * _66) - (997 * Mask(112, 0, _74)) and Mask(112, 0, _75) > -1 / (997 * _66) - (997 * Mask(112, 0, _74)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _75):
                        revert with 'NH{q', 18
                    if (997 * _66 * Mask(112, 0, _75)) - (997 * Mask(112, 0, _74) * Mask(112, 0, _75)) / Mask(112, 0, _75) != (997 * _66) - (997 * Mask(112, 0, _74)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _74) and 1000 > -1 / Mask(112, 0, _74):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _74) / 1000 != Mask(112, 0, _74):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _74) > (-997 * _66) + (997 * Mask(112, 0, _74)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _74)) + (997 * _66) < 1000 * Mask(112, 0, _74):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _74)) + (997 * _66):
                        revert with 'NH{q', 18
                    mem[_78 + 196] = 0
                    mem[64] = _78 + 228
                    mem[_78 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_78 + 232] = 0
                    mem[_78 + 264] = (997 * _66 * Mask(112, 0, _75)) - (997 * Mask(112, 0, _74) * Mask(112, 0, _75)) / (3 * Mask(112, 0, _74)) + (997 * _66)
                    mem[_78 + 296] = this.address
                    mem[_78 + 328] = 128
                    mem[_78 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_78 + s + 392] = mem[_78 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * _66 * Mask(112, 0, _75)) - (997 * Mask(112, 0, _74) * Mask(112, 0, _75)) / (3 * Mask(112, 0, _74)) + (997 * _66), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_60d28883(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _46 = mem[_45]
        require mem[_45] == mem[_45 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _49 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _50 = mem[_49]
        require mem[_49] == mem[_49 + 12 len 20]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_46))
        staticcall address(_46).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _53 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _54 = mem[_53]
        require mem[_53] == mem[_53]
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(_50))
        staticcall address(_50).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _58 = mem[_57]
        require mem[_57] == mem[_57]
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _62 = mem[_61]
        require mem[_61] == mem[_61 + 18 len 14]
        _63 = mem[_61 + 32]
        require mem[_61 + 32] == mem[_61 + 50 len 14]
        require mem[_61 + 64] == mem[_61 + 92 len 4]
        if _54 < mem[_61 + 18 len 14]:
            revert with 'NH{q', 17
        if _58 < mem[_61 + 50 len 14]:
            revert with 'NH{q', 17
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = 2
        mem[_65 + 32] = '%d'
        _66 = mem[64]
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = 2
        s = 0
        while s < 2:
            mem[mem[64] + s + 164] = mem[_65 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 166] = 0
        mem[mem[64] + 68] = _54 - Mask(112, 0, _62)
        mem[mem[64] + 100] = _58 - Mask(112, 0, _63)
        _103 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_103 + 32] = mem[_103 + 36 len 28] or 0x969cdd0300000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_103 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_103 + 36 len mem[_103] - 4]
        if address(_46) == address(cd[((32 * idx) + cd[36] + 36)]):
            if _58 - Mask(112, 0, _63) > 0:
                if Mask(112, 0, _63) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _62) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if _58 - Mask(112, 0, _63) and 997 > -1 / _58 - Mask(112, 0, _63):
                    revert with 'NH{q', 17
                if (997 * _58) - (997 * Mask(112, 0, _63)) / 997 != _58 - Mask(112, 0, _63):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _62):
                    if Mask(112, 0, _63) and 1000 > -1 / Mask(112, 0, _63):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _63) / 1000 != Mask(112, 0, _63):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _63) > (-997 * _58) + (997 * Mask(112, 0, _63)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _63)) + (997 * _58) < 1000 * Mask(112, 0, _63):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _63)) + (997 * _58):
                        revert with 'NH{q', 18
                    mem[_66 + 196] = 0
                    mem[64] = _66 + 228
                    mem[_66 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_66 + 232] = 0
                    mem[_66 + 264] = 0 / (3 * Mask(112, 0, _63)) + (997 * _58)
                    mem[_66 + 296] = this.address
                    mem[_66 + 328] = 128
                    mem[_66 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_66 + s + 392] = mem[_66 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (3 * Mask(112, 0, _63)) + (997 * _58), address(this.address), 128, 0
                else:
                    if (997 * _58) - (997 * Mask(112, 0, _63)) and Mask(112, 0, _62) > -1 / (997 * _58) - (997 * Mask(112, 0, _63)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _62):
                        revert with 'NH{q', 18
                    if (997 * _58 * Mask(112, 0, _62)) - (997 * Mask(112, 0, _63) * Mask(112, 0, _62)) / Mask(112, 0, _62) != (997 * _58) - (997 * Mask(112, 0, _63)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _63) and 1000 > -1 / Mask(112, 0, _63):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _63) / 1000 != Mask(112, 0, _63):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _63) > (-997 * _58) + (997 * Mask(112, 0, _63)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _63)) + (997 * _58) < 1000 * Mask(112, 0, _63):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _63)) + (997 * _58):
                        revert with 'NH{q', 18
                    mem[_66 + 196] = 0
                    mem[64] = _66 + 228
                    mem[_66 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_66 + 232] = 0
                    mem[_66 + 264] = (997 * _58 * Mask(112, 0, _62)) - (997 * Mask(112, 0, _63) * Mask(112, 0, _62)) / (3 * Mask(112, 0, _63)) + (997 * _58)
                    mem[_66 + 296] = this.address
                    mem[_66 + 328] = 128
                    mem[_66 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_66 + s + 392] = mem[_66 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * _58 * Mask(112, 0, _62)) - (997 * Mask(112, 0, _63) * Mask(112, 0, _62)) / (3 * Mask(112, 0, _63)) + (997 * _58), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if _54 - Mask(112, 0, _62) > 0:
                if Mask(112, 0, _62) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _63) <= 0:
                    revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
                if _54 - Mask(112, 0, _62) and 997 > -1 / _54 - Mask(112, 0, _62):
                    revert with 'NH{q', 17
                if (997 * _54) - (997 * Mask(112, 0, _62)) / 997 != _54 - Mask(112, 0, _62):
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, _63):
                    if Mask(112, 0, _62) and 1000 > -1 / Mask(112, 0, _62):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _62) / 1000 != Mask(112, 0, _62):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _62) > (-997 * _54) + (997 * Mask(112, 0, _62)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _62)) + (997 * _54) < 1000 * Mask(112, 0, _62):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _62)) + (997 * _54):
                        revert with 'NH{q', 18
                    mem[_66 + 196] = 0
                    mem[64] = _66 + 228
                    mem[_66 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_66 + 232] = 0
                    mem[_66 + 264] = 0 / (3 * Mask(112, 0, _62)) + (997 * _54)
                    mem[_66 + 296] = this.address
                    mem[_66 + 328] = 128
                    mem[_66 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_66 + s + 392] = mem[_66 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (3 * Mask(112, 0, _62)) + (997 * _54), address(this.address), 128, 0
                else:
                    if (997 * _54) - (997 * Mask(112, 0, _62)) and Mask(112, 0, _63) > -1 / (997 * _54) - (997 * Mask(112, 0, _62)):
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _63):
                        revert with 'NH{q', 18
                    if (997 * _54 * Mask(112, 0, _63)) - (997 * Mask(112, 0, _62) * Mask(112, 0, _63)) / Mask(112, 0, _63) != (997 * _54) - (997 * Mask(112, 0, _62)):
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _62) and 1000 > -1 / Mask(112, 0, _62):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _62) / 1000 != Mask(112, 0, _62):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _62) > (-997 * _54) + (997 * Mask(112, 0, _62)) - 1:
                        revert with 'NH{q', 17
                    if (3 * Mask(112, 0, _62)) + (997 * _54) < 1000 * Mask(112, 0, _62):
                        revert with 0, 'ds-math-add-overflow'
                    if not (3 * Mask(112, 0, _62)) + (997 * _54):
                        revert with 'NH{q', 18
                    mem[_66 + 196] = 0
                    mem[64] = _66 + 228
                    mem[_66 + 228] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_66 + 232] = 0
                    mem[_66 + 264] = (997 * _54 * Mask(112, 0, _63)) - (997 * Mask(112, 0, _62) * Mask(112, 0, _63)) / (3 * Mask(112, 0, _62)) + (997 * _54)
                    mem[_66 + 296] = this.address
                    mem[_66 + 328] = 128
                    mem[_66 + 360] = 0
                    s = 0
                    while s < 0:
                        mem[_66 + s + 392] = mem[_66 + s + 228]
                        s = s + 32
                        continue 
                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (997 * _54 * Mask(112, 0, _63)) - (997 * Mask(112, 0, _62) * Mask(112, 0, _63)) / (3 * Mask(112, 0, _62)) + (997 * _54), address(this.address), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
