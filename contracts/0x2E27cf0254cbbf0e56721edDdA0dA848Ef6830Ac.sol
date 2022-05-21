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

function sub_259c276e(?) payable {
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
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _216 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _218 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        _219 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = address(_216)
        mem[mem[64] + 100] = _218
        _220 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_220 + 32] = mem[_220 + 36 len 28] or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[64] = _219 + 196
        mem[_219 + 132] = 32
        mem[_219 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(address(cd[4])) <= 0:
            revert with 0, 'Address: call to non-contract'
        _226 = mem[_220]
        s = 0
        while s < _226:
            mem[_219 + s + 196] = mem[_220 + s + 32]
            s = s + 32
            continue 
        if ceil32(_226) > _226:
            mem[_219 + _226 + 196] = 0
        call address(cd[4]).mem[_219 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_219 + 200 len _226 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_219 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_219 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[_219 + idx + 264] = mem[_219 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_219 + 264]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _219 + ceil32(return_data.size) + 197
            mem[_219 + 196] = return_data.size
            mem[_219 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_219 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_219 + ceil32(return_data.size) + 201] = 32
                idx = 0
                while idx < 32:
                    mem[_219 + ceil32(return_data.size) + idx + 265] = mem[_219 + idx + 164]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_219 + ceil32(return_data.size) + 265]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_219 + 228] == bool(mem[_219 + 228])
                if not mem[_219 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
