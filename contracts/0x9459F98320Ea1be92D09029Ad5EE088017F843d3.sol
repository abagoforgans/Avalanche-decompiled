contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3861dda9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4b32129b(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    call address(arg1) with:
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with 0, 'fail'
    return bool(ext_call.success)
}

function sub_f03d5ce7(?) {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    mem[floor32(('cd', 100).length) + 97] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 100).length) + 101] = cd[4]
    mem[floor32(('cd', 100).length) + 133] = 128
    mem[floor32(('cd', 100).length) + 229] = ('cd', 100).length
    idx = 0
    s = 128
    t = floor32(('cd', 100).length) + 261
    while idx < ('cd', 100).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 100).length) + 165] = this.address
    mem[floor32(('cd', 100).length) + 197] = cd[164]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value cd[4] wei
         gas gas_remaining wei
        args cd[4], Array(len=('cd', 100).length, data=mem[floor32(('cd', 100).length) + 261 len 32 * ('cd', 100).length]), address(this.address), cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 100).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    _119 = mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32
    require mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 <= test266151307()
    require floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 128 < floor32(('cd', 100).length) + return_data.size + 97
    _120 = mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]
    if mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97] > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98 > test266151307() or floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 100).length) + mem[floor32(('cd', 100).length) + 97 len 4], Mask(224, 32, cd[4]) >> 32 + 97]) + 98
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = _120
    require _119 + (32 * _120) + 32 <= return_data.size
    idx = 0
    s = floor32(('cd', 100).length) + _119 + 129
    t = floor32(('cd', 100).length) + ceil32(return_data.size) + 129
    while idx < _120:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _120:
        revert with 'NH{q', 50
    if mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 161] <= 0:
        revert with 0, 'buy failed'
    if 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    _180 = mem[160]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(cd[68])
    require ext_code.size(address(_180))
    staticcall address(_180).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), address(cd[68])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _184 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_184] == mem[_184]
    if mem[_184] >= cd[4]:
        _187 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_187 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        if 0 >= mem[_187]:
            revert with 'NH{q', 50
        mem[_187 + 32] = mem[172 len 20]
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        if 1 >= mem[_187]:
            revert with 'NH{q', 50
        mem[_187 + 64] = mem[140 len 20]
        if 1 >= _120:
            revert with 'NH{q', 50
        _197 = mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 161]
        mem[_187 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[_187 + 100] = _197
        mem[_187 + 132] = cd[132]
        mem[_187 + 164] = 160
        mem[_187 + 260] = mem[_187]
        idx = 0
        s = _187 + 32
        t = _187 + 292
        while idx < mem[_187]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_187 + 196] = this.address
        mem[_187 + 228] = cd[164]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _187 + (32 * mem[_187]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _232 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _234 = mem[_232]
        require mem[_232] <= test266151307()
        require _232 + mem[_232] + 31 < _232 + return_data.size
        _236 = mem[_232 + mem[_232]]
        if mem[_232 + mem[_232]] > test266151307():
            revert with 'NH{q', 65
        if _232 + ceil32(return_data.size) + floor32(mem[_232 + mem[_232]]) + 1 > test266151307() or floor32(mem[_232 + mem[_232]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _232 + ceil32(return_data.size) + floor32(mem[_232 + mem[_232]]) + 1
        mem[_232 + ceil32(return_data.size)] = _236
        require _234 + (32 * _236) + 32 <= return_data.size
        idx = 0
        s = _232 + _234 + 32
        t = _232 + ceil32(return_data.size) + 32
        while idx < _236:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        _188 = mem[160]
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_188))
        call address(_188).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[68]), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_200] == bool(mem[_200])
        _204 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_204 + 32 len 64] = call.data[calldata.size len 64]
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        if 0 >= mem[_204]:
            revert with 'NH{q', 50
        mem[_204 + 32] = mem[172 len 20]
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        if 1 >= mem[_204]:
            revert with 'NH{q', 50
        mem[_204 + 64] = mem[140 len 20]
        if 1 >= _120:
            revert with 'NH{q', 50
        _212 = mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 161]
        mem[_204 + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[_204 + 100] = _212
        mem[_204 + 132] = cd[132]
        mem[_204 + 164] = 160
        mem[_204 + 260] = mem[_204]
        idx = 0
        s = _204 + 32
        t = _204 + 292
        while idx < mem[_204]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_204 + 196] = this.address
        mem[_204 + 228] = cd[164]
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _204 + (32 * mem[_204]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _235 = mem[_233]
        require mem[_233] <= test266151307()
        require _233 + mem[_233] + 31 < _233 + return_data.size
        _237 = mem[_233 + mem[_233]]
        if mem[_233 + mem[_233]] > test266151307():
            revert with 'NH{q', 65
        if _233 + ceil32(return_data.size) + floor32(mem[_233 + mem[_233]]) + 1 > test266151307() or floor32(mem[_233 + mem[_233]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _233 + ceil32(return_data.size) + floor32(mem[_233 + mem[_233]]) + 1
        mem[_233 + ceil32(return_data.size)] = _237
        require _235 + (32 * _237) + 32 <= return_data.size
        idx = 0
        s = _233 + _235 + 32
        t = _233 + ceil32(return_data.size) + 32
        while idx < _237:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}



}
