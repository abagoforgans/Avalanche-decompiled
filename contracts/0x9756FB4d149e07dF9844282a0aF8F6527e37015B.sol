contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;

function owner() {
    return owner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_46431cb3(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg2) with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'AVAX_TRANSFER_FAILED'
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

function call(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with 0, 'CALL_FAILED'
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_7d3aeb19(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 99 < 98 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 99
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 50
        _299 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx >= mem[96]:
            revert with 0, 50
        _301 = mem[(32 * idx) + 128]
        _302 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 142 len 20]
        mem[mem[64] + 68] = _299
        _303 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_303 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_303 + 36 len 28]
        mem[64] = _302 + 164
        mem[_302 + 100] = 32
        mem[_302 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(_301)):
            revert with 0, 'Address: call to non-contract'
        _310 = mem[_303]
        s = 0
        while s < _310:
            mem[s + _302 + 164] = mem[s + _303 + 32]
            s = s + 32
            continue 
        if ceil32(_310) > _310:
            mem[_310 + _302 + 164] = 0
        call address(_301).mem[_302 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_302 + 168 len _310 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_302 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_302 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _302 + 232] = mem[idx + _302 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_302 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _302 + ceil32(return_data.size) + 165
            mem[_302 + 164] = return_data.size
            mem[_302 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_302 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_302 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _302 + ceil32(return_data.size) + 233] = mem[idx + _302 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_302 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_302 + 196] == bool(mem[_302 + 196])
                if not mem[_302 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x7d3aeb19(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x1b8b921d(?????):
                if uint32(call.func_hash) >> 224 != unknown_0x46431cb3(?????):
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    call address(cd[36]) with:
                       value cd[4] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'AVAX_TRANSFER_FAILED'
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                require ('cd', 36).length <= test266151307()
                require cd[36] + ('cd', 36).length + 36 <= calldata.size
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call address(cd[4]) with:
                     gas gas_remaining wei
                    args call.data[cd[36] + 36 len ('cd', 36).length]
                if not ext_call.success:
                    revert with 0, 'CALL_FAILED'
        else:
            if unknown_0x7d3aeb19(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                s = 160
                idx = cd[4] + 36
                while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                require cd[36] <= test266151307()
                require cd[36] + 35 < calldata.size
                if ('cd', 36).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 36).length) + 130 < 129 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 > test266151307():
                    revert with 0, 65
                mem[ceil32(32 * ('cd', 4).length) + 129] = ('cd', 36).length
                require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                idx = cd[36] + 36
                s = ceil32(32 * ('cd', 4).length) + 161
                while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                require cd[68] <= test266151307()
                require cd[68] + 35 < calldata.size
                if ('cd', 68).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 68).length) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 131
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ('cd', 68).length
                require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
                idx = cd[68] + 36
                s = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 162
                while idx < cd[68] + (32 * ('cd', 68).length) + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    idx = idx + 32
                    s = s + 32
                    continue 
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 50
                    _393 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 161]
                    if idx >= mem[128]:
                        revert with 0, 50
                    _395 = mem[(32 * idx) + 160]
                    _396 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 174 len 20]
                    mem[mem[64] + 68] = _393
                    _397 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_397 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_397 + 36 len 28]
                    mem[64] = _396 + 164
                    mem[_396 + 100] = 32
                    mem[_396 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_395)):
                        revert with 0, 'Address: call to non-contract'
                    _404 = mem[_397]
                    s = 0
                    while s < _404:
                        mem[s + _396 + 164] = mem[s + _397 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_404) > _404:
                        mem[_404 + _396 + 164] = 0
                    call address(_395).mem[_396 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_396 + 168 len _404 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_396 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_396 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _396 + 232] = mem[idx + _396 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_396 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _396 + ceil32(return_data.size) + 165
                        mem[_396 + 164] = return_data.size
                        mem[_396 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_396 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_396 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _396 + ceil32(return_data.size) + 233] = mem[idx + _396 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_396 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_396 + 196] == bool(mem[_396 + 196])
                            if not mem[_396 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if uint32(call.func_hash) >> 224 != unknown_0xc4d66de8(?????):
                    require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        if uint8(stor0.field_0):
                            revert with 0, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            owner = msg.sender
                            emit OwnershipTransferred(owner, msg.sender);
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                owner = msg.sender
                                emit OwnershipTransferred(owner, msg.sender);
                            else:
                                uint16(stor0.field_0) = 257
                                if uint8(stor0.field_0):
                                    revert with 0, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    owner = msg.sender
                                    emit OwnershipTransferred(owner, msg.sender);
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        owner = msg.sender
                                        emit OwnershipTransferred(owner, msg.sender);
                                    else:
                                        uint16(stor0.field_0) = 257
                                        owner = msg.sender
                                        emit OwnershipTransferred(owner, msg.sender);
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    owner = address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_8) = 0
}



}
