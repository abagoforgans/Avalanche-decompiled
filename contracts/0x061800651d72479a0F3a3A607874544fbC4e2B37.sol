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
uint256 x;

function x() payable {
    return x
}

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

function setX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    x = arg1
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

function sub_fc90ff42(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor7.field_168):
        revert with 0, 'No reentrancy'
    Mask(88, 0, stor7.field_168) = 1
    if not uint8(stor0.field_160):
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        if not uint8(stor7.field_160):
            if x != 1:
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
                if x != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if x == 3:
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
                        _460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _472 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_460] == bool(mem[_460])
                        mem[_472] = mem[_460]
                        require mem[_460 + 32] == mem[_460 + 63 len 1]
                        mem[_472 + 32] = mem[_460 + 32]
                        require mem[_460 + 64] == mem[_460 + 95 len 1]
                        mem[_472 + 64] = mem[_460 + 64]
                        require mem[_460 + 96] == mem[_460 + 127 len 1]
                        mem[_472 + 96] = mem[_460 + 96]
                        require mem[_460 + 128] == mem[_460 + 159 len 1]
                        mem[_472 + 128] = mem[_460 + 128]
                        require mem[_460 + 160] == mem[_460 + 191 len 1]
                        mem[_472 + 160] = mem[_460 + 160]
                        require mem[_460 + 192] == mem[_460 + 223 len 1]
                        mem[_472 + 192] = mem[_460 + 192]
                        require mem[_460 + 224] == mem[_460 + 255 len 1]
                        mem[_472 + 224] = mem[_460 + 224]
                        require mem[_460 + 256] == mem[_460 + 287 len 1]
                        mem[_472 + 256] = mem[_460 + 256]
                        if x == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if x == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_472]:
                            revert with 0, 'Only thieves can be upgraded'
                        if x == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _558 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_558] == mem[_558 + 12 len 20]
                        if mem[_558 + 12 len 20] != stor5:
                            if mem[_558 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _588 = mem[_584]
                                require mem[_584] == mem[_584 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_588)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _612 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_612] == mem[_612]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_612]
                                if x == 10:
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
                            _575 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_575] == mem[_575 + 12 len 20]
                            if mem[_575 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _620 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _626 = mem[_620]
                                require mem[_620] == mem[_620 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_626)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _652 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_652] == mem[_652]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_652]
                                if x == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if x == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if x == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if x == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                            revert with 0, 'Still need time before upgrading'
                        if x == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if x == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if x == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if x == 17:
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
                    if x != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if x != 19:
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
            if x != 1:
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
                if x != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if x == 3:
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
                        _714 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _722 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_714] == bool(mem[_714])
                        mem[_722] = mem[_714]
                        require mem[_714 + 32] == mem[_714 + 63 len 1]
                        mem[_722 + 32] = mem[_714 + 32]
                        require mem[_714 + 64] == mem[_714 + 95 len 1]
                        mem[_722 + 64] = mem[_714 + 64]
                        require mem[_714 + 96] == mem[_714 + 127 len 1]
                        mem[_722 + 96] = mem[_714 + 96]
                        require mem[_714 + 128] == mem[_714 + 159 len 1]
                        mem[_722 + 128] = mem[_714 + 128]
                        require mem[_714 + 160] == mem[_714 + 191 len 1]
                        mem[_722 + 160] = mem[_714 + 160]
                        require mem[_714 + 192] == mem[_714 + 223 len 1]
                        mem[_722 + 192] = mem[_714 + 192]
                        require mem[_714 + 224] == mem[_714 + 255 len 1]
                        mem[_722 + 224] = mem[_714 + 224]
                        require mem[_714 + 256] == mem[_714 + 287 len 1]
                        mem[_722 + 256] = mem[_714 + 256]
                        if x == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if x == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_722]:
                            revert with 0, 'Only thieves can be upgraded'
                        if x == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _766 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_766] == mem[_766 + 12 len 20]
                        if mem[_766 + 12 len 20] != stor5:
                            if mem[_766 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _796 = mem[_792]
                                require mem[_792] == mem[_792 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_796)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _820 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_820] == mem[_820]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_820]
                                if x == 10:
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
                            _783 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_783] == mem[_783 + 12 len 20]
                            if mem[_783 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _834 = mem[_828]
                                require mem[_828] == mem[_828 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_834)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_860] == mem[_860]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_860]
                                if x == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if x == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if x == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if x == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                            revert with 0, 'Still need time before upgrading'
                        if x == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if x == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if x == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if x == 17:
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
                    if x != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if x != 19:
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
            if x != 1:
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
                if x != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if x == 3:
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
                        _461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _473 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_461] == bool(mem[_461])
                        mem[_473] = mem[_461]
                        require mem[_461 + 32] == mem[_461 + 63 len 1]
                        mem[_473 + 32] = mem[_461 + 32]
                        require mem[_461 + 64] == mem[_461 + 95 len 1]
                        mem[_473 + 64] = mem[_461 + 64]
                        require mem[_461 + 96] == mem[_461 + 127 len 1]
                        mem[_473 + 96] = mem[_461 + 96]
                        require mem[_461 + 128] == mem[_461 + 159 len 1]
                        mem[_473 + 128] = mem[_461 + 128]
                        require mem[_461 + 160] == mem[_461 + 191 len 1]
                        mem[_473 + 160] = mem[_461 + 160]
                        require mem[_461 + 192] == mem[_461 + 223 len 1]
                        mem[_473 + 192] = mem[_461 + 192]
                        require mem[_461 + 224] == mem[_461 + 255 len 1]
                        mem[_473 + 224] = mem[_461 + 224]
                        require mem[_461 + 256] == mem[_461 + 287 len 1]
                        mem[_473 + 256] = mem[_461 + 256]
                        if x == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if x == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_473]:
                            revert with 0, 'Only thieves can be upgraded'
                        if x == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _559 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_559] == mem[_559 + 12 len 20]
                        if mem[_559 + 12 len 20] != stor5:
                            if mem[_559 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _591 = mem[_585]
                                require mem[_585] == mem[_585 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_591)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _614 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_614] == mem[_614]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_614]
                                if x == 10:
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
                            _577 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_577] == mem[_577 + 12 len 20]
                            if mem[_577 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _621 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _629 = mem[_621]
                                require mem[_621] == mem[_621 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_629)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_653] == mem[_653]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_653]
                                if x == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if x == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if x == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if x == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                            revert with 0, 'Still need time before upgrading'
                        if x == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if x == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if x == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if x == 17:
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
                    if x != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if x != 19:
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
            if x != 1:
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
                if x != 2:
                    idx = 0
                    s = 0
                    while idx < ('cd', 4).length:
                        if x == 3:
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
                        _715 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _723 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_715] == bool(mem[_715])
                        mem[_723] = mem[_715]
                        require mem[_715 + 32] == mem[_715 + 63 len 1]
                        mem[_723 + 32] = mem[_715 + 32]
                        require mem[_715 + 64] == mem[_715 + 95 len 1]
                        mem[_723 + 64] = mem[_715 + 64]
                        require mem[_715 + 96] == mem[_715 + 127 len 1]
                        mem[_723 + 96] = mem[_715 + 96]
                        require mem[_715 + 128] == mem[_715 + 159 len 1]
                        mem[_723 + 128] = mem[_715 + 128]
                        require mem[_715 + 160] == mem[_715 + 191 len 1]
                        mem[_723 + 160] = mem[_715 + 160]
                        require mem[_715 + 192] == mem[_715 + 223 len 1]
                        mem[_723 + 192] = mem[_715 + 192]
                        require mem[_715 + 224] == mem[_715 + 255 len 1]
                        mem[_723 + 224] = mem[_715 + 224]
                        require mem[_715 + 256] == mem[_715 + 287 len 1]
                        mem[_723 + 256] = mem[_715 + 256]
                        if x == 4:
                            Mask(88, 0, stor7.field_168) = 0
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                        if x == 5:
                            Mask(88, 0, stor7.field_168) = 0
                        if not mem[_723]:
                            revert with 0, 'Only thieves can be upgraded'
                        if x == 6:
                            Mask(88, 0, stor7.field_168) = 0
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall stor4.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _767 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_767] == mem[_767 + 12 len 20]
                        if mem[_767 + 12 len 20] != stor5:
                            if mem[_767 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _793 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _799 = mem[_793]
                                require mem[_793] == mem[_793 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_799)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _822 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_822] == mem[_822]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_822]
                                if x == 10:
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
                            _785 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_785] == mem[_785 + 12 len 20]
                            if mem[_785 + 12 len 20] != msg.sender:
                                revert with 0, 'You are not owner'
                            if x == 7:
                                Mask(88, 0, stor7.field_168) = 0
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 2
                            if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                                if x == 8:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _837 = mem[_829]
                                require mem[_829] == mem[_829 + 31 len 1]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 8
                                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_837)
                                if x == 9:
                                    Mask(88, 0, stor7.field_168) = 0
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_861] == mem[_861]
                                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_861]
                                if x == 10:
                                    Mask(88, 0, stor7.field_168) = 0
                                uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
                        if x == 11:
                            Mask(88, 0, stor7.field_168) = 0
                        if x == 12:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                            revert with 0, 'Reached latest level'
                        if x == 13:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                            revert with 'NH{q', 17
                        if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                            revert with 0, 'Still need time before upgrading'
                        if x == 14:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                            revert with 'NH{q', 50
                        if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                            revert with 'NH{q', 17
                        if x == 15:
                            Mask(88, 0, stor7.field_168) = 0
                        if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                            revert with 'NH{q', 17
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                        if x == 16:
                            Mask(88, 0, stor7.field_168) = 0
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                        if x == 17:
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
                    if x != 18:
                        if ext_call.return_data[0] < s:
                            revert with 0, 'Insufficient LOOT balance'
                        if x != 19:
                            require ext_code.size(stor6)
                            call stor6.0x9dc29fac with:
                                 gas gas_remaining wei
                                args msg.sender, s
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor7.field_168) = 0
}



}
