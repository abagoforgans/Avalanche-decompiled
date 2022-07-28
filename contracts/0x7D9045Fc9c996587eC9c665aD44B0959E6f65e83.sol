contract main {




// =====================  Runtime code  =====================


address sub_de6c20fdAddress;
address stor1;
uint256 sub_121a5805;
uint256 sub_ec5ea9f1;
uint8 stor4;
mapping of uint8 stor5;
mapping of struct sub_2f7baebb;
address stor7;

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
    if stor7:
        revert with 0, 'emitter already set'
    stor7 = arg1
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
        _76 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[idx] == address(cd[idx])
        mem[_76] = cd[idx]
        require cd[(idx + 32)] == cd[(idx + 32)]
        mem[_76 + 32] = cd[(idx + 32)]
        require cd[(idx + 64)] == bool(cd[(idx + 64)])
        mem[_76 + 64] = cd[(idx + 64)]
        mem[s] = _76
        idx = idx + 96
        s = s + 32
        continue 
    if msg.sender == tx.origin:
        mem[mem[64]] = 0xf31878ae00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(stor7)
        call stor7.0xf31878ae with:
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
                    mem[0] = address(_295)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_295)].field_0 < _319:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_295)].field_0 -= _319
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
                _378 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_378] == bool(mem[_378])
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
                _321 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_321 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _321
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _321:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_298)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_298)].field_0 < _321:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_298)].field_0 -= _321
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if s > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = s
                call sub_de6c20fdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_372] == bool(mem[_372])
                require mem[_372]
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
        require ext_code.size(stor7)
        call stor7.0xf31878ae with:
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
                _301 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _323 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_323 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _323
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _323:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_301)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_301)].field_0 < _323:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_301)].field_0 -= _323
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
                _379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_379] == bool(mem[_379])
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
                _304 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _325 = mem[mem[(32 * idx) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_325 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _325
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _325:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_304)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_304)].field_0 < _325:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_304)].field_0 -= _325
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if s > 0:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = s
                call sub_de6c20fdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), s
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_373] == bool(mem[_373])
                require mem[_373]
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

function claimRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == tx.origin:
        mem[100] = msg.sender
        call stor7.0xc00007b0 with:
             gas gas_remaining wei
            args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 160] = 0
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[64] = ceil32(return_data.size) + 352
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 320] = 1
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 256
        mem[0] = msg.sender
        mem[32] = 6
        idx = 0
        s = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                if 0 > -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] - 1:
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            continue 
        if s < 0:
            if 0 < s:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_768 = 0
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                _231 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                _255 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_255 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _255
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _255:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_231)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_231)].field_0 < _255:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_231)].field_0 -= _255
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if -s <= 0:
                if sub_121a5805 > 500000000 * 10^18:
                    revert with 0, 'more Yeti staked in this contract than the total supply'
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                emit 0xab3ddac2: msg.sender, 0, -s
            if sub_2f7baebb[address(msg.sender)].field_0 < -s:
                revert with 0, 'veYETI: insufficient Yeti for user to unstake'
            sub_2f7baebb[address(msg.sender)].field_0 += s
            if sub_121a5805 < -s:
                revert with 'NH{q', 17
            sub_121a5805 += s
            mem[ceil32(return_data.size) + 356] = msg.sender
            mem[ceil32(return_data.size) + 388] = -s
            call sub_de6c20fdAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, -s
            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_121a5805 <= 500000000 * 10^18:
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                mem[(2 * ceil32(return_data.size)) + 352] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 384] = 0
                mem[(2 * ceil32(return_data.size)) + 416] = -s
                emit 0xab3ddac2: mem[(2 * ceil32(return_data.size)) + 352 len ceil32(return_data.size) + 96]
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
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                _234 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                _257 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_257 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _257
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _257:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_234)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_234)].field_0 < _257:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_234)].field_0 -= _257
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if s <= 0:
                if sub_121a5805 > 500000000 * 10^18:
                    revert with 0, 'more Yeti staked in this contract than the total supply'
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                emit 0xab3ddac2: msg.sender, 1, s
            mem[ceil32(return_data.size) + 356] = stor7
            mem[ceil32(return_data.size) + 388] = this.address
            mem[ceil32(return_data.size) + 420] = s
            call sub_de6c20fdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor7, address(this.address), s
            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            if sub_2f7baebb[address(msg.sender)].field_0 > -s - 1:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_0 += s
            if sub_121a5805 > -s - 1:
                revert with 'NH{q', 17
            sub_121a5805 += s
            if sub_121a5805 <= 500000000 * 10^18:
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                mem[(2 * ceil32(return_data.size)) + 352] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 384] = 1
                mem[(2 * ceil32(return_data.size)) + 416] = s
                emit 0xab3ddac2: mem[(2 * ceil32(return_data.size)) + 352 len ceil32(return_data.size) + 96]
    else:
        if not stor5[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'veYETI: update() can only be called by EOAs or whitelisted contracts'
        mem[100] = msg.sender
        call stor7.0xc00007b0 with:
             gas gas_remaining wei
            args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 1
        mem[ceil32(return_data.size) + 160] = 0
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[64] = ceil32(return_data.size) + 352
        mem[ceil32(return_data.size) + 256] = arg1
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 320] = 1
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + 256
        mem[0] = msg.sender
        mem[32] = 6
        idx = 0
        s = 0
        while idx < 1:
            if idx >= 1:
                revert with 'NH{q', 50
            if idx >= 1:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                if 0 > -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] - 1:
                    revert with 'NH{q', 17
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > -mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] - 1:
                revert with 'NH{q', 17
            if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
            continue 
        if s < 0:
            if 0 < s:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_768 = 0
            mem[0] = msg.sender
            mem[32] = 6
            idx = 0
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                _237 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                _259 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_259 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _259
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _259:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_237)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_237)].field_0 < _259:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_237)].field_0 -= _259
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if -s <= 0:
                if sub_121a5805 > 500000000 * 10^18:
                    revert with 0, 'more Yeti staked in this contract than the total supply'
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                emit 0xab3ddac2: msg.sender, 0, -s
            if sub_2f7baebb[address(msg.sender)].field_0 < -s:
                revert with 0, 'veYETI: insufficient Yeti for user to unstake'
            sub_2f7baebb[address(msg.sender)].field_0 += s
            if sub_121a5805 < -s:
                revert with 'NH{q', 17
            sub_121a5805 += s
            mem[ceil32(return_data.size) + 356] = msg.sender
            mem[ceil32(return_data.size) + 388] = -s
            call sub_de6c20fdAddress.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, -s
            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_121a5805 <= 500000000 * 10^18:
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                mem[(2 * ceil32(return_data.size)) + 352] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 384] = 0
                mem[(2 * ceil32(return_data.size)) + 416] = -s
                emit 0xab3ddac2: mem[(2 * ceil32(return_data.size)) + 352 len ceil32(return_data.size) + 96]
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
            while idx < 1:
                if idx >= 1:
                    revert with 'NH{q', 50
                _240 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128]]
                if idx >= 1:
                    revert with 'NH{q', 50
                if idx >= 1:
                    revert with 'NH{q', 50
                _261 = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32]
                mem[0] = mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 12 len 20]
                if mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64]:
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 > -_261 - 1:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 += _261
                else:
                    if sub_2f7baebb[address(msg.sender)][1][mem[0]].field_0 < _261:
                        revert with 0, 'veYETI: insufficient Yeti staked on rewarder'
                    mem[0] = address(_240)
                    mem[32] = sha3(address(msg.sender), 6) + 1
                    if sub_2f7baebb[address(msg.sender)][1][address(_240)].field_0 < _261:
                        revert with 'NH{q', 17
                    sub_2f7baebb[address(msg.sender)][1][address(_240)].field_0 -= _261
                if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if s <= 0:
                if sub_121a5805 > 500000000 * 10^18:
                    revert with 0, 'more Yeti staked in this contract than the total supply'
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                emit 0xab3ddac2: msg.sender, 1, s
            mem[ceil32(return_data.size) + 356] = stor7
            mem[ceil32(return_data.size) + 388] = this.address
            mem[ceil32(return_data.size) + 420] = s
            call sub_de6c20fdAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args stor7, address(this.address), s
            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
            if sub_2f7baebb[address(msg.sender)].field_0 > -s - 1:
                revert with 'NH{q', 17
            sub_2f7baebb[address(msg.sender)].field_0 += s
            if sub_121a5805 > -s - 1:
                revert with 'NH{q', 17
            sub_121a5805 += s
            if sub_121a5805 <= 500000000 * 10^18:
                sub_2f7baebb[address(msg.sender)].field_512 = block.timestamp
                mem[(2 * ceil32(return_data.size)) + 352] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 384] = 1
                mem[(2 * ceil32(return_data.size)) + 416] = s
                emit 0xab3ddac2: mem[(2 * ceil32(return_data.size)) + 352 len ceil32(return_data.size) + 96]
    ('gt', ('stor', ('name', 'sub_121a5805', 2)), 500000000000000000000000000)
    mem[(2 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 356] = 32
    mem[(2 * ceil32(return_data.size)) + 388] = 55
    mem[(2 * ceil32(return_data.size)) + 420] = 'more Yeti staked in this contrac'
    mem[(2 * ceil32(return_data.size)) + 452] = 't than the total supply'
    revert with memory
      from (2 * ceil32(return_data.size)) + 352
       len ceil32(return_data.size) + 132
}



}
