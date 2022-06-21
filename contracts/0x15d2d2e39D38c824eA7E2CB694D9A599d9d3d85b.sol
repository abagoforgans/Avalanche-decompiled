contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_6d4ede93Address;
mapping of uint8 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address stor7;
mapping of uint8 sub_6146652c;
mapping of uint256 sub_2cc93636;
array of uint256 sub_e0b05c26;
array of uint256 sub_9cc932ed;

function sub_2cc93636(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2cc93636[arg1]
}

function sub_2e53fee2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor2[arg1]))
}

function claim() payable {
    return bool(uint8(stor7.field_160))
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function sub_6146652c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6146652c[arg1]
}

function sub_6d4ede93(?) payable {
    return sub_6d4ede93Address
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

function _fallback() payable {
    revert
}

function sub_d4ea0d81(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, not bool(uint8(stor7.field_160)))
}

function sub_1396f546(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2[arg1]) = not bool(uint8(stor2[arg1])) or Mask(248, 8, uint256(stor2[arg1]))
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
    stor3 = arg3
    stor5 = arg1
    stor6 = arg4
    stor4 = arg2
    address(stor7.field_0) = arg5
}

function sub_fe8ff146(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2[arg1]):
        return sub_2cc93636[arg1]
    staticcall sub_6d4ede93Address.0xfe8ff146 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function levelOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor2[arg1]):
        return sub_6146652c[arg1]
    staticcall sub_6d4ede93Address.0x6d5e3032 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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
    staticcall stor4.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == stor5:
        staticcall stor5.0x94edf9d4 with:
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
    mem[64] = floor32(('cd', 4).length) + 97
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
        mem[32] = 2
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not uint8(stor2[mem[(32 * idx) + 128]]):
            _104 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall sub_6d4ede93Address.0x6d5e3032 with:
                    gas gas_remaining wei
                   args _104
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_107]
            require mem[_107] == mem[_107 + 31 len 1]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 8
            sub_6146652c[mem[(32 * idx) + 128]] = uint8(_109)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _120 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            staticcall sub_6d4ede93Address.0xfe8ff146 with:
                    gas gas_remaining wei
                   args _120
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            sub_2cc93636[mem[(32 * idx) + 128]] = mem[_124]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            uint8(stor2[mem[(32 * idx) + 128]]) = 1
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if sub_6146652c[mem[(32 * idx) + 128]]:
            if sub_6146652c[mem[(32 * idx) + 128]] < 1:
                revert with 'NH{q', 17
            if sub_6146652c[mem[(32 * idx) + 128]] - 1 >= sub_9cc932ed.length:
                revert with 'NH{q', 50
            if 0 > -sub_9cc932ed[stor8[mem[(32 * idx) + 128]]] - 1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_2cc93636[mem[(32 * idx) + 128]] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64]] = mem[(32 * idx) + 128]
            emit 0x4a605884: mem[mem[64]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_7182e749(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor4.getTokenTraits(uint256 arg1) with:
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
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 704] = ext_call.return_data[63 len 1]
        mem[ceil32(return_data.size) + 736] = ext_call.return_data[95 len 1]
        mem[ceil32(return_data.size) + 768] = ext_call.return_data[127 len 1]
        mem[ceil32(return_data.size) + 800] = ext_call.return_data[159 len 1]
        mem[ceil32(return_data.size) + 832] = ext_call.return_data[191 len 1]
        mem[ceil32(return_data.size) + 864] = ext_call.return_data[223 len 1]
        mem[ceil32(return_data.size) + 896] = ext_call.return_data[255 len 1]
        mem[ceil32(return_data.size) + 928] = ext_call.return_data[287 len 1]
        return bool(ext_call.return_data[0]), mem[ceil32(return_data.size) + 704 len 256], 0
    if uint8(stor2[arg1]):
        mem[ceil32(return_data.size) + 704] = ext_call.return_data[63 len 1]
        mem[ceil32(return_data.size) + 736] = ext_call.return_data[95 len 1]
        mem[ceil32(return_data.size) + 768] = ext_call.return_data[127 len 1]
        mem[ceil32(return_data.size) + 800] = ext_call.return_data[159 len 1]
        mem[ceil32(return_data.size) + 832] = ext_call.return_data[191 len 1]
        mem[ceil32(return_data.size) + 864] = ext_call.return_data[223 len 1]
        mem[ceil32(return_data.size) + 896] = ext_call.return_data[255 len 1]
        mem[ceil32(return_data.size) + 928] = ext_call.return_data[287 len 1]
        return bool(ext_call.return_data[0]), mem[ceil32(return_data.size) + 704 len 256], sub_6146652c[arg1]
    mem[ceil32(return_data.size) + 676] = arg1
    staticcall sub_6d4ede93Address.0x6d5e3032 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 704] = ext_call.return_data[63 len 1]
    mem[(2 * ceil32(return_data.size)) + 736] = ext_call.return_data[95 len 1]
    mem[(2 * ceil32(return_data.size)) + 768] = ext_call.return_data[127 len 1]
    mem[(2 * ceil32(return_data.size)) + 800] = ext_call.return_data[159 len 1]
    mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[191 len 1]
    mem[(2 * ceil32(return_data.size)) + 864] = ext_call.return_data[223 len 1]
    mem[(2 * ceil32(return_data.size)) + 896] = ext_call.return_data[255 len 1]
    mem[(2 * ceil32(return_data.size)) + 928] = ext_call.return_data[287 len 1]
    return bool(ext_call.return_data[0]), mem[(2 * ceil32(return_data.size)) + 704 len 256], ext_call.return_data[0] << 248
}

