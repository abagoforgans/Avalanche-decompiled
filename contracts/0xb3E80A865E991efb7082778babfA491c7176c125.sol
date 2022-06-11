contract main {




// =====================  Runtime code  =====================


#
#  - liquidate(address arg1, address arg2, uint256 arg3)
#  - impermaxRedeem(address arg1, uint256 arg2, bytes arg3)
#
function _fallback() payable {
    revert
}

function accrueInterest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1b251141(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    staticcall address(arg1).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return (ext_call.return_data[32] > 0)
}

function sub_90060a33(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).accrueInterest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg2))
    call address(arg2).accountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return (ext_call.return_data[32] > 0)
}

function getAmountOut(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg3) - 1:
            revert with 'NH{q', 17
        if arg3 and 997 > -1 / arg3:
            revert with 'NH{q', 17
        if ext_call.return_data[12 len 20] == arg2:
            if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
                revert with 'NH{q', 17
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
                revert with 'NH{q', 18
            return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3))
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg3) - 1:
        revert with 'NH{q', 17
    if arg3 and 997 > -1 / arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[12 len 20] == arg2:
        if 997 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg3:
            revert with 'NH{q', 17
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
            revert with 'NH{q', 18
        return (997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
    if 997 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg3:
        revert with 'NH{q', 17
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3):
        revert with 'NH{q', 18
    return (997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3))
}



}
