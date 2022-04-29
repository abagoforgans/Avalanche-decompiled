contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_2b3dc9d9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).borrowable1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).borrowBalance(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    call address(arg2).exchangeRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).safetyMarginSqrt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 >= ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).liquidationIncentive() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 > !(10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[0]):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[0]):
            revert with 0, 17
        return ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
               (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    require ext_code.size(address(arg2))
    staticcall address(arg2).liquidationIncentive() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 > !(10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]) and ext_call.return_data[0] > -1 / (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]):
        revert with 0, 17
    return ext_call.return_data[0] * ext_call.return_data[0] / 10^18, 
           (ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 * ext_call.return_data[0]) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0]) / 10^18
}



}
