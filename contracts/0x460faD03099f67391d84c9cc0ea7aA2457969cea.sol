contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_86df7292(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not ('cd', 4).length:
        revert with 0, 'MUST_PASS_TX'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 131
        require calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 36 >= 96
        _10 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)])
        mem[_10] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
        mem[_10 + 32] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] <= test266151307()
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 67 < calldata.size
        if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] > test266151307():
            revert with 0, 65
        _11 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)])) + 1
        mem[_11] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]
        require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] + 68 <= calldata.size
        mem[_11 + 32 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]] = call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]]
        mem[_11 + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)] + 32] = 0
        mem[_10 + 64] = _11
        call cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)] with:
           value cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] wei
             gas gas_remaining wei
            args call.data[cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 68 len cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] + 36)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
