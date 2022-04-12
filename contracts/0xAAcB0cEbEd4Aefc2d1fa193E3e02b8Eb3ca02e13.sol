contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address stor1;

function _fallback() payable {
    revert
}

function addMember(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    stor0[address(arg1)] = 1
}

function batchSend(address[] arg1, uint256[] arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
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
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + floor32(arg3.length) + 99 > test266151307() or floor32(arg3.length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + floor32(arg3.length) + 99
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = floor32(arg1.length) + floor32(arg2.length) + 130
    while idx < arg3.length:
        require cd[s] <= test266151307()
        require arg3 + cd[s] + 67 < calldata.size
        if cd[(arg3 + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _88 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg3 + cd[s] + 36)])) + 1
        mem[_88] = cd[(arg3 + cd[s] + 36)]
        require arg3 + cd[s] + cd[(arg3 + cd[s] + 36)] + 68 <= calldata.size
        mem[_88 + 32 len cd[(arg3 + cd[s] + 36)]] = call.data[arg3 + cd[s] + 68 len cd[(arg3 + cd[s] + 36)]]
        mem[_88 + cd[(arg3 + cd[s] + 36)] + 32] = 0
        mem[t] = _88
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    require stor0[address(msg.sender)]
    _103 = mem[96]
    idx = 0
    while idx < _103:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _105 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _107 = mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
            revert with 'NH{q', 50
        _109 = mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130]
        _110 = mem[64]
        _111 = mem[mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 130]]
        s = 0
        while s < _111:
            mem[_110 + s] = mem[_109 + s + 32]
            _103 = mem[96]
            s = s + 32
            continue 
        if ceil32(_111) <= _111:
            call address(_105).mem[mem[64] len 4] with:
               value _107 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _110 + _111 + -mem[64] - 4]
            if return_data.size:
                _127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_127] = return_data.size
                mem[_127 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_110 + _111] = 0
            call address(_105).mem[mem[64] len 4] with:
               value _107 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _110 + _111 + -mem[64] - 4]
            if return_data.size:
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_129] = return_data.size
                mem[_129 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'transaction failed'
        if idx == -1:
            revert with 'NH{q', 17
        _103 = mem[96]
        idx = idx + 1
        continue 
}



}
