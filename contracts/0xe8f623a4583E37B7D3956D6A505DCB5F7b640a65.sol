contract main {




// =====================  Runtime code  =====================


address sub_de6c20fdAddress;
address stor1;
uint256 sub_121a5805;
uint256 sub_ec5ea9f1;
uint8 stor4;
mapping of uint8 stor5;
mapping of struct sub_2f7baebb;
address emitterAddress;

function sub_121a5805(?) payable {
    return sub_121a5805
}

function sub_2f7baebb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_2f7baebb[address(arg1)][1][address(arg2)].field_0
}

function sub_62757d37(?) payable {
    return sub_ec5ea9f1
}

function sub_afa72b80(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2f7baebb[address(arg1)].field_0
}

function emitter() payable {
    return emitterAddress
}

function sub_de6c20fd(?) payable {
    return sub_de6c20fdAddress
}

function sub_ec5ea9f1(?) payable {
    return sub_ec5ea9f1
}

function _fallback() payable {
    revert
}

function setEmitter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if emitterAddress:
        revert with 0, 'emitter already set'
    if 0x657f21492e7f6433e87cb9746d2de375ac6aeb3 != msg.sender:
        revert with 0, 'invalid caller'
    emitterAddress = arg1
}

function setup(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor4:
        revert with 0, 'veYETI: already setup'
    sub_de6c20fdAddress = arg1
    stor1 = arg2
    sub_ec5ea9f1 = arg3
    stor4 = 1
}

function sub_4b879069(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'veYETI: Caller is not YetiController'
    stor5[address(arg1)] = uint8(bool(arg2))
    emit 0xda2ee357: address(arg1), bool(arg2)
}

function sub_0a95bceb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp < sub_2f7baebb[address(arg1)].field_512:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_0 and sub_ec5ea9f1 > -1 / sub_2f7baebb[address(arg1)].field_0:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1 and block.timestamp - sub_2f7baebb[address(arg1)].field_512 > -1 / sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_768 > (-1 * block.timestamp * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) + (sub_2f7baebb[address(arg1)].field_512 * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) - 1:
        revert with 'NH{q', 17
    return (sub_2f7baebb[address(arg1)].field_768 + (block.timestamp * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) - (sub_2f7baebb[address(arg1)].field_512 * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1))
}

function sub_b03d659b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_2f7baebb[address(arg1)].field_0:
        return 0
    if block.timestamp < sub_2f7baebb[address(arg1)].field_512:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_0 and sub_ec5ea9f1 > -1 / sub_2f7baebb[address(arg1)].field_0:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1 and block.timestamp - sub_2f7baebb[address(arg1)].field_512 > -1 / sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_768 > (-1 * block.timestamp * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) + (sub_2f7baebb[address(arg1)].field_512 * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) - 1:
        revert with 'NH{q', 17
    if sub_2f7baebb[address(arg1)].field_768 + (block.timestamp * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) - (sub_2f7baebb[address(arg1)].field_512 * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) and sub_2f7baebb[address(arg1)][1][address(arg2)].field_0 > -1 / sub_2f7baebb[address(arg1)].field_768 + (block.timestamp * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1) - (sub_2f7baebb[address(arg1)].field_512 * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1):
        revert with 'NH{q', 17
    if not sub_2f7baebb[address(arg1)].field_0:
        revert with 'NH{q', 18
    return ((sub_2f7baebb[address(arg1)].field_768 * sub_2f7baebb[address(arg1)][1][address(arg2)].field_0) + (block.timestamp * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1 * sub_2f7baebb[address(arg1)][1][address(arg2)].field_0) - (sub_2f7baebb[address(arg1)].field_512 * sub_2f7baebb[address(arg1)].field_0 * sub_ec5ea9f1 * sub_2f7baebb[address(arg1)][1][address(arg2)].field_0) / sub_2f7baebb[address(arg1)].field_0)
}

