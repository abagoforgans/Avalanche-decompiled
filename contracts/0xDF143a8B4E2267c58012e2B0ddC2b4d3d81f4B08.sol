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
    return bool(stor2[arg1])
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
    if stor2[arg1]:
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
    if stor2[arg1]:
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
        if not stor2[mem[(32 * idx) + 128]]:
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
            stor2[mem[(32 * idx) + 128]] = 1
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
    if stor2[arg1]:
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
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor4.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _498 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_484] == bool(mem[_484])
                mem[_498] = mem[_484]
                require mem[_484 + 32] == mem[_484 + 63 len 1]
                mem[_498 + 32] = mem[_484 + 32]
                require mem[_484 + 64] == mem[_484 + 95 len 1]
                mem[_498 + 64] = mem[_484 + 64]
                require mem[_484 + 96] == mem[_484 + 127 len 1]
                mem[_498 + 96] = mem[_484 + 96]
                require mem[_484 + 128] == mem[_484 + 159 len 1]
                mem[_498 + 128] = mem[_484 + 128]
                require mem[_484 + 160] == mem[_484 + 191 len 1]
                mem[_498 + 160] = mem[_484 + 160]
                require mem[_484 + 192] == mem[_484 + 223 len 1]
                mem[_498 + 192] = mem[_484 + 192]
                require mem[_484 + 224] == mem[_484 + 255 len 1]
                mem[_498 + 224] = mem[_484 + 224]
                require mem[_484 + 256] == mem[_484 + 287 len 1]
                mem[_498 + 256] = mem[_484 + 256]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if not mem[_498]:
                    revert with 0, 'Only thieves can be upgraded'
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor4.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _556 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_556] == mem[_556 + 12 len 20]
                if mem[_556 + 12 len 20] != stor5:
                    if mem[_556 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _590 = mem[_580]
                        require mem[_580] == mem[_580 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_590)
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
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall stor5.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _576 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_576] == mem[_576 + 12 len 20]
                    if mem[_576 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
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
                        _630 = mem[_621]
                        require mem[_621] == mem[_621 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_630)
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_657] == mem[_657]
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_657]
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                    revert with 0, 'Reached latest level'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    revert with 0, 'Still need time before upgrading'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                    revert with 'NH{q', 17
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 9
                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                continue 
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
            mem[100] = msg.sender
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor4.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _717 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _720 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_717] == bool(mem[_717])
                mem[_720] = mem[_717]
                require mem[_717 + 32] == mem[_717 + 63 len 1]
                mem[_720 + 32] = mem[_717 + 32]
                require mem[_717 + 64] == mem[_717 + 95 len 1]
                mem[_720 + 64] = mem[_717 + 64]
                require mem[_717 + 96] == mem[_717 + 127 len 1]
                mem[_720 + 96] = mem[_717 + 96]
                require mem[_717 + 128] == mem[_717 + 159 len 1]
                mem[_720 + 128] = mem[_717 + 128]
                require mem[_717 + 160] == mem[_717 + 191 len 1]
                mem[_720 + 160] = mem[_717 + 160]
                require mem[_717 + 192] == mem[_717 + 223 len 1]
                mem[_720 + 192] = mem[_717 + 192]
                require mem[_717 + 224] == mem[_717 + 255 len 1]
                mem[_720 + 224] = mem[_717 + 224]
                require mem[_717 + 256] == mem[_717 + 287 len 1]
                mem[_720 + 256] = mem[_717 + 256]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if not mem[_720]:
                    revert with 0, 'Only thieves can be upgraded'
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
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _790 = mem[_780]
                        require mem[_780] == mem[_780 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_790)
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
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall stor5.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _776 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_776] == mem[_776 + 12 len 20]
                    if mem[_776 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
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
                        _830 = mem[_821]
                        require mem[_821] == mem[_821 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_830)
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_857] == mem[_857]
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_857]
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                    revert with 0, 'Reached latest level'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    revert with 0, 'Still need time before upgrading'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                    revert with 'NH{q', 17
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 9
                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                continue 
    else:
        if owner != msg.sender:
            revert with 0, 'Paused'
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
        if not uint8(stor7.field_160):
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
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor4.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _499 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_487] == bool(mem[_487])
                mem[_499] = mem[_487]
                require mem[_487 + 32] == mem[_487 + 63 len 1]
                mem[_499 + 32] = mem[_487 + 32]
                require mem[_487 + 64] == mem[_487 + 95 len 1]
                mem[_499 + 64] = mem[_487 + 64]
                require mem[_487 + 96] == mem[_487 + 127 len 1]
                mem[_499 + 96] = mem[_487 + 96]
                require mem[_487 + 128] == mem[_487 + 159 len 1]
                mem[_499 + 128] = mem[_487 + 128]
                require mem[_487 + 160] == mem[_487 + 191 len 1]
                mem[_499 + 160] = mem[_487 + 160]
                require mem[_487 + 192] == mem[_487 + 223 len 1]
                mem[_499 + 192] = mem[_487 + 192]
                require mem[_487 + 224] == mem[_487 + 255 len 1]
                mem[_499 + 224] = mem[_487 + 224]
                require mem[_487 + 256] == mem[_487 + 287 len 1]
                mem[_499 + 256] = mem[_487 + 256]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if not mem[_499]:
                    revert with 0, 'Only thieves can be upgraded'
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
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _591 = mem[_583]
                        require mem[_583] == mem[_583 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_591)
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_617] == mem[_617]
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_617]
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
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
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _631 = mem[_624]
                        require mem[_624] == mem[_624 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_631)
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _661 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_661] == mem[_661]
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_661]
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                    revert with 0, 'Reached latest level'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    revert with 0, 'Still need time before upgrading'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                    revert with 'NH{q', 17
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 9
                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                continue 
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
            mem[100] = msg.sender
            staticcall stor6.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            mem[96] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor4.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _721 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_719] == bool(mem[_719])
                mem[_721] = mem[_719]
                require mem[_719 + 32] == mem[_719 + 63 len 1]
                mem[_721 + 32] = mem[_719 + 32]
                require mem[_719 + 64] == mem[_719 + 95 len 1]
                mem[_721 + 64] = mem[_719 + 64]
                require mem[_719 + 96] == mem[_719 + 127 len 1]
                mem[_721 + 96] = mem[_719 + 96]
                require mem[_719 + 128] == mem[_719 + 159 len 1]
                mem[_721 + 128] = mem[_719 + 128]
                require mem[_719 + 160] == mem[_719 + 191 len 1]
                mem[_721 + 160] = mem[_719 + 160]
                require mem[_719 + 192] == mem[_719 + 223 len 1]
                mem[_721 + 192] = mem[_719 + 192]
                require mem[_719 + 224] == mem[_719 + 255 len 1]
                mem[_721 + 224] = mem[_719 + 224]
                require mem[_719 + 256] == mem[_719 + 287 len 1]
                mem[_721 + 256] = mem[_719 + 256]
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if not mem[_721]:
                    revert with 0, 'Only thieves can be upgraded'
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor4.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _758 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_758] == mem[_758 + 12 len 20]
                if mem[_758 + 12 len 20] != stor5:
                    if mem[_758 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _791 = mem[_783]
                        require mem[_783] == mem[_783 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_791)
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0xfe8ff146 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _817 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_817] == mem[_817]
                        sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_817]
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall stor5.0x94edf9d4 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_777] == mem[_777 + 12 len 20]
                    if mem[_777 + 12 len 20] != msg.sender:
                        revert with 0, 'You are not owner'
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 2
                    if not stor2[cd[((32 * idx) + cd[4] + 36)] << 240]:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        staticcall sub_6d4ede93Address.0x6d5e3032 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _824 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _831 = mem[_824]
                        require mem[_824] == mem[_824 + 31 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 8
                        sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_831)
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
                        stor2[cd[((32 * idx) + cd[4] + 36)] << 240] = 1
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                    revert with 0, 'Reached latest level'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > 65535 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp < sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                    revert with 'NH{q', 17
                if block.timestamp - sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] <= uint16(3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    revert with 0, 'Still need time before upgrading'
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                    revert with 'NH{q', 50
                if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                    revert with 'NH{q', 17
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 9
                sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                    revert with 'NH{q', 17
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]]
                continue 
    if ext_call.return_data[0] < s:
        revert with 0, 'Insufficient LOOT balance'
    require ext_code.size(stor6)
    call stor6.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(88, 0, stor7.field_168) = 0
}



}
