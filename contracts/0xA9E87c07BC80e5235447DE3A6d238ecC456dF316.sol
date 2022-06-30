contract main {




// =====================  Runtime code  =====================


#
#  - sub_2550c1da(?)
#
const WETH = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


function _fallback() payable {
    revert
}

function sub_e871fdb3(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length < 2:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length != ('cd', 36).length - 1:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    idx = mem[floor32(('cd', 36).length) + 97]
    s = cd[4]
    while idx > 0:
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _66 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[96]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx - 1) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _71 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_69)
        mem[mem[64] + 68] = address(_71)
        require ext_code.size(address(_66))
        staticcall address(_66).getAmountIn(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_69), address(_71)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_74] == mem[_74]
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = mem[_74]
        continue 
    return s
}

function sub_4cfd87ae(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length < 2:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 68).length != ('cd', 36).length - 1:
        revert with 0, 'BOGRouterV2: INVALID_PATH'
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _67 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + 128]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _72 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_69)
        mem[mem[64] + 68] = address(_72)
        require ext_code.size(address(_67))
        staticcall address(_67).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_69), address(_72)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_75]
        continue 
    return (cd[4] + (_76 * ('cd', 68).length))
}



}
