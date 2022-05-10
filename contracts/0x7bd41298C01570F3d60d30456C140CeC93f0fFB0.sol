contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7b116446(?) payable {
    require calldata.size - 4 >= 128
    return 200000
}

function sub_1ad0cdb5(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg3:
        if Mask(112, 0, 1000 * ext_call.return_data[32]) + (997 * arg2):
            return (997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * ext_call.return_data[32]) + (997 * arg2))
    else:
        if Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg2):
            return (997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg2))
    revert
}

function getReserves(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= 2
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 < arg2.length
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2.length != 2:
        mem[320 len 0] = None
        mem[384 len 0] = None
        return 64, 128, 1, mem[320], 1, mem[384]
    mem[384 len 0] = None
    mem[480 len 0] = None
    return 64, 160, 2, mem[384 len 64], 2, mem[480 len 64]
}

function sub_66a80c8e(?) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg3:
        if (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2):
            return ((1000 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg2)) + 1)
    else:
        if (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2):
            return ((1000 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg2)) + 1)
    revert
}

function exchangeExactIn(address arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, uint128 arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(arg4)
    call arg4.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[12 len 20] != arg4:
        require Mask(112, 0, 1000 * ext_call.return_data[32]) + (997 * arg2)
        if 997 * arg2 * ext_call.return_data[18 len 14] / Mask(112, 0, 1000 * ext_call.return_data[32]) + (997 * arg2) < arg3:
            revert with 0, 'Insufficient output amount'
        require ext_code.size(arg1)
        call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, 1000 * ext_call.return_data[32]) + (997 * arg2), 0, address(this.address), 128, 0
    else:
        require Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg2)
        if 997 * arg2 * ext_call.return_data[50 len 14] / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg2) < arg3:
            revert with 0, 'Insufficient output amount'
        require ext_code.size(arg1)
        call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, 997 * arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, 1000 * ext_call.return_data[0]) + (997 * arg2), address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fce88e01(?) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[12 len 20] != arg4:
        require (997 * ext_call.return_data[18 len 14]) - (997 * arg3)
        if (1000 * ext_call.return_data[50 len 14] * arg3 / (997 * ext_call.return_data[18 len 14]) - (997 * arg3)) + 1 <= arg2:
            revert with 0, 'Insufficient input amount'
        require ext_code.size(arg4)
        call arg4.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (1000 * Mask(112, 0, ext_call.return_data[32]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[0])) - (997 * arg3)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args arg3, 0, address(this.address), 128, 0
    else:
        require (997 * ext_call.return_data[50 len 14]) - (997 * arg3)
        if (1000 * ext_call.return_data[18 len 14] * arg3 / (997 * ext_call.return_data[50 len 14]) - (997 * arg3)) + 1 <= arg2:
            revert with 0, 'Insufficient input amount'
        require ext_code.size(arg4)
        call arg4.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (1000 * Mask(112, 0, ext_call.return_data[0]) * arg3 / (997 * Mask(112, 0, ext_call.return_data[32])) - (997 * arg3)) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, arg3, address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