function sub_deec2270(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (96 * ('cd', 4).length) + 36:
        require calldata.size - idx >= 96
        _74 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_74] = cd[idx]
        require cd[(idx + 32)] == cd[(idx + 32)]
        mem[_74 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == bool(cd[(idx + 64)])
        mem[_74 + 64] = cd[(idx + 64)]
        mem[s] = _74
        idx = idx + 96
        s = s + 32
        continue 
    if msg.sender == tx.origin:
        mem[mem[64]] = 0xf31878ae00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(emitterAddress)
        call emitterAddress.0xf31878ae with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = msg.sender
        mem[32] = 6
        idx = 0
        s = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + 128] + 64]:
                if 0 > -mem[mem[(32 * idx) + 128] + 32] - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > -mem[mem[(32 * idx) + 128] + 32] - 1:
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + 128] + 32]
            continue 
        if s < 0:
            if 0 < s:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_768 = 0
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _289 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _313 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_313 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _313
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _313:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_289)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_289)].field_0 < _313:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_289)].field_0 -= _313
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if -s > 0:
                if sub_2f7baebb[address(msg.sender)].field_0 < -s:
                    revert with 0, 'veYETI: insufficient Yeti for user to unstake'
                sub_2f7baebb[address(msg.sender)].field_0 += s
                if sub_121a5805 < -s:
                    revert with 'NH{q', 17
                sub_121a5805 += s
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = -s
                call sub_de6c20fdAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_372] == bool(mem[_372])
            if sub_121a5805 > 500000000 * 10^18:
                revert with 0, 'more Yeti staked in this contract than the total supply'
            sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
            emit 0xab3ddac2: msg.sender, 0, -s
        else:
            if block.timestamp < sub_2f7baebb[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if sub_2f7baebb[address(msg.sender)].field_0 and sub_ec5ea9f1 > -1 / sub_2f7baebb[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1 and block.timestamp - sub_2f7baebb[address(msg.sender)].field_512 > -1 / sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1:
                revert with 'NH{q', 17
            if sub_2f7baebb[address(msg.sender)].field_768 > (-1 * block.timestamp * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1) + (sub_2f7baebb[address(msg.sender)].field_512 * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1) - 1:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_768 = sub_2f7baebb[address(msg.sender)].field_768 + (block.timestamp * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1) - (sub_2f7baebb[address(msg.sender)].field_512 * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1)
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _292 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _315 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_315 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _315
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _315:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_292)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_292)].field_0 < _315:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_292)].field_0 -= _315
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if s > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = s
                call sub_de6c20fdAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _366 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_366] == bool(mem[_366])
                require mem[_366]
                if sub_2f7baebb[address(msg.sender)].field_0 > -s - 1:
                    revert with 'NH{q', 17
                sub_2f7baebb[address(msg.sender)].field_0 += s
                if sub_121a5805 > -s - 1:
                    revert with 'NH{q', 17
                sub_121a5805 += s
            if sub_121a5805 > 500000000 * 10^18:
                revert with 0, 'more Yeti staked in this contract than the total supply'
            sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
            emit 0xab3ddac2: msg.sender, 1, s
    else:
        if not stor5[address(msg.sender)]:
            revert with 0, 'veYETI: update() can only be called by EOAs or whitelisted contracts'
        mem[mem[64]] = 0xf31878ae00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(emitterAddress)
        call emitterAddress.0xf31878ae with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = msg.sender
        mem[32] = 6
        idx = 0
        s = 0
        while idx < mem[96]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + 128] + 64]:
                if 0 > -mem[mem[(32 * idx) + 128] + 32] - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > -mem[mem[(32 * idx) + 128] + 32] - 1:
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + 128] + 32]
            continue 
        if s < 0:
            if 0 < s:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_768 = 0
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _295 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _317 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_317 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _317
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _317:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_295)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_295)].field_0 < _317:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_295)].field_0 -= _317
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if -s > 0:
                if sub_2f7baebb[address(msg.sender)].field_0 < -s:
                    revert with 0, 'veYETI: insufficient Yeti for user to unstake'
                sub_2f7baebb[address(msg.sender)].field_0 += s
                if sub_121a5805 < -s:
                    revert with 'NH{q', 17
                sub_121a5805 += s
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = -s
                call sub_de6c20fdAddress.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, -s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_373] == bool(mem[_373])
            if sub_121a5805 > 500000000 * 10^18:
                revert with 0, 'more Yeti staked in this contract than the total supply'
            sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
            emit 0xab3ddac2: msg.sender, 0, -s
        else:
            if block.timestamp < sub_2f7baebb[address(msg.sender)].field_512:
                revert with 'NH{q', 17
            if sub_2f7baebb[address(msg.sender)].field_0 and sub_ec5ea9f1 > -1 / sub_2f7baebb[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1 and block.timestamp - sub_2f7baebb[address(msg.sender)].field_512 > -1 / sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1:
                revert with 'NH{q', 17
            if sub_2f7baebb[address(msg.sender)].field_768 > (-1 * block.timestamp * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1) + (sub_2f7baebb[address(msg.sender)].field_512 * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1) - 1:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_768 = sub_2f7baebb[address(msg.sender)].field_768 + (block.timestamp * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1) - (sub_2f7baebb[address(msg.sender)].field_512 * sub_2f7baebb[address(msg.sender)].field_0 * sub_ec5ea9f1)
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < mem[96]:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _298 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _319 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_319 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _319
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _319:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_298)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_298)].field_0 < _319:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_298)].field_0 -= _319
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if s > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = s
                call sub_de6c20fdAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_367] == bool(mem[_367])
                require mem[_367]
                if sub_2f7baebb[address(msg.sender)].field_0 > -s - 1:
                    revert with 'NH{q', 17
                sub_2f7baebb[address(msg.sender)].field_0 += s
                if sub_121a5805 > -s - 1:
                    revert with 'NH{q', 17
                sub_121a5805 += s
            if sub_121a5805 > 500000000 * 10^18:
                revert with 0, 'more Yeti staked in this contract than the total supply'
            sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
            emit 0xab3ddac2: msg.sender, 1, s
}



}
