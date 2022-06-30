contract main {




// =====================  Runtime code  =====================


address owner;

function Owner() {
    return owner
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if owner != msg.sender:
        revert with 0, 'Not owner'
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d49cf10f(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Not owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            revert with 0, 50
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)] == address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = cd[((32 * idx) + cd[68] + 36)]
        call address(cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_16] == bool(mem[_16])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if idx >= ('cd', 100).length:
            revert with 0, 50
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        _18 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 36] = cd[((32 * idx) + cd[100] + 36)]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        s = 0
        t = mem[64] + 196
        u = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            require cd[u] == address(cd[u])
            mem[t] = address(cd[u])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_18 + 100] = this.address
        mem[_18 + 132] = cd[132]
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len t + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _27 = mem[_26]
        require mem[_26] <= test266151307()
        require _26 + mem[_26] + 31 < _26 + return_data.size
        _28 = mem[_26 + mem[_26]]
        if mem[_26 + mem[_26]] > test266151307():
            revert with 0, 65
        if _26 + ceil32(return_data.size) + ceil32(32 * mem[_26 + mem[_26]]) + 1 > test266151307() or ceil32(32 * mem[_26 + mem[_26]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _26 + ceil32(return_data.size) + ceil32(32 * mem[_26 + mem[_26]]) + 1
        mem[_26 + ceil32(return_data.size)] = _28
        require (32 * _28) + _27 + 32 <= return_data.size
        t = _26 + ceil32(return_data.size) + 32
        s = _26 + _27 + 32
        while s < (32 * _28) + _26 + _27 + 32:
            mem[t] = mem[s]
            t = t + 32
            s = s + 32
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
