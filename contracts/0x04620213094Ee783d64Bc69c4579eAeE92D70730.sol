contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function update(address[] arg1, address[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    idx = 0
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307() or ceil32(32 * arg2.length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    idx = 0
    t = ceil32(32 * arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _37 = mem[(32 * idx) + 128]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = 0x81f217ed00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 102] = arg3
        require ext_code.size(address(_37))
        call address(_37).0x81f217ed with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _44 = mem[ceil32(32 * arg1.length) + 97]
    idx = 0
    while idx < _44:
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _46 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = 0x2796dff200000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 102] = arg3
        require ext_code.size(address(_46))
        call address(_46).0x2796dff2 with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        _44 = mem[ceil32(32 * arg1.length) + 97]
        idx = idx + 1
        continue 
}



}
