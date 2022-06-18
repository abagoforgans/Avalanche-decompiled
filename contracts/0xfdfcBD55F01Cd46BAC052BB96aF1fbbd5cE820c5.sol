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
    stor4 = arg4
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
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
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[floor32(('cd', 4).length) + 97] = mem[(32 * idx) + 128]
            emit 0x4a605884: mem[floor32(('cd', 4).length) + 97]
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

function sub_fc90ff42(?) payable {
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
        require cd[idx] == uint16(cd[idx])
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
        mem[floor32(('cd', 4).length) + 97] = 0x9b05e6b200000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 101] = 64
        mem[floor32(('cd', 4).length) + 165] = ('cd', 4).length
        idx = 0
        s = 128
        t = floor32(('cd', 4).length) + 197
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 4).length) + 133] = msg.sender
        require ext_code.size(stor3)
        call stor3.0x9b05e6b2 with:
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
                   args (mem[(32 * idx) + 128] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _481 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_475] == bool(mem[_475])
            mem[_481] = mem[_475]
            require mem[_475 + 32] == mem[_475 + 63 len 1]
            mem[_481 + 32] = mem[_475 + 32]
            require mem[_475 + 64] == mem[_475 + 95 len 1]
            mem[_481 + 64] = mem[_475 + 64]
            require mem[_475 + 96] == mem[_475 + 127 len 1]
            mem[_481 + 96] = mem[_475 + 96]
            require mem[_475 + 128] == mem[_475 + 159 len 1]
            mem[_481 + 128] = mem[_475 + 128]
            require mem[_475 + 160] == mem[_475 + 191 len 1]
            mem[_481 + 160] = mem[_475 + 160]
            require mem[_475 + 192] == mem[_475 + 223 len 1]
            mem[_481 + 192] = mem[_475 + 192]
            require mem[_475 + 224] == mem[_475 + 255 len 1]
            mem[_481 + 224] = mem[_475 + 224]
            require mem[_475 + 256] == mem[_475 + 287 len 1]
            mem[_481 + 256] = mem[_475 + 256]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _503 = mem[(32 * idx) + 128]
            if not mem[_481]:
                revert with 0, 'Only thieves can be upgraded'
            mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args (_503 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _513 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_513] == mem[_513 + 12 len 20]
            mem[mem[64] + 4] = uint16(_503)
            if mem[_513 + 12 len 20] != stor3:
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_503 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _529 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_529] == mem[_529 + 12 len 20]
                if mem[_529 + 12 len 20] != stor3:
                    if mem[_529 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_503 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_503 << 240] and 3600 > 65535 / levelOf[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_503 << 240] <= uint16(3600 * levelOf[_503 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_503 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_503 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_503 << 240] = uint8(levelOf[_503 << 240] + 1)
                    mem[0] = uint16(_503)
                    mem[32] = 7
                    sub_fe8ff146[_503 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _607 = mem[(32 * idx) + 128]
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_607)
                    mem[mem[64] + 64] = uint8(levelOf[_503 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _607 << 240, uint8(levelOf[_503 << 240] + 1)
                else:
                    mem[mem[64] + 4] = uint16(_503)
                    staticcall stor3.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (_503 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_549] == mem[_549 + 12 len 20]
                    if mem[_549 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_503 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_503 << 240] and 3600 > 65535 / levelOf[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_503 << 240] <= uint16(3600 * levelOf[_503 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_503 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_503 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_503 << 240] = uint8(levelOf[_503 << 240] + 1)
                    mem[0] = uint16(_503)
                    mem[32] = 7
                    sub_fe8ff146[_503 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _647 = mem[(32 * idx) + 128]
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_647)
                    mem[mem[64] + 64] = uint8(levelOf[_503 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _647 << 240, uint8(levelOf[_503 << 240] + 1)
            else:
                staticcall stor3.0x94edf9d4 with:
                        gas gas_remaining wei
                       args (_503 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _526 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_526] == mem[_526 + 12 len 20]
                mem[mem[64] + 4] = uint16(_503)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_503 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_550] == mem[_550 + 12 len 20]
                if mem[_550 + 12 len 20] != stor3:
                    if mem[_550 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_503 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_503 << 240] and 3600 > 65535 / levelOf[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_503 << 240] <= uint16(3600 * levelOf[_503 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_503 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_503 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_503 << 240] = uint8(levelOf[_503 << 240] + 1)
                    mem[0] = uint16(_503)
                    mem[32] = 7
                    sub_fe8ff146[_503 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _648 = mem[(32 * idx) + 128]
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_648)
                    mem[mem[64] + 64] = uint8(levelOf[_503 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _648 << 240, uint8(levelOf[_503 << 240] + 1)
                else:
                    mem[mem[64] + 4] = uint16(_503)
                    staticcall stor3.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (_503 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_587] == mem[_587 + 12 len 20]
                    if mem[_587 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_503 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_503 << 240] and 3600 > 65535 / levelOf[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_503 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_503 << 240] <= uint16(3600 * levelOf[_503 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_503 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_503 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_503 << 240] = uint8(levelOf[_503 << 240] + 1)
                    mem[0] = uint16(_503)
                    mem[32] = 7
                    sub_fe8ff146[_503 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _669 = mem[(32 * idx) + 128]
                    if levelOf[_503 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_669)
                    mem[mem[64] + 64] = uint8(levelOf[_503 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _669 << 240, uint8(levelOf[_503 << 240] + 1)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + sub_e0b05c26[stor6[_503 << 240]]
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Paused'
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        mem[floor32(('cd', 4).length) + 97] = 0x9b05e6b200000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + 101] = 64
        mem[floor32(('cd', 4).length) + 165] = ('cd', 4).length
        idx = 0
        s = 128
        t = floor32(('cd', 4).length) + 197
        while idx < ('cd', 4).length:
            mem[t] = mem[s + 30 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[floor32(('cd', 4).length) + 133] = msg.sender
        require ext_code.size(stor3)
        call stor3.0x9b05e6b2 with:
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
                   args (mem[(32 * idx) + 128] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _476 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _482 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_476] == bool(mem[_476])
            mem[_482] = mem[_476]
            require mem[_476 + 32] == mem[_476 + 63 len 1]
            mem[_482 + 32] = mem[_476 + 32]
            require mem[_476 + 64] == mem[_476 + 95 len 1]
            mem[_482 + 64] = mem[_476 + 64]
            require mem[_476 + 96] == mem[_476 + 127 len 1]
            mem[_482 + 96] = mem[_476 + 96]
            require mem[_476 + 128] == mem[_476 + 159 len 1]
            mem[_482 + 128] = mem[_476 + 128]
            require mem[_476 + 160] == mem[_476 + 191 len 1]
            mem[_482 + 160] = mem[_476 + 160]
            require mem[_476 + 192] == mem[_476 + 223 len 1]
            mem[_482 + 192] = mem[_476 + 192]
            require mem[_476 + 224] == mem[_476 + 255 len 1]
            mem[_482 + 224] = mem[_476 + 224]
            require mem[_476 + 256] == mem[_476 + 287 len 1]
            mem[_482 + 256] = mem[_476 + 256]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _505 = mem[(32 * idx) + 128]
            if not mem[_482]:
                revert with 0, 'Only thieves can be upgraded'
            mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
            staticcall stor2.0x6352211e with:
                    gas gas_remaining wei
                   args (_505 << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_514] == mem[_514 + 12 len 20]
            mem[mem[64] + 4] = uint16(_505)
            if mem[_514 + 12 len 20] != stor3:
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_505 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _530 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_530] == mem[_530 + 12 len 20]
                if mem[_530 + 12 len 20] != stor3:
                    if mem[_530 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_505 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_505 << 240] and 3600 > 65535 / levelOf[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_505 << 240] <= uint16(3600 * levelOf[_505 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_505 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_505 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_505 << 240] = uint8(levelOf[_505 << 240] + 1)
                    mem[0] = uint16(_505)
                    mem[32] = 7
                    sub_fe8ff146[_505 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _608 = mem[(32 * idx) + 128]
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_608)
                    mem[mem[64] + 64] = uint8(levelOf[_505 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _608 << 240, uint8(levelOf[_505 << 240] + 1)
                else:
                    mem[mem[64] + 4] = uint16(_505)
                    staticcall stor3.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (_505 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_551] == mem[_551 + 12 len 20]
                    if mem[_551 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_505 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_505 << 240] and 3600 > 65535 / levelOf[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_505 << 240] <= uint16(3600 * levelOf[_505 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_505 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_505 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_505 << 240] = uint8(levelOf[_505 << 240] + 1)
                    mem[0] = uint16(_505)
                    mem[32] = 7
                    sub_fe8ff146[_505 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _649 = mem[(32 * idx) + 128]
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_649)
                    mem[mem[64] + 64] = uint8(levelOf[_505 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _649 << 240, uint8(levelOf[_505 << 240] + 1)
            else:
                staticcall stor3.0x94edf9d4 with:
                        gas gas_remaining wei
                       args (_505 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _528 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_528] == mem[_528 + 12 len 20]
                mem[mem[64] + 4] = uint16(_505)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_505 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_552] == mem[_552 + 12 len 20]
                if mem[_552 + 12 len 20] != stor3:
                    if mem[_552 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_505 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_505 << 240] and 3600 > 65535 / levelOf[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_505 << 240] <= uint16(3600 * levelOf[_505 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_505 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_505 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_505 << 240] = uint8(levelOf[_505 << 240] + 1)
                    mem[0] = uint16(_505)
                    mem[32] = 7
                    sub_fe8ff146[_505 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _650 = mem[(32 * idx) + 128]
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_650)
                    mem[mem[64] + 64] = uint8(levelOf[_505 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _650 << 240, uint8(levelOf[_505 << 240] + 1)
                else:
                    mem[mem[64] + 4] = uint16(_505)
                    staticcall stor3.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (_505 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _588 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_588] == mem[_588 + 12 len 20]
                    if mem[_588 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    if levelOf[_505 << 240] >= 50:
                        revert with 0, 'Reached latest level'
                    if levelOf[_505 << 240] and 3600 > 65535 / levelOf[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp < sub_fe8ff146[_505 << 240]:
                        revert with 'NH{q', 17
                    if block.timestamp - sub_fe8ff146[_505 << 240] <= uint16(3600 * levelOf[_505 << 240]):
                        revert with 0, 'Still need time before upgrading'
                    if levelOf[_505 << 240] >= sub_e0b05c26.length:
                        revert with 'NH{q', 50
                    if s > -sub_e0b05c26[stor6[_505 << 240]] - 1:
                        revert with 'NH{q', 17
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    levelOf[_505 << 240] = uint8(levelOf[_505 << 240] + 1)
                    mem[0] = uint16(_505)
                    mem[32] = 7
                    sub_fe8ff146[_505 << 240] = block.timestamp
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _670 = mem[(32 * idx) + 128]
                    if levelOf[_505 << 240] > 254:
                        revert with 'NH{q', 17
                    mem[mem[64]] = msg.sender
                    mem[mem[64] + 32] = uint16(_670)
                    mem[mem[64] + 64] = uint8(levelOf[_505 << 240] + 1)
                    emit 0x68d3fd0f: msg.sender, _670 << 240, uint8(levelOf[_505 << 240] + 1)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + sub_e0b05c26[stor6[_505 << 240]]
            continue 
    if ext_call.return_data[0] < s:
        revert with 0, 'Insufficient LOOT balance'
    require ext_code.size(stor4)
    call stor4.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor5.field_160) = 0
}



}
