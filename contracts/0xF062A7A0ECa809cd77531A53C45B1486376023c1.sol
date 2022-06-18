contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
address stor2;
address stor3;
address stor4;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;
mapping of uint8 levelOf;
mapping of uint256 sub_fe8ff146;
array of uint256 sub_e0b05c26;
array of uint256 sub_9cc932ed;

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function levelOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return levelOf[arg1]
}

function owner() payable {
    return owner
}

function sub_9cc932ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_9cc932ed.length
    return sub_9cc932ed[arg1]
}

function sub_e0b05c26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_e0b05c26.length
    return sub_e0b05c26[arg1]
}

function sub_fe8ff146(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_fe8ff146[arg1]
}

function _fallback() payable {
    revert
}

function sub_32774484(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_e0b05c26.length:
        revert with 'NH{q', 50
    sub_e0b05c26[arg1] = arg2
}

function sub_3d36d3dd(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_9cc932ed.length:
        revert with 'NH{q', 50
    sub_9cc932ed[arg1] = arg2
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

function setContracts(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg3
    stor3 = arg1
    stor2 = arg2
    address(stor5.field_0) = arg5
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not uint8(stor0.field_160):
            revert with 0, 'Pauseable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        if uint8(stor0.field_160):
            revert with 0, 'Pauseable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == stor3:
        staticcall stor3.0x94edf9d4 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_425ff80a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 6
        if levelOf[mem[(32 * idx) + 128]]:
            if levelOf[mem[(32 * idx) + 128]] < 1:
                revert with 'NH{q', 17
            if levelOf[mem[(32 * idx) + 128]] - 1 >= sub_9cc932ed.length:
                revert with 'NH{q', 50
            mem[0] = 9
            if 0 > -sub_9cc932ed[stor6[mem[(32 * idx) + 128]]] - 1:
                revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_7182e749(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor2.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 672 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    mem[ceil32(return_data.size) + 704] = ext_call.return_data[63 len 1]
    mem[ceil32(return_data.size) + 736] = ext_call.return_data[95 len 1]
    mem[ceil32(return_data.size) + 768] = ext_call.return_data[127 len 1]
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[159 len 1]
    mem[ceil32(return_data.size) + 832] = ext_call.return_data[191 len 1]
    mem[ceil32(return_data.size) + 864] = ext_call.return_data[223 len 1]
    mem[ceil32(return_data.size) + 896] = ext_call.return_data[255 len 1]
    mem[ceil32(return_data.size) + 928] = ext_call.return_data[287 len 1]
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0]), mem[ceil32(return_data.size) + 704 len 256], 0
    return bool(ext_call.return_data[0]), mem[ceil32(return_data.size) + 704 len 256], levelOf[arg1]
}

