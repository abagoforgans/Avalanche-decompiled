contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function checkLiquidity(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    return 1, 0, 0, 0, 0, 0
}

function checkAavePosition(address arg1, uint256[] arg2, address arg3, uint256[] arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 64
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 35 < calldata.size
    if cd[(arg1 + arg1.length + 4)] > test266151307():
        revert with 'NH{q', 65
    if floor32(cd[(arg1 + arg1.length + 4)]) + 161 > test266151307() or floor32(cd[(arg1 + arg1.length + 4)]) + 161 < 160:
        revert with 'NH{q', 65
    mem[64] = floor32(cd[(arg1 + arg1.length + 4)]) + 161
    require arg1 + arg1.length + (64 * cd[(arg1 + arg1.length + 4)]) + 36 <= calldata.size
    idx = 0
    s = arg1 + arg1.length + 36
    t = 192
    while idx < cd[(arg1 + arg1.length + 4)]:
        require calldata.size - s >= 64
        _14 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_14] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_14 + 32] = cd[(s + 32)]
        mem[t] = _14
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[(arg1 + 36)] <= test266151307()
    require arg1 + cd[(arg1 + 36)] + 35 < calldata.size
    if cd[(arg1 + cd[(arg1 + 36)] + 4)] > test266151307():
        revert with 'NH{q', 65
    _15 = mem[64]
    if mem[64] + floor32(cd[(arg1 + cd[(arg1 + 36)] + 4)]) + 1 > test266151307() or mem[64] + floor32(cd[(arg1 + cd[(arg1 + 36)] + 4)]) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(cd[(arg1 + cd[(arg1 + 36)] + 4)]) + 1
    mem[_15] = cd[(arg1 + cd[(arg1 + 36)] + 4)]
    require arg1 + cd[(arg1 + 36)] + (64 * cd[(arg1 + cd[(arg1 + 36)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = arg1 + cd[(arg1 + 36)] + 36
    t = _15 + 32
    while idx < cd[(arg1 + cd[(arg1 + 36)] + 4)]:
        require calldata.size - s >= 64
        _25 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_25] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_25 + 32] = cd[(s + 32)]
        mem[t] = _25
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require arg2 == arg2
    return 1, 0, 0, 0, 0, 0
}



}
