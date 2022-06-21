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
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _317 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_315] == bool(mem[_315])
            mem[_317] = mem[_315]
            require mem[_315 + 32] == mem[_315 + 63 len 1]
            mem[_317 + 32] = mem[_315 + 32]
            require mem[_315 + 64] == mem[_315 + 95 len 1]
            mem[_317 + 64] = mem[_315 + 64]
            require mem[_315 + 96] == mem[_315 + 127 len 1]
            mem[_317 + 96] = mem[_315 + 96]
            require mem[_315 + 128] == mem[_315 + 159 len 1]
            mem[_317 + 128] = mem[_315 + 128]
            require mem[_315 + 160] == mem[_315 + 191 len 1]
            mem[_317 + 160] = mem[_315 + 160]
            require mem[_315 + 192] == mem[_315 + 223 len 1]
            mem[_317 + 192] = mem[_315 + 192]
            require mem[_315 + 224] == mem[_315 + 255 len 1]
            mem[_317 + 224] = mem[_315 + 224]
            require mem[_315 + 256] == mem[_315 + 287 len 1]
            mem[_317 + 256] = mem[_315 + 256]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if not mem[_317]:
                revert with 0, 'Only thieves can be upgraded'
            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
            staticcall stor4.0x6352211e with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _345 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_345] == mem[_345 + 12 len 20]
            if mem[_345 + 12 len 20] != stor5:
                if mem[_345 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0x6d5e3032 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _379 = mem[_371]
                    require mem[_371] == mem[_371 + 31 len 1]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 8
                    sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_379)
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0xfe8ff146 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _404 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_404] == mem[_404]
                    sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_404]
                    uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor5.0x94edf9d4 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_367] == mem[_367 + 12 len 20]
                if mem[_367 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0x6d5e3032 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _417 = mem[_410]
                    require mem[_410] == mem[_410 + 31 len 1]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 8
                    sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_417)
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0xfe8ff146 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_449] == mem[_449]
                    sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_449]
                    uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                revert with 0, 'Reached latest level'
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > -1 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                revert with 'NH{q', 17
            if 3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > -sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] - 1:
                revert with 'NH{q', 17
            if block.timestamp <= (3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]) + sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                revert with 0, 'Still need time before upgrading'
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                revert with 'NH{q', 50
            if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                revert with 'NH{q', 17
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                revert with 'NH{q', 17
            sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
            sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
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
    else:
        if owner != msg.sender:
            revert with 0, 'Paused'
        if ('cd', 4).length <= 0:
            revert with 0, 'Need more than one token'
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
            _316 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _318 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_316] == bool(mem[_316])
            mem[_318] = mem[_316]
            require mem[_316 + 32] == mem[_316 + 63 len 1]
            mem[_318 + 32] = mem[_316 + 32]
            require mem[_316 + 64] == mem[_316 + 95 len 1]
            mem[_318 + 64] = mem[_316 + 64]
            require mem[_316 + 96] == mem[_316 + 127 len 1]
            mem[_318 + 96] = mem[_316 + 96]
            require mem[_316 + 128] == mem[_316 + 159 len 1]
            mem[_318 + 128] = mem[_316 + 128]
            require mem[_316 + 160] == mem[_316 + 191 len 1]
            mem[_318 + 160] = mem[_316 + 160]
            require mem[_316 + 192] == mem[_316 + 223 len 1]
            mem[_318 + 192] = mem[_316 + 192]
            require mem[_316 + 224] == mem[_316 + 255 len 1]
            mem[_318 + 224] = mem[_316 + 224]
            require mem[_316 + 256] == mem[_316 + 287 len 1]
            mem[_318 + 256] = mem[_316 + 256]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if not mem[_318]:
                revert with 0, 'Only thieves can be upgraded'
            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
            staticcall stor4.0x6352211e with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _347 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_347] == mem[_347 + 12 len 20]
            if mem[_347 + 12 len 20] != stor5:
                if mem[_347 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0x6d5e3032 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _374 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _380 = mem[_374]
                    require mem[_374] == mem[_374 + 31 len 1]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 8
                    sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_380)
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0xfe8ff146 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _406 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_406] == mem[_406]
                    sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_406]
                    uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor5.0x94edf9d4 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _368 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_368] == mem[_368 + 12 len 20]
                if mem[_368 + 12 len 20] != msg.sender:
                    revert with 0, 'You are not owner'
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 2
                if not uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]):
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0x6d5e3032 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _418 = mem[_413]
                    require mem[_413] == mem[_413 + 31 len 1]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 8
                    sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(_418)
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_6d4ede93Address.0xfe8ff146 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _452 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_452] == mem[_452]
                    sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = mem[_452]
                    uint8(stor2[cd[((32 * idx) + cd[4] + 36)] << 240]) = 1
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= 50:
                revert with 0, 'Reached latest level'
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] and 3600 > -1 / sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]:
                revert with 'NH{q', 17
            if 3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > -sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] - 1:
                revert with 'NH{q', 17
            if block.timestamp <= (3600 * sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240]) + sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240]:
                revert with 0, 'Still need time before upgrading'
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] >= sub_e0b05c26.length:
                revert with 'NH{q', 50
            if s > -sub_e0b05c26[stor8[cd[((32 * idx) + cd[4] + 36)] << 240]] - 1:
                revert with 'NH{q', 17
            if sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] > 254:
                revert with 'NH{q', 17
            sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] = uint8(sub_6146652c[cd[((32 * idx) + cd[4] + 36)] << 240] + 1)
            sub_2cc93636[cd[((32 * idx) + cd[4] + 36)] << 240] = block.timestamp
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
