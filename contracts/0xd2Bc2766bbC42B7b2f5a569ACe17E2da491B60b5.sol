contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_fb0ecf68;
address stor2;
address stor3;
address stor4;

function owner() payable {
    return owner
}

function sub_fb0ecf68(?) payable {
    return sub_fb0ecf68
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

function sub_efc52d27(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = address(arg1)
    stor3 = address(arg2)
    stor4 = address(arg3)
    sub_fb0ecf68 = arg4
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

function withdrawToken() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor2):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call stor2 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function claim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 101] = msg.sender
    require ext_code.size(stor2)
    staticcall stor2.Blacklisted(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Blacklisted'
    mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 101] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97] = 96
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 129] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 161] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 193] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 225] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 257] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 289] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 321] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 353] = 0
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385] = 1
    mem[64] = ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 449
    mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 417] = call.data[calldata.size]
    idx = 0
    s = ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _272 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor3)
        staticcall stor3.0x6352211e with:
                gas gas_remaining wei
               args _272
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_277] == mem[_277 + 12 len 20]
        if mem[_277 + 12 len 20] != msg.sender:
            revert with 0, 'Not owner'
        if idx >= mem[96]:
            revert with 0, 50
        _287 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x36dac2cc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _287
        require ext_code.size(stor4)
        staticcall stor4.getMeta(uint256 arg1) with:
                gas gas_remaining wei
               args _287
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _298 = mem[_295]
        require mem[_295] <= test266151307()
        require return_data.size - mem[_295] >= 288
        if not bool(_295 + ceil32(return_data.size) + 288 <= test266151307()):
            revert with 0, 65
        mem[64] = _295 + ceil32(return_data.size) + 288
        _302 = mem[_295 + _298]
        require mem[_295 + _298] <= test266151307()
        require _295 + _298 + mem[_295 + _298] + 31 < _295 + return_data.size
        _306 = mem[_295 + _298 + mem[_295 + _298]]
        if mem[_295 + _298 + mem[_295 + _298]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_295 + _298 + mem[_295 + _298]])) + 289 < 288 or _295 + ceil32(return_data.size) + ceil32(ceil32(mem[_295 + _298 + mem[_295 + _298]])) + 289 > test266151307():
            revert with 0, 65
        mem[64] = _295 + ceil32(return_data.size) + ceil32(ceil32(mem[_295 + _298 + mem[_295 + _298]])) + 289
        mem[_295 + ceil32(return_data.size) + 288] = _306
        require _298 + _302 + _306 + 32 <= return_data.size
        s = 0
        while s < _306:
            mem[s + _295 + ceil32(return_data.size) + 320] = mem[s + _295 + _298 + _302 + 32]
            s = s + 32
            continue 
        if ceil32(_306) <= _306:
            mem[_295 + ceil32(return_data.size)] = _295 + ceil32(return_data.size) + 288
            mem[_295 + ceil32(return_data.size) + 32] = mem[_295 + _298 + 32]
            mem[_295 + ceil32(return_data.size) + 64] = mem[_295 + _298 + 64]
            mem[_295 + ceil32(return_data.size) + 96] = mem[_295 + _298 + 96]
            mem[_295 + ceil32(return_data.size) + 128] = mem[_295 + _298 + 128]
            mem[_295 + ceil32(return_data.size) + 160] = mem[_295 + _298 + 160]
            mem[_295 + ceil32(return_data.size) + 192] = mem[_295 + _298 + 192]
            require mem[_295 + _298 + 224] < 6
            mem[_295 + ceil32(return_data.size) + 224] = mem[_295 + _298 + 224]
            require mem[_295 + _298 + 256] < 6
            mem[_295 + ceil32(return_data.size) + 256] = mem[_295 + _298 + 256]
            if mem[_295 + ceil32(return_data.size) + 96] > !sub_fb0ecf68:
                revert with 0, 17
            if mem[_295 + ceil32(return_data.size) + 96] + sub_fb0ecf68 <= block.timestamp:
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 >= mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385]:
                    revert with 0, 50
                mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 417] = mem[(32 * idx) + 128]
                _455 = mem[64]
                mem[mem[64]] = 0x6ba4c13800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _460 = mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385]
                mem[mem[64] + 36] = mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385]
                s = 0
                t = mem[64] + 68
                u = ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 417
                while s < _460:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _455 + (32 * _460) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[_295 + ceil32(return_data.size) + _306 + 320] = 0
            mem[_295 + ceil32(return_data.size)] = _295 + ceil32(return_data.size) + 288
            mem[_295 + ceil32(return_data.size) + 32] = mem[_295 + _298 + 32]
            mem[_295 + ceil32(return_data.size) + 64] = mem[_295 + _298 + 64]
            mem[_295 + ceil32(return_data.size) + 96] = mem[_295 + _298 + 96]
            mem[_295 + ceil32(return_data.size) + 128] = mem[_295 + _298 + 128]
            mem[_295 + ceil32(return_data.size) + 160] = mem[_295 + _298 + 160]
            mem[_295 + ceil32(return_data.size) + 192] = mem[_295 + _298 + 192]
            require mem[_295 + _298 + 224] < 6
            mem[_295 + ceil32(return_data.size) + 224] = mem[_295 + _298 + 224]
            require mem[_295 + _298 + 256] < 6
            mem[_295 + ceil32(return_data.size) + 256] = mem[_295 + _298 + 256]
            if mem[_295 + ceil32(return_data.size) + 96] > !sub_fb0ecf68:
                revert with 0, 17
            if mem[_295 + ceil32(return_data.size) + 96] + sub_fb0ecf68 <= block.timestamp:
                if idx >= mem[96]:
                    revert with 0, 50
                if 0 >= mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385]:
                    revert with 0, 50
                mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 417] = mem[(32 * idx) + 128]
                _461 = mem[64]
                mem[mem[64]] = 0x6ba4c13800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _464 = mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385]
                mem[mem[64] + 36] = mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 385]
                s = 0
                t = mem[64] + 68
                u = ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 417
                while s < _464:
                    mem[t] = mem[u]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(stor4)
                call stor4.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _461 + (32 * _464) + -mem[64] + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _295 + ceil32(return_data.size)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _274 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _276 = mem[_274]
    if mem[_274] < ext_call.return_data[0]:
        revert with 0, 17
    if mem[_274] - ext_call.return_data[0] <= 0:
        revert with 0, 'Nothing to claim'
    _280 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _276 - ext_call.return_data[0]
    _281 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_280 + 100] = 32
    mem[_280 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stor2):
        revert with 0, 'Address: call to non-contract'
    _296 = mem[_281]
    mem[_280 + 164 len ceil32(mem[_281])] = mem[_281 + 32 len ceil32(mem[_281])]
    if ceil32(_296) <= _296:
        call stor2 with:
             gas gas_remaining wei
            args mem[_280 + 168 len _296 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_280 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_280 + 196] == bool(mem[_280 + 196])
                if not mem[_280 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_280 + _296 + 164] = 0
        call stor2 with:
             gas gas_remaining wei
            args mem[_280 + 168 len _296 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                var67001 = 32
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_280 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                var67001 = 32
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_280 + 196] == bool(mem[_280 + 196])
                if not mem[_280 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
