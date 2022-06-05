contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fd49147c(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    staticcall address(arg2).vaultCollateral(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).vaultDebt(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).getEthPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Price must be above 0'
    require ext_code.size(address(arg2))
    staticcall address(arg2).getTokenPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Peg must be above 0'
    require ext_code.size(address(arg2))
    staticcall address(arg2).getEthPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(address(arg2))
    staticcall address(arg2).getTokenPriceSource() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * ext_call.return_data[0] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(arg3))
    staticcall address(arg3).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] < uint8(ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not uint8(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])):
        if 100 * ext_call.return_data[0] * ext_call.return_data[0] and 1 > -1 / 100 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xe5f4dc92 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 100 * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0], 
               ext_call.return_data[0]
    if bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])) < 78)) or bool(bool(uint8(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])) < 32)):
        if 100 * ext_call.return_data[0] * ext_call.return_data[0] and 10^uint8(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0])) > -1 / 100 * ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not ext_call.return_data[0] * ext_call.return_data[0]:
            revert with 'NH{q', 18
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xe5f4dc92 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 100 * ext_call.return_data[0] * ext_call.return_data[0] * 10^0 / ext_call.return_data[0] * ext_call.return_data[0], 
               ext_call.return_data[0]
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[31 len 1] - uint8(ext_call.return_data[0]))
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] * ext_call.return_data[0] and s * t > -1 / 100 * ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xe5f4dc92 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 100 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / ext_call.return_data[0] * ext_call.return_data[0], 
           ext_call.return_data[0]
}



}
