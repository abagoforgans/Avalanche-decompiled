contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f277243a(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = cd[4]
    mem[132] = 64
    mem[164] = ('cd', 68).length
    idx = 0
    s = cd[68] + 36
    t = 196
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args cd[4], Array(len=('cd', 68).length, data=mem[196 len 32 * ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _20 = mem[96 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 127 < return_data.size + 96
    _21 = mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, cd[4]) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _21
    require _20 + (32 * _21) + 32 <= return_data.size
    idx = 0
    s = _20 + 128
    t = ceil32(return_data.size) + 128
    while idx < _21:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _21 < 1:
        revert with 'NH{q', 17
    if _21 - 1 >= _21:
        revert with 'NH{q', 50
    if mem[(32 * _21 - 1) + ceil32(return_data.size) + 128] < cd[4]:
        return 0
    if _21 < 1:
        revert with 'NH{q', 17
    if _21 - 1 >= _21:
        revert with 'NH{q', 50
    if cd[4] < mem[(32 * _21 - 1) + ceil32(return_data.size) + 128]:
        revert with 'NH{q', 17
    mem[mem[64]] = cd[4] - mem[(32 * _21 - 1) + ceil32(return_data.size) + 128]
    return memory
      from mem[64]
       len 32
}

function sub_7294cc16(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 2 * 10^16
    while idx < cd[36]:
        _17 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 68).length
        s = 0
        t = cd[68] + 36
        u = mem[64] + 100
        while s < ('cd', 68).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _17 + (32 * ('cd', 68).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _32 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _33 = mem[_32]
        require mem[_32] <= test266151307()
        require _32 + mem[_32] + 31 < _32 + return_data.size
        _34 = mem[_32 + mem[_32]]
        if mem[_32 + mem[_32]] > test266151307():
            revert with 'NH{q', 65
        if _32 + ceil32(return_data.size) + floor32(mem[_32 + mem[_32]]) + 1 > test266151307() or floor32(mem[_32 + mem[_32]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _32 + ceil32(return_data.size) + floor32(mem[_32 + mem[_32]]) + 1
        mem[_32 + ceil32(return_data.size)] = _34
        require _33 + (32 * _34) + 32 <= return_data.size
        s = 0
        t = _32 + _33 + 32
        u = _32 + ceil32(return_data.size) + 32
        while s < _34:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _34 < 1:
            revert with 'NH{q', 17
        if _34 - 1 >= _34:
            revert with 'NH{q', 50
        if mem[(32 * _34 - 1) + _32 + ceil32(return_data.size) + 32] >= idx:
            if _34 < 1:
                revert with 'NH{q', 17
            if _34 - 1 >= _34:
                revert with 'NH{q', 50
            if idx < mem[(32 * _34 - 1) + _32 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
        if idx > -10000000000000001:
            revert with 'NH{q', 17
        idx = idx + 10^16
        continue 
    return 0
}

function sub_06af162b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = address(cd[4])
    mem[132] = cd[36]
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = cd[36]
    mem[ceil32(return_data.size) + 132] = cd[68]
    mem[ceil32(return_data.size) + 164] = 160
    mem[ceil32(return_data.size) + 260] = ('cd', 100).length
    idx = 0
    s = cd[100] + 36
    t = ceil32(return_data.size) + 292
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 196] = this.address
    mem[ceil32(return_data.size) + 228] = 1711275212
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args cd[36], cd[68], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 292 len 32 * ('cd', 100).length]), address(this.address), 1711275212
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _19 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _20 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]
    require _19 + (32 * _20) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _19 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _20:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _20 < 1:
        revert with 'NH{q', 17
    if _20 - 1 >= _20:
        revert with 'NH{q', 50
    require mem[(32 * _20 - 1) + (2 * ceil32(return_data.size)) + 128] > cd[36]
}



}
