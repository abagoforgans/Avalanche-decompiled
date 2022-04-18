contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddr;

function tokenAddr() payable {
    return tokenAddr
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddr = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddr)
    staticcall tokenAddr.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function dropTokens(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
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
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 98
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _239 = mem[(32 * idx) + floor32(arg1.length) + 129]
        _240 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = _239
        _242 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_242 + 32] = mem[_242 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _240 + 164
        mem[_240 + 100] = 32
        mem[_240 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(tokenAddr) <= 0:
            revert with 0, 'Address: call to non-contract'
        _248 = mem[_242]
        s = 0
        while s < _248:
            mem[_240 + s + 164] = mem[_242 + s + 32]
            s = s + 32
            continue 
        if ceil32(_248) > _248:
            mem[_240 + _248 + 164] = 0
        call tokenAddr.mem[_240 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_240 + 168 len _248 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_240 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_240 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_240 + idx + 232] = mem[_240 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_240 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _240 + ceil32(return_data.size) + 165
            mem[_240 + 164] = return_data.size
            mem[_240 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_240 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_240 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_240 + ceil32(return_data.size) + idx + 233] = mem[_240 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_240 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_240 + 196] == bool(mem[_240 + 196])
                if not mem[_240 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}



}
