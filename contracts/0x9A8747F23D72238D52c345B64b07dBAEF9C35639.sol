contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, uint256 arg2)
#  - withdraw(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint256 depositAmount;
mapping of uint256 sub_cca3283f;
mapping of uint256 userBalance;
uint256 stor4D5A;

function depositAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositAmount[arg1]
}

function getUserBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userBalance[address(arg1)][address(arg2)], userBalance[address(arg1)][1][address(arg2)]
}

function owner() {
    return owner
}

function sub_cca3283f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_cca3283f[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_a0d065c3(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4D5A > !msg.value:
        revert with 0, 17
    stor4D5A += msg.value
    emit Deposit(1, msg.sender, msg.value, stor4D5A);
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

function sub_aec8744d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if depositAmount[address(arg2)] and userBalance[address(arg1)][address(arg2)] > -1 / depositAmount[address(arg2)]:
        revert with 0, 17
    if not sub_cca3283f[address(arg2)]:
        revert with 0, 18
    if depositAmount[address(arg2)] * userBalance[address(arg1)][address(arg2)] / sub_cca3283f[address(arg2)] < userBalance[address(arg1)][address(arg2)]:
        if depositAmount[address(arg2)] * userBalance[address(arg1)][address(arg2)] / sub_cca3283f[address(arg2)] >= userBalance[address(arg1)][1][address(arg2)]:
            if depositAmount[address(arg2)] * userBalance[address(arg1)][address(arg2)] / sub_cca3283f[address(arg2)] < userBalance[address(arg1)][1][address(arg2)]:
                revert with 0, 17
            return (depositAmount[address(arg2)] * userBalance[address(arg1)][address(arg2)] / sub_cca3283f[address(arg2)]) - userBalance[address(arg1)][1][address(arg2)], 
                   0
        if userBalance[address(arg1)][1][address(arg2)] < depositAmount[address(arg2)] * userBalance[address(arg1)][address(arg2)] / sub_cca3283f[address(arg2)]:
            revert with 0, 17
        return 0, 
               userBalance[address(arg1)][1][address(arg2)] - (depositAmount[address(arg2)] * userBalance[address(arg1)][address(arg2)] / sub_cca3283f[address(arg2)])
    if userBalance[address(arg1)][address(arg2)] >= userBalance[address(arg1)][1][address(arg2)]:
        if userBalance[address(arg1)][address(arg2)] < userBalance[address(arg1)][1][address(arg2)]:
            revert with 0, 17
        return userBalance[address(arg1)][address(arg2)] - userBalance[address(arg1)][1][address(arg2)], 0
    if userBalance[address(arg1)][1][address(arg2)] < userBalance[address(arg1)][address(arg2)]:
        revert with 0, 17
    return 0, userBalance[address(arg1)][1][address(arg2)] - userBalance[address(arg1)][address(arg2)]
}

function initialize() {
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
                        uint8(stor0.field_8) = 0
}

function sub_e1c97747(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
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
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    idx = 0
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'data length not match'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if userBalance[mem[(32 * idx) + 140 len 20]][address(cd[4])] > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 0, 17
        userBalance[mem[(32 * idx) + 140 len 20]][address(cd[4])] += mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[0] = address(cd[4])
        mem[32] = 102
        if sub_cca3283f[address(cd[4])] > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 0, 17
        sub_cca3283f[address(cd[4])] += mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function claimTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
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
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _349 = mem[(32 * idx) + 128]
        _351 = sha3(address(mem[(32 * idx) + 128]), sha3(address(msg.sender), 103))
        _352 = sha3(address(mem[(32 * idx) + 128]), 102)
        _353 = sha3(address(mem[(32 * idx) + 128]), 101)
        if depositAmount[address(mem[(32 * idx) + 128])] and userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] > -1 / depositAmount[address(mem[(32 * idx) + 128])]:
            revert with 0, 17
        if not sub_cca3283f[address(mem[(32 * idx) + 128])]:
            revert with 0, 18
        if depositAmount[address(mem[(32 * idx) + 128])] * userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] / sub_cca3283f[address(mem[(32 * idx) + 128])] < userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])]:
            if depositAmount[address(mem[(32 * idx) + 128])] * userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] / sub_cca3283f[address(mem[(32 * idx) + 128])] <= userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])]:
                revert with 0, 'over limited'
            _356 = sha3(address(mem[(32 * idx) + 128]), sha3(address(msg.sender), 103) + 1)
            if depositAmount[address(mem[(32 * idx) + 128])] * userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] / sub_cca3283f[address(mem[(32 * idx) + 128])] < userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])]:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(msg.sender), 103) + 1
            userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])] = depositAmount[address(mem[(32 * idx) + 128])] * userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] / sub_cca3283f[address(mem[(32 * idx) + 128])]
            if (depositAmount[address(mem[(32 * idx) + 128])] * userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] / sub_cca3283f[address(mem[(32 * idx) + 128])]) - userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])]:
                if 1 == mem[(32 * idx) + 140 len 20]:
                    _368 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    s = 0
                    while s < mem[_368]:
                        mem[s + _368 + 32] = mem[_368 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_368]) <= mem[_368]:
                        call msg.sender.mem[mem[64] len 4] with:
                           value (stor[_353] * stor[_351] / stor[_352]) - stor[_356] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_368] + _368 + -mem[64] + 28]
                        if return_data.size:
                            _530 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_530] = return_data.size
                            mem[_530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_368 + mem[_368] + 32] = 0
                        call msg.sender.mem[mem[64] len 4] with:
                           value (stor[_353] * stor[_351] / stor[_352]) - stor[_356] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_368] + _368 + -mem[64] + 28]
                        if return_data.size:
                            _537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_537] = return_data.size
                            mem[_537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'AVAX_TRANSFER_FAILED'
                else:
                    _364 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = (stor[_353] * stor[_351] / stor[_352]) - stor[_356]
                    _365 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_365 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_365 + 36 len 28]
                    _376 = mem[_365]
                    s = 0
                    while s < _376:
                        mem[s + _364 + 100] = mem[_365 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_376) <= _376:
                        call address(_349).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _376 + _364 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TRANSFER_FAILED'
                        else:
                            _528 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_528] = return_data.size
                            mem[_528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_528 + 32] == bool(mem[_528 + 32])
                                if not mem[_528 + 32]:
                                    revert with 0, 'TRANSFER_FAILED'
                    else:
                        mem[_364 + _376 + 100] = 0
                        call address(_349).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _376 + _364 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TRANSFER_FAILED'
                        else:
                            _536 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_536] = return_data.size
                            mem[_536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_536 + 32] == bool(mem[_536 + 32])
                                if not mem[_536 + 32]:
                                    revert with 0, 'TRANSFER_FAILED'
                mem[mem[64]] = address(_349)
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = (stor[_353] * stor[_351] / stor[_352]) - stor[_356]
                emit DistributeToken(address(_349), msg.sender, (stor[_353] * stor[_351] / stor[_352]) - stor[_356]);
        else:
            if userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] <= userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])]:
                revert with 0, 'over limited'
            _358 = sha3(address(mem[(32 * idx) + 128]), sha3(address(msg.sender), 103) + 1)
            if userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] < userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])]:
                revert with 0, 17
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(address(msg.sender), 103) + 1
            userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])] = userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])]
            if userBalance[address(msg.sender)][address(mem[(32 * idx) + 128])] - userBalance[address(msg.sender)][1][address(mem[(32 * idx) + 128])]:
                if 1 == mem[(32 * idx) + 140 len 20]:
                    _374 = mem[64]
                    mem[mem[64]] = 0
                    mem[64] = mem[64] + 32
                    s = 0
                    while s < mem[_374]:
                        mem[s + _374 + 32] = mem[_374 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(mem[_374]) <= mem[_374]:
                        call msg.sender.mem[mem[64] len 4] with:
                           value stor[_351] - stor[_358] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_374] + _374 + -mem[64] + 28]
                        if return_data.size:
                            _534 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_534] = return_data.size
                            mem[_534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        mem[_374 + mem[_374] + 32] = 0
                        call msg.sender.mem[mem[64] len 4] with:
                           value stor[_351] - stor[_358] wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len mem[_374] + _374 + -mem[64] + 28]
                        if return_data.size:
                            _539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_539] = return_data.size
                            mem[_539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'AVAX_TRANSFER_FAILED'
                else:
                    _370 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = stor[_351] - stor[_358]
                    _371 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_371 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_371 + 36 len 28]
                    _378 = mem[_371]
                    s = 0
                    while s < _378:
                        mem[s + _370 + 100] = mem[_371 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_378) <= _378:
                        call address(_349).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _378 + _370 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TRANSFER_FAILED'
                        else:
                            _532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_532] = return_data.size
                            mem[_532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_532 + 32] == bool(mem[_532 + 32])
                                if not mem[_532 + 32]:
                                    revert with 0, 'TRANSFER_FAILED'
                    else:
                        mem[_370 + _378 + 100] = 0
                        call address(_349).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _378 + _370 + -mem[64] + 96]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'TRANSFER_FAILED'
                        else:
                            _538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_538] = return_data.size
                            mem[_538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_538 + 32] == bool(mem[_538 + 32])
                                if not mem[_538 + 32]:
                                    revert with 0, 'TRANSFER_FAILED'
                mem[mem[64]] = address(_349)
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = stor[_351] - stor[_358]
                emit DistributeToken(address(_349), msg.sender, stor[_351] - stor[_358]);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