function sub_99633b1c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if uint8(stor7.field_168):
        revert with 0, 'No reentrancy'
    Mask(88, 0, stor7.field_168) = 1
    if not uint8(stor0.field_160):
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        if not uint8(stor7.field_160):
            if cd[36] != 1:
                mem[100] = msg.sender
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if cd[36] != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if cd[36] == 3:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _452 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _462 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_452] == bool(mem[_452])
                        mem[_462] = mem[_452]
                        require mem[_452 + 32] == mem[_452 + 63 len 1]
                        mem[_462 + 32] = mem[_452 + 32]
                        require mem[_452 + 64] == mem[_452 + 95 len 1]
                        mem[_462 + 64] = mem[_452 + 64]
                        require mem[_452 + 96] == mem[_452 + 127 len 1]
                        mem[_462 + 96] = mem[_452 + 96]
                        require mem[_452 + 128] == mem[_452 + 159 len 1]
                        mem[_462 + 128] = mem[_452 + 128]
                        require mem[_452 + 160] == mem[_452 + 191 len 1]
                        mem[_462 + 160] = mem[_452 + 160]
                        require mem[_452 + 192] == mem[_452 + 223 len 1]
                        mem[_462 + 192] = mem[_452 + 192]
                        require mem[_452 + 224] == mem[_452 + 255 len 1]
                        mem[_462 + 224] = mem[_452 + 224]
                        require mem[_452 + 256] == mem[_452 + 287 len 1]
                        mem[_462 + 256] = mem[_452 + 256]
                        if cd[36] == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if cd[36] == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_462]:
                            revert with 0, 'Only thieves can be upgraded'
                        if cd[36] == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _548 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_548] == mem[_548 + 12 len 20]
                        if mem[_548 + 12 len 20] != stor5:
                            if mem[_548 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _576 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _579 = mem[_576]
                                require mem[_576] == mem[_576 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_579)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _604 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_604] == mem[_604]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_604]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall stor5.0x94edf9d4 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _565 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_565] == mem[_565 + 12 len 20]
                            if mem[_565 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _612 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _617 = mem[_612]
                                require mem[_612] == mem[_612 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_617)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _644 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_644] == mem[_644]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_644]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if cd[36] == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if cd[36] == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if cd[36] == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > -1 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if 3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > -sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] - 1:
                            revert with 'NH{q', 17
                        if block.timestamp <= (3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]) + sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 0, 'Still need time before upgrading'
                        if cd[36] == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if cd[36] == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if cd[36] == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if cd[36] == 17:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 64] = sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                        continue 
                    if cd[36] != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if cd[36] != 19:
                            require ext_code.size(stor6)
                            call stor6.0x9dc29fac with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[164] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = 196
            while idx < ('cd', 4).length:
                require cd[s] == uint16(cd[s])
                mem[t] = uint16(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[132] = msg.sender
            require ext_code.size(stor5)
            call stor5.0x9b05e6b2 with:
                 gas gas_remaining wei
                args Array(len=('cd', 4).length, data=mem[196 len 32 * ('cd', 4).length]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[36] != 1:
                mem[100] = msg.sender
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if cd[36] != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if cd[36] == 3:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _704 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _712 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_704] == bool(mem[_704])
                        mem[_712] = mem[_704]
                        require mem[_704 + 32] == mem[_704 + 63 len 1]
                        mem[_712 + 32] = mem[_704 + 32]
                        require mem[_704 + 64] == mem[_704 + 95 len 1]
                        mem[_712 + 64] = mem[_704 + 64]
                        require mem[_704 + 96] == mem[_704 + 127 len 1]
                        mem[_712 + 96] = mem[_704 + 96]
                        require mem[_704 + 128] == mem[_704 + 159 len 1]
                        mem[_712 + 128] = mem[_704 + 128]
                        require mem[_704 + 160] == mem[_704 + 191 len 1]
                        mem[_712 + 160] = mem[_704 + 160]
                        require mem[_704 + 192] == mem[_704 + 223 len 1]
                        mem[_712 + 192] = mem[_704 + 192]
                        require mem[_704 + 224] == mem[_704 + 255 len 1]
                        mem[_712 + 224] = mem[_704 + 224]
                        require mem[_704 + 256] == mem[_704 + 287 len 1]
                        mem[_712 + 256] = mem[_704 + 256]
                        if cd[36] == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if cd[36] == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_712]:
                            revert with 0, 'Only thieves can be upgraded'
                        if cd[36] == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _756 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_756] == mem[_756 + 12 len 20]
                        if mem[_756 + 12 len 20] != stor5:
                            if mem[_756 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _787 = mem[_784]
                                require mem[_784] == mem[_784 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_787)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _812 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_812] == mem[_812]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_812]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall stor5.0x94edf9d4 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _773 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_773] == mem[_773 + 12 len 20]
                            if mem[_773 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _820 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _825 = mem[_820]
                                require mem[_820] == mem[_820 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_825)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_852] == mem[_852]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_852]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if cd[36] == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if cd[36] == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if cd[36] == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > -1 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if 3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > -sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] - 1:
                            revert with 'NH{q', 17
                        if block.timestamp <= (3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]) + sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 0, 'Still need time before upgrading'
                        if cd[36] == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if cd[36] == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if cd[36] == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if cd[36] == 17:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 64] = sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                        continue 
                    if cd[36] != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if cd[36] != 19:
                            require ext_code.size(stor6)
                            call stor6.0x9dc29fac with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if owner != msg.sender:
            revert with 0, 'Paused'
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        if not uint8(stor7.field_160):
            if cd[36] != 1:
                mem[100] = msg.sender
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if cd[36] != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if cd[36] == 3:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _453 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _463 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_453] == bool(mem[_453])
                        mem[_463] = mem[_453]
                        require mem[_453 + 32] == mem[_453 + 63 len 1]
                        mem[_463 + 32] = mem[_453 + 32]
                        require mem[_453 + 64] == mem[_453 + 95 len 1]
                        mem[_463 + 64] = mem[_453 + 64]
                        require mem[_453 + 96] == mem[_453 + 127 len 1]
                        mem[_463 + 96] = mem[_453 + 96]
                        require mem[_453 + 128] == mem[_453 + 159 len 1]
                        mem[_463 + 128] = mem[_453 + 128]
                        require mem[_453 + 160] == mem[_453 + 191 len 1]
                        mem[_463 + 160] = mem[_453 + 160]
                        require mem[_453 + 192] == mem[_453 + 223 len 1]
                        mem[_463 + 192] = mem[_453 + 192]
                        require mem[_453 + 224] == mem[_453 + 255 len 1]
                        mem[_463 + 224] = mem[_453 + 224]
                        require mem[_453 + 256] == mem[_453 + 287 len 1]
                        mem[_463 + 256] = mem[_453 + 256]
                        if cd[36] == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if cd[36] == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_463]:
                            revert with 0, 'Only thieves can be upgraded'
                        if cd[36] == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_549] == mem[_549 + 12 len 20]
                        if mem[_549 + 12 len 20] != stor5:
                            if mem[_549 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _581 = mem[_577]
                                require mem[_577] == mem[_577 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_581)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _606 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_606] == mem[_606]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_606]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall stor5.0x94edf9d4 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _567 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_567] == mem[_567 + 12 len 20]
                            if mem[_567 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _619 = mem[_613]
                                require mem[_613] == mem[_613 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_619)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _645 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_645] == mem[_645]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_645]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if cd[36] == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if cd[36] == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if cd[36] == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > -1 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if 3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > -sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] - 1:
                            revert with 'NH{q', 17
                        if block.timestamp <= (3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]) + sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 0, 'Still need time before upgrading'
                        if cd[36] == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if cd[36] == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if cd[36] == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if cd[36] == 17:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 64] = sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                        continue 
                    if cd[36] != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if cd[36] != 19:
                            require ext_code.size(stor6)
                            call stor6.0x9dc29fac with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[164] = ('cd', 4).length
            idx = 0
            s = cd[4] + 36
            t = 196
            while idx < ('cd', 4).length:
                require cd[s] == uint16(cd[s])
                mem[t] = uint16(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[132] = msg.sender
            require ext_code.size(stor5)
            call stor5.0x9b05e6b2 with:
                 gas gas_remaining wei
                args Array(len=('cd', 4).length, data=mem[196 len 32 * ('cd', 4).length]), msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[36] != 1:
                mem[100] = msg.sender
                staticcall stor6.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if cd[36] != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if cd[36] == 3:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _705 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _713 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_705] == bool(mem[_705])
                        mem[_713] = mem[_705]
                        require mem[_705 + 32] == mem[_705 + 63 len 1]
                        mem[_713 + 32] = mem[_705 + 32]
                        require mem[_705 + 64] == mem[_705 + 95 len 1]
                        mem[_713 + 64] = mem[_705 + 64]
                        require mem[_705 + 96] == mem[_705 + 127 len 1]
                        mem[_713 + 96] = mem[_705 + 96]
                        require mem[_705 + 128] == mem[_705 + 159 len 1]
                        mem[_713 + 128] = mem[_705 + 128]
                        require mem[_705 + 160] == mem[_705 + 191 len 1]
                        mem[_713 + 160] = mem[_705 + 160]
                        require mem[_705 + 192] == mem[_705 + 223 len 1]
                        mem[_713 + 192] = mem[_705 + 192]
                        require mem[_705 + 224] == mem[_705 + 255 len 1]
                        mem[_713 + 224] = mem[_705 + 224]
                        require mem[_705 + 256] == mem[_705 + 287 len 1]
                        mem[_713 + 256] = mem[_705 + 256]
                        if cd[36] == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if cd[36] == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_713]:
                            revert with 0, 'Only thieves can be upgraded'
                        if cd[36] == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_757] == mem[_757 + 12 len 20]
                        if mem[_757 + 12 len 20] != stor5:
                            if mem[_757 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _789 = mem[_785]
                                require mem[_785] == mem[_785 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_789)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _814 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_814] == mem[_814]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_814]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall stor5.0x94edf9d4 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_775] == mem[_775 + 12 len 20]
                            if mem[_775 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if cd[36] == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if cd[36] == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _821 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _827 = mem[_821]
                                require mem[_821] == mem[_821 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_827)
                                if cd[36] == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _853 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_853] == mem[_853]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_853]
                                if cd[36] == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if cd[36] == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if cd[36] == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if cd[36] == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > -1 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if 3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > -sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] - 1:
                            revert with 'NH{q', 17
                        if block.timestamp <= (3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]) + sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 0, 'Still need time before upgrading'
                        if cd[36] == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if cd[36] == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if cd[36] == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if cd[36] == 17:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[mem[64] + 64] = sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                        continue 
                    if cd[36] != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if cd[36] != 19:
                            require ext_code.size(stor6)
                            call stor6.0x9dc29fac with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor7.field_168) = 0
}



}
