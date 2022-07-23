contract main {




// =====================  Runtime code  =====================


#
#  - sub_709bd7d5(?)
#
function _fallback() payable {
    revert
}

function sub_b6be7efd(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).totalBorrow() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 36).length) + 128 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[16 len 16]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).bentoBox() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).collateral() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).COLLATERIZATION_RATE() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).exchangeRate() with:
            gas gas_remaining wei
    mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    idx = 0
    s = 96
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _104 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).userBorrowPart(address arg1) with:
                gas gas_remaining wei
               args address(_104)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _111 = mem[_109]
        require idx < mem[96]
        _114 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).userCollateralShare(address arg1) with:
                gas gas_remaining wei
               args address(_114)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _118 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _119 = mem[_118]
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = 10^13 * _119 * ext_call.return_data[0]
        mem[mem[64] + 68] = 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).toAmount(address arg1, uint256 arg2, bool arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), 10^13 * _119 * ext_call.return_data[0], 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _122 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require uint128(ext_call.return_data[32])
        if mem[_122] >= _111 * uint128(ext_call.return_data[0]) * ext_call.return_data[0] / uint128(ext_call.return_data[32]):
            idx = idx + 1
            s = s
            continue 
        require idx < mem[96]
        _125 = mem[(32 * idx) + 128]
        _126 = mem[64]
        _127 = mem[s]
        t = 0
        while t < _127:
            mem[t + _126 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        mem[_127 + _126 + 32] = address(_125)
        if ceil32(_127) <= _127:
            _134 = mem[64]
            mem[mem[64]] = _127 + _126 + -mem[64] + 20
            mem[64] = _127 + _126 + 52
            idx = idx + 1
            s = _134
            continue 
        _136 = mem[64]
        mem[mem[64]] = _127 + _126 + -mem[64] + 20
        mem[64] = _127 + _126 + 52
        idx = idx + 1
        s = _136
        continue 
    mem[mem[64]] = 32
    _107 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_107)] = mem[s + 32 len ceil32(_107)]
    if ceil32(_107) > _107:
        mem[mem[64] + _107 + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_107) + 32]
}



}
