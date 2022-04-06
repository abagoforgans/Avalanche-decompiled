contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor2;
uint8 stor3; offset 160
address stor3;

function owner() {
    return owner
}

function sub_280b1ac9(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    selfdestruct(address(stor3.field_0))
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x4743d906(?????) > uint32(call.func_hash) >> 224:
            if lockXJK() == uint32(call.func_hash) >> 224:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                uint8(stor3.field_160) = 1
            else:
                if unknown_0x1efc0bbb(?????) == uint32(call.func_hash) >> 224:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    uint8(stor3.field_160) = 0
                else:
                    if unknown_0x280b1ac9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        selfdestruct(address(stor3.field_0))
                    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call address(stor3.field_0) with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x4743d906(?????) == uint32(call.func_hash) >> 224:
                require calldata.size - 4 >= 192
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require not uint8(stor3.field_160)
                require not stor2
                mem[128] = 2
                mem[64] = 224
                mem[160] = address(arg2)
                mem[192] = address(arg3)
                idx = 0
                while idx < arg4:
                    mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = arg5
                    mem[mem[64] + 36] = 128
                    mem[mem[64] + 132] = mem[128]
                    s = 0
                    t = mem[64] + 164
                    u = 160
                    while s < mem[128]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 68] = address(stor3.field_0)
                    mem[mem[64] + 100] = block.timestamp
                    require ext_code.size(address(arg1))
                    call address(arg1).swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                       value arg6 wei
                         gas gas_remaining wei
                        args arg5, 128, address(stor3.field_0), block.timestamp, mem[mem[64] + 132 len (32 * mem[128]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _67 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _69 = mem[_67]
                    require mem[_67] <= test266151307()
                    require _67 + mem[_67] + 31 < _67 + return_data.size
                    _70 = mem[_67 + mem[_67]]
                    if mem[_67 + mem[_67]] > test266151307():
                        revert with 0, 65
                    if _67 + ceil32(return_data.size) + ceil32(32 * mem[_67 + mem[_67]]) + 1 > test266151307() or ceil32(32 * mem[_67 + mem[_67]]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = _67 + ceil32(return_data.size) + ceil32(32 * mem[_67 + mem[_67]]) + 1
                    mem[_67 + ceil32(return_data.size)] = _70
                    require return_data.size >= _69 + (32 * _70) + 32
                    t = _67 + _69 + 32
                    u = _67 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _70:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                stor2 = 1
            else:
                if unknown_0x57aa758e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor2 = arg1
                else:
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        emit OwnershipTransferred(owner, 0);
                        owner = 0
                    else:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if unknown_0xb4bc7d7b(?????) == uint32(call.func_hash) >> 224:
                            require calldata.size - 4 >= 192
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            require arg3 == address(arg3)
                            require not uint8(stor3.field_160)
                            require not stor2
                            mem[128] = 2
                            mem[64] = 224
                            mem[160] = address(arg2)
                            mem[192] = address(arg3)
                            idx = 0
                            while idx < arg4:
                                _44 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_44] = 26
                                mem[_44 + 32] = 'SafeMath: division by zero'
                                if not arg4:
                                    _46 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[idx + _46 + 68] = mem[idx + _44 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_46 + 94] = 0
                                    revert with memory
                                      from mem[64]
                                       len _46 + -mem[64] + 100
                                _52 = mem[64]
                                mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = arg5
                                mem[mem[64] + 36] = 128
                                _54 = mem[128]
                                mem[mem[64] + 132] = mem[128]
                                s = 0
                                t = mem[64] + 164
                                u = 160
                                while s < _54:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_52 + 68] = address(stor3.field_0)
                                mem[_52 + 100] = block.timestamp
                                require ext_code.size(address(arg1))
                                call address(arg1).mem[mem[64] len 4] with:
                                   value arg6 / arg4 wei
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _52 + (32 * _54) + -mem[64] + 160]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor2 = 1
}

function lockXJK() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 1
}

function unlockXJK() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_160) = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setCounterABDX(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(stor3.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function C5D(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require not uint8(stor3.field_160)
    require not stor2
    mem[96] = 2
    mem[64] = 192
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < arg4:
        _14 = mem[64]
        mem[64] = mem[64] + 64
        mem[_14] = 26
        mem[_14 + 32] = 'SafeMath: division by zero'
        if not arg4:
            _15 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _15 + 68] = mem[idx + _14 + 32]
                idx = idx + 32
                continue 
            mem[_15 + 94] = 0
            revert with memory
              from mem[64]
               len _15 + -mem[64] + 100
        _18 = mem[64]
        mem[mem[64]] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg5
        mem[mem[64] + 36] = 128
        _20 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = mem[64] + 164
        u = 128
        while s < _20:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_18 + 68] = address(stor3.field_0)
        mem[_18 + 100] = block.timestamp
        require ext_code.size(arg1)
        call arg1.mem[mem[64] len 4] with:
           value arg6 / arg4 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _18 + (32 * _20) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor2 = 1
}

function D5D(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require not uint8(stor3.field_160)
    require not stor2
    mem[96] = 2
    mem[64] = 192
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < arg4:
        _13 = mem[64]
        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg5
        mem[mem[64] + 36] = 128
        _14 = mem[96]
        mem[mem[64] + 132] = mem[96]
        s = 0
        t = mem[64] + 164
        u = 128
        while s < _14:
            mem[t] = mem[u + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_13 + 68] = address(stor3.field_0)
        mem[_13 + 100] = block.timestamp
        require ext_code.size(arg1)
        call arg1.mem[mem[64] len 4] with:
           value arg6 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _13 + (32 * _14) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _24 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _25 = mem[_24]
        require mem[_24] <= test266151307()
        require _24 + mem[_24] + 31 < _24 + return_data.size
        _26 = mem[_24 + mem[_24]]
        if mem[_24 + mem[_24]] > test266151307():
            revert with 0, 65
        if _24 + ceil32(return_data.size) + ceil32(32 * mem[_24 + mem[_24]]) + 1 > test266151307() or ceil32(32 * mem[_24 + mem[_24]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _24 + ceil32(return_data.size) + ceil32(32 * mem[_24 + mem[_24]]) + 1
        mem[_24 + ceil32(return_data.size)] = _26
        require return_data.size >= _25 + (32 * _26) + 32
        t = _24 + _25 + 32
        u = _24 + ceil32(return_data.size) + 32
        s = 0
        while s < _26:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor2 = 1
}



}
