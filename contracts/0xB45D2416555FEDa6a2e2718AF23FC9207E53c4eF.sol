contract main {




// =====================  Runtime code  =====================


address owner;
address treasuryAddress;
address buybackAddress;
address stor3;

function treasury() {
    return treasuryAddress
}

function owner() {
    return owner
}

function buyback() {
    return buybackAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function changePool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    stor3 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8e304665(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    require address(arg1)
    emit OwnershipTransferred(owner, address(arg1));
    owner = address(arg1)
}

function claimPool() {
    require msg.sender == owner
    require ext_code.size(stor3)
    call stor3.claim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_94392cd9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == owner
    require ext_code.size(stor3)
    call stor3.changeOwner(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9d69478d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    mem[96] = 0x9d69478d00000000000000000000000000000000000000000000000000000000
    mem[100] = address(cd[4])
    mem[132] = address(cd[36])
    mem[164] = address(cd[68])
    mem[196] = 192
    mem[292] = ('cd', 100).length
    idx = 0
    s = 324
    t = cd[100] + 36
    while idx < ('cd', 100).length:
        require cd[t] == bool(cd[t])
        mem[s] = bool(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[228] = (32 * ('cd', 100).length) + 224
    mem[(32 * ('cd', 100).length) + 324] = ('cd', 132).length
    idx = 0
    s = cd[132] + 36
    t = (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 356
    u = (32 * ('cd', 100).length) + 356
    while idx < ('cd', 132).length:
        mem[u] = t + -(32 * ('cd', 100).length) - 356
        require cd[s] < calldata.size + -cd[132] - 67
        require cd[(cd[132] + cd[s] + 36)] <= test266151307()
        require cd[132] + 36 <= calldata.size - cd[(cd[132] + cd[s] + 36)]
        mem[t] = cd[(cd[132] + cd[s] + 36)]
        mem[t + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
        mem[cd[(cd[132] + cd[s] + 36)] + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    mem[260] = (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + 256
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + 356] = ('cd', 164).length
    require ('cd', 164).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + 388 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
    mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 388] = 0
    call stor3.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 384]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _9 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_9] == mem[_9 + 12 len 20]
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        call treasuryAddress with:
           value msg.value / 2 wei
             gas 30000 wei
        if msg.value < msg.value / 2:
            revert with 0, 17
        call buybackAddress with:
           value msg.value - (msg.value / 2) wei
             gas 30000 wei
    else:
        if unknown_0x4339bc30(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            require msg.sender == owner
            stor3 = address(cd[4])
        else:
            if unknown_0x61d027b3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return treasuryAddress
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require msg.sender == owner
                emit OwnershipRenounced(owner);
                owner = 0
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x8e304665(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require msg.sender == owner
                    require address(cd[4])
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
                else:
                    if unknown_0x8f32d59b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return (msg.sender == owner)
                    if unknown_0x94392cd9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        require msg.sender == owner
                        require ext_code.size(stor3)
                        call stor3.changeOwner(address arg1) with:
                             gas gas_remaining wei
                            args address(cd[4])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x9d69478d(?????):
                            if unknown_0xb6bfd24b(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require msg.sender == owner
                                require ext_code.size(stor3)
                                call stor3.claim() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                                    require unknown_0xf8ec6911(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    return buybackAddress
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] == address(cd[4])
                                require msg.sender == owner
                                require address(cd[4])
                                emit OwnershipTransferred(owner, address(cd[4]));
                                owner = address(cd[4])
                        else:
                            require calldata.size - 4 >= 192
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            require cd[68] == address(cd[68])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            require ('cd', 100).length <= test266151307()
                            require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                            require cd[132] <= test266151307()
                            require cd[132] + 35 < calldata.size
                            require ('cd', 132).length <= test266151307()
                            require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                            require cd[164] <= test266151307()
                            require cd[164] + 35 < calldata.size
                            require ('cd', 164).length <= test266151307()
                            require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
                            mem[128] = 0x9d69478d00000000000000000000000000000000000000000000000000000000
                            mem[132] = address(cd[4])
                            mem[164] = address(cd[36])
                            mem[196] = address(cd[68])
                            mem[228] = 192
                            mem[324] = ('cd', 100).length
                            idx = 0
                            s = 356
                            t = cd[100] + 36
                            while idx < ('cd', 100).length:
                                require cd[t] == bool(cd[t])
                                mem[s] = bool(cd[t])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[260] = (32 * ('cd', 100).length) + 224
                            mem[(32 * ('cd', 100).length) + 356] = ('cd', 132).length
                            idx = 0
                            s = cd[132] + 36
                            t = (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 388
                            u = (32 * ('cd', 100).length) + 388
                            while idx < ('cd', 132).length:
                                mem[u] = t + -(32 * ('cd', 100).length) - 388
                                require cd[s] < calldata.size + -cd[132] - 67
                                require cd[(cd[132] + cd[s] + 36)] <= test266151307()
                                require cd[132] + 36 <= calldata.size - cd[(cd[132] + cd[s] + 36)]
                                mem[t] = cd[(cd[132] + cd[s] + 36)]
                                mem[t + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
                                mem[cd[(cd[132] + cd[s] + 36)] + t + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
                                u = u + 32
                                continue 
                            mem[292] = (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + 256
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + 388] = ('cd', 164).length
                            require ('cd', 164).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + 420 len 32 * ('cd', 164).length] = call.data[cd[164] + 36 len 32 * ('cd', 164).length]
                            mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 420] = 0
                            call stor3.mem[mem[64] len 4] with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + -mem[64] + 416]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _30 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_30] == mem[_30 + 12 len 20]
}



}