function sub_0f800356(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if uint8(stor5.field_160):
        revert with 0, 'No reentrancy'
    Mask(96, 0, stor5.field_160) = 1
    if not uint8(stor0.field_160):
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        mem[floor32(('cd', 4).length) + 97] = 0x27db62b100000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 101] = 64
        mem[floor32(('cd', 4).length) + 165] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + 133] = msg.sender
        require ext_code.size(stor3)
        call stor3.0x27db62b1 with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 4).length) + 101] = msg.sender
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
        mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall stor2.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _578 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _584 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_578] == bool(mem[_578])
            mem[_584] = mem[_578]
            require mem[_578 + 32] == mem[_578 + 63 len 1]
            mem[_584 + 32] = mem[_578 + 32]
            require mem[_578 + 64] == mem[_578 + 95 len 1]
            mem[_584 + 64] = mem[_578 + 64]
            require mem[_578 + 96] == mem[_578 + 127 len 1]
            mem[_584 + 96] = mem[_578 + 96]
            require mem[_578 + 128] == mem[_578 + 159 len 1]
            mem[_584 + 128] = mem[_578 + 128]
            require mem[_578 + 160] == mem[_578 + 191 len 1]
            mem[_584 + 160] = mem[_578 + 160]
            require mem[_578 + 192] == mem[_578 + 223 len 1]
            mem[_584 + 192] = mem[_578 + 192]
            require mem[_578 + 224] == mem[_578 + 255 len 1]
            mem[_584 + 224] = mem[_578 + 224]
            require mem[_578 + 256] == mem[_578 + 287 len 1]
            mem[_584 + 256] = mem[_578 + 256]
            if not mem[_584]:
                revert with 0, 'Only thieves can be upgraded'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _610 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args _610
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_616] == mem[_616 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_616 + 12 len 20] != stor3:
                _626 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args _626
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _640 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_640] == mem[_640 + 12 len 20]
                if mem[_640 + 12 len 20] != stor3:
                    if mem[_640 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _659 = sha3(mem[(32 * idx) + 128], 6)
                    if levelOf[mem[(32 * idx) + 128]] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if levelOf[mem[(32 * idx) + 128]] > 254:
                        revert with 'NH{q', 17
                    levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 7
                    sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _754 = mem[(32 * idx) + 128]
                    if levelOf[mem[(32 * idx) + 128]] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = _754
                    mem[mem[64] + 64] = uint8(stor[_659] + 1)
                    emit 0x68d3fd0f: msg.sender, _754, uint8(stor[_659] + 1)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + sub_e0b05c26[stor[_659]]
                    continue 
                mem[mem[64] + 4] = _626
                staticcall stor3.0x94edf9d4 with:
                        gas gas_remaining wei
                       args _626
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_666] == mem[_666 + 12 len 20]
                if mem[_666 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _697 = sha3(mem[(32 * idx) + 128], 6)
                if levelOf[mem[(32 * idx) + 128]] >= 50:
                    revert with 0, 'Reached latest level'
                if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                    revert with 0, 'Still need time before upgrading'
                if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _812 = mem[(32 * idx) + 128]
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _812
                mem[mem[64] + 64] = uint8(stor[_697] + 1)
                emit 0x68d3fd0f: msg.sender, _812, uint8(stor[_697] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor[_697]]
                continue 
            _627 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor3.0x94edf9d4 with:
                    gas gas_remaining wei
                   args _627
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _637 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_637] == mem[_637 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _649 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args _649
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_670] == mem[_670 + 12 len 20]
            if mem[_670 + 12 len 20] != stor3:
                if mem[_670 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _706 = sha3(mem[(32 * idx) + 128], 6)
                if levelOf[mem[(32 * idx) + 128]] >= 50:
                    revert with 0, 'Reached latest level'
                if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                    revert with 0, 'Still need time before upgrading'
                if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _820 = mem[(32 * idx) + 128]
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _820
                mem[mem[64] + 64] = uint8(stor[_706] + 1)
                emit 0x68d3fd0f: msg.sender, _820, uint8(stor[_706] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor[_706]]
                continue 
            mem[mem[64] + 4] = _649
            staticcall stor3.0x94edf9d4 with:
                    gas gas_remaining wei
                   args _649
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_716] == mem[_716 + 12 len 20]
            if mem[_716 + 12 len 20] != msg.sender:
                revert with 0, 'You are not owner'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _769 = sha3(mem[(32 * idx) + 128], 6)
            if levelOf[mem[(32 * idx) + 128]] >= 50:
                revert with 0, 'Reached latest level'
            if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                revert with 0, 'Still need time before upgrading'
            if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                revert with 'NH{q', 50
            if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if levelOf[mem[(32 * idx) + 128]] > 254:
                revert with 'NH{q', 17
            levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 7
            sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _848 = mem[(32 * idx) + 128]
            if levelOf[mem[(32 * idx) + 128]] > 254:
                revert with 'NH{q', 17
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = _848
            mem[mem[64] + 64] = uint8(stor[_769] + 1)
            emit 0x68d3fd0f: msg.sender, _848, uint8(stor[_769] + 1)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + sub_e0b05c26[stor[_769]]
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Paused'
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        mem[floor32(('cd', 4).length) + 97] = 0x27db62b100000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 101] = 64
        mem[floor32(('cd', 4).length) + 165] = ('cd', 4).length
        mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[floor32(('cd', 4).length) + 133] = msg.sender
        require ext_code.size(stor3)
        call stor3.0x27db62b1 with:
             gas gas_remaining wei
            args Array(len=('cd', 4).length, data=mem[floor32(('cd', 4).length) + 197 len 32 * ('cd', 4).length]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 4).length) + 101] = msg.sender
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[floor32(('cd', 4).length) + 97] = ext_call.return_data[0]
        mem[64] = floor32(('cd', 4).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            staticcall stor2.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * idx) + 128]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _579 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _585 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_579] == bool(mem[_579])
            mem[_585] = mem[_579]
            require mem[_579 + 32] == mem[_579 + 63 len 1]
            mem[_585 + 32] = mem[_579 + 32]
            require mem[_579 + 64] == mem[_579 + 95 len 1]
            mem[_585 + 64] = mem[_579 + 64]
            require mem[_579 + 96] == mem[_579 + 127 len 1]
            mem[_585 + 96] = mem[_579 + 96]
            require mem[_579 + 128] == mem[_579 + 159 len 1]
            mem[_585 + 128] = mem[_579 + 128]
            require mem[_579 + 160] == mem[_579 + 191 len 1]
            mem[_585 + 160] = mem[_579 + 160]
            require mem[_579 + 192] == mem[_579 + 223 len 1]
            mem[_585 + 192] = mem[_579 + 192]
            require mem[_579 + 224] == mem[_579 + 255 len 1]
            mem[_585 + 224] = mem[_579 + 224]
            require mem[_579 + 256] == mem[_579 + 287 len 1]
            mem[_585 + 256] = mem[_579 + 256]
            if not mem[_585]:
                revert with 0, 'Only thieves can be upgraded'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _612 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args _612
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _618 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_618] == mem[_618 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_618 + 12 len 20] != stor3:
                _629 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 128]
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args _629
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_641] == mem[_641 + 12 len 20]
                if mem[_641 + 12 len 20] != stor3:
                    if mem[_641 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _661 = sha3(mem[(32 * idx) + 128], 6)
                    if levelOf[mem[(32 * idx) + 128]] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if levelOf[mem[(32 * idx) + 128]] > 254:
                        revert with 'NH{q', 17
                    levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 7
                    sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _755 = mem[(32 * idx) + 128]
                    if levelOf[mem[(32 * idx) + 128]] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = _755
                    mem[mem[64] + 64] = uint8(stor[_661] + 1)
                    emit 0x68d3fd0f: msg.sender, _755, uint8(stor[_661] + 1)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + sub_e0b05c26[stor[_661]]
                    continue 
                mem[mem[64] + 4] = _629
                staticcall stor3.0x94edf9d4 with:
                        gas gas_remaining wei
                       args _629
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _668 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_668] == mem[_668 + 12 len 20]
                if mem[_668 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _701 = sha3(mem[(32 * idx) + 128], 6)
                if levelOf[mem[(32 * idx) + 128]] >= 50:
                    revert with 0, 'Reached latest level'
                if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                    revert with 0, 'Still need time before upgrading'
                if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _816 = mem[(32 * idx) + 128]
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _816
                mem[mem[64] + 64] = uint8(stor[_701] + 1)
                emit 0x68d3fd0f: msg.sender, _816, uint8(stor[_701] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor[_701]]
                continue 
            _630 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor3.0x94edf9d4 with:
                    gas gas_remaining wei
                   args _630
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_639] == mem[_639 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _651 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args _651
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_671] == mem[_671 + 12 len 20]
            if mem[_671 + 12 len 20] != stor3:
                if mem[_671 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _709 = sha3(mem[(32 * idx) + 128], 6)
                if levelOf[mem[(32 * idx) + 128]] >= 50:
                    revert with 0, 'Reached latest level'
                if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                    revert with 0, 'Still need time before upgrading'
                if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 7
                sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _821 = mem[(32 * idx) + 128]
                if levelOf[mem[(32 * idx) + 128]] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _821
                mem[mem[64] + 64] = uint8(stor[_709] + 1)
                emit 0x68d3fd0f: msg.sender, _821, uint8(stor[_709] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor[_709]]
                continue 
            mem[mem[64] + 4] = _651
            staticcall stor3.0x94edf9d4 with:
                    gas gas_remaining wei
                   args _651
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _719 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_719] == mem[_719 + 12 len 20]
            if mem[_719 + 12 len 20] != msg.sender:
                revert with 0, 'You are not owner'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _771 = sha3(mem[(32 * idx) + 128], 6)
            if levelOf[mem[(32 * idx) + 128]] >= 50:
                revert with 0, 'Reached latest level'
            if levelOf[mem[(32 * idx) + 128]] and 3600 > 65535 / levelOf[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if block.timestamp < sub_fe8ff146[mem[(32 * idx) + 128]]:
                revert with 'NH{q', 17
            if block.timestamp - sub_fe8ff146[mem[(32 * idx) + 128]] <= uint16(3600 * levelOf[mem[(32 * idx) + 128]]):
                revert with 0, 'Still need time before upgrading'
            if levelOf[mem[(32 * idx) + 128]] >= sub_e0b05c26.length:
                revert with 'NH{q', 50
            if s > -sub_e0b05c26[stor6[mem[(32 * idx) + 128]]] - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if levelOf[mem[(32 * idx) + 128]] > 254:
                revert with 'NH{q', 17
            levelOf[mem[(32 * idx) + 128]] = uint8(levelOf[mem[(32 * idx) + 128]] + 1)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 7
            sub_fe8ff146[mem[(32 * idx) + 128]] = block.timestamp
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _849 = mem[(32 * idx) + 128]
            if levelOf[mem[(32 * idx) + 128]] > 254:
                revert with 'NH{q', 17
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = _849
            mem[mem[64] + 64] = uint8(stor[_771] + 1)
            emit 0x68d3fd0f: msg.sender, _849, uint8(stor[_771] + 1)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + sub_e0b05c26[stor[_771]]
            continue 
    if ext_call.return_data[0] < s:
        revert with 0, 'Insufficient LOOT balance'
    require ext_code.size(stor4)
    call stor4.burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor5.field_160) = 0
}



}
