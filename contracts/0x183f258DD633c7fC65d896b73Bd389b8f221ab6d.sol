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

function sub_98d81622(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Distribute: different length'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _237 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        _238 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = _237
        _240 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_240 + 32] = mem[_240 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _238 + 164
        mem[_238 + 100] = 32
        mem[_238 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[4])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _246 = mem[_240]
        s = 0
        while s < _246:
            mem[_238 + s + 164] = mem[_240 + s + 32]
            s = s + 32
            continue 
        if ceil32(_246) > _246:
            mem[_238 + _246 + 164] = 0
        call address(cd[4]).mem[_238 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_238 + 168 len _246 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_238 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_238 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_238 + idx + 232] = mem[_238 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_238 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _238 + ceil32(return_data.size) + 165
            mem[_238 + 164] = return_data.size
            mem[_238 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_238 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_238 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_238 + ceil32(return_data.size) + idx + 233] = mem[_238 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_238 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_238 + 196] == bool(mem[_238 + 196])
                if not mem[_238 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}



}
