contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
address stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
mapping of uint8 levelOf;
mapping of uint256 sub_fe8ff146;
array of uint256 sub_e0b05c26;

function paused() payable {
    return bool(stor0)
}

function levelOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return levelOf[arg1]
}

function owner() payable {
    return owner
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

function setContracts(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg3
    stor3 = arg1
    stor2 = arg2
    address(stor4.field_0) = arg4
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
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if uint8(stor4.field_160):
        revert with 0, 'No reentrancy'
    Mask(96, 0, stor4.field_160) = 1
    if stor0:
        revert with 0, 'Pauseable: paused'
    if ('cd', 4).length <= 0:
        revert with 0, 'Need more than one token'
    mem[100] = msg.sender
    staticcall address(stor4.field_0).0x70a08231 with:
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
        mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
        staticcall stor2.0x6352211e with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == mem[_85 + 12 len 20]
        if mem[_85 + 12 len 20] != stor3:
            if mem[_85 + 12 len 20] != msg.sender:
                revert with 0, 'You are not owner'
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            staticcall stor2.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _98 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_95] == bool(mem[_95])
            mem[_98] = mem[_95]
            require mem[_95 + 32] == mem[_95 + 63 len 1]
            mem[_98 + 32] = mem[_95 + 32]
            require mem[_95 + 64] == mem[_95 + 95 len 1]
            mem[_98 + 64] = mem[_95 + 64]
            require mem[_95 + 96] == mem[_95 + 127 len 1]
            mem[_98 + 96] = mem[_95 + 96]
            require mem[_95 + 128] == mem[_95 + 159 len 1]
            mem[_98 + 128] = mem[_95 + 128]
            require mem[_95 + 160] == mem[_95 + 191 len 1]
            mem[_98 + 160] = mem[_95 + 160]
            require mem[_95 + 192] == mem[_95 + 223 len 1]
            mem[_98 + 192] = mem[_95 + 192]
            require mem[_95 + 224] == mem[_95 + 255 len 1]
            mem[_98 + 224] = mem[_95 + 224]
            require mem[_95 + 256] == mem[_95 + 287 len 1]
            mem[_98 + 256] = mem[_95 + 256]
            if not mem[_98]:
                revert with 0, 'Only thieves can be upgraded'
        else:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            staticcall stor3.0x94edf9d4 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_93] == mem[_93 + 12 len 20]
            if mem[_93 + 12 len 20] != msg.sender:
                revert with 0, 'You are not owner'
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            staticcall stor2.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _106 = mem[64]
            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 288
            require mem[_103] == bool(mem[_103])
            mem[_106] = mem[_103]
            require mem[_103 + 32] == mem[_103 + 63 len 1]
            mem[_106 + 32] = mem[_103 + 32]
            require mem[_103 + 64] == mem[_103 + 95 len 1]
            mem[_106 + 64] = mem[_103 + 64]
            require mem[_103 + 96] == mem[_103 + 127 len 1]
            mem[_106 + 96] = mem[_103 + 96]
            require mem[_103 + 128] == mem[_103 + 159 len 1]
            mem[_106 + 128] = mem[_103 + 128]
            require mem[_103 + 160] == mem[_103 + 191 len 1]
            mem[_106 + 160] = mem[_103 + 160]
            require mem[_103 + 192] == mem[_103 + 223 len 1]
            mem[_106 + 192] = mem[_103 + 192]
            require mem[_103 + 224] == mem[_103 + 255 len 1]
            mem[_106 + 224] = mem[_103 + 224]
            require mem[_103 + 256] == mem[_103 + 287 len 1]
            mem[_106 + 256] = mem[_103 + 256]
            if not mem[_106]:
                revert with 0, 'Only thieves can be upgraded'
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if levelOf[cd[((32 * idx) + cd[4] + 36)]] >= 50:
            revert with 0, 'Reached latest level'
        if levelOf[cd[((32 * idx) + cd[4] + 36)]] and 3600 > 65535 / levelOf[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if block.timestamp < sub_fe8ff146[cd[((32 * idx) + cd[4] + 36)]]:
            revert with 'NH{q', 17
        if block.timestamp - sub_fe8ff146[cd[((32 * idx) + cd[4] + 36)]] <= uint16(3600 * levelOf[cd[((32 * idx) + cd[4] + 36)]]):
            revert with 0, 'Still need time before upgrading'
        if levelOf[cd[((32 * idx) + cd[4] + 36)]] >= sub_e0b05c26.length:
            revert with 'NH{q', 50
        if s > -sub_e0b05c26[stor5[cd[((32 * idx) + cd[4] + 36)]]] - 1:
            revert with 'NH{q', 17
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if levelOf[cd[((32 * idx) + cd[4] + 36)]] > 254:
            revert with 'NH{q', 17
        levelOf[cd[((32 * idx) + cd[4] + 36)]] = uint8(levelOf[cd[((32 * idx) + cd[4] + 36)]] + 1)
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 6
        sub_fe8ff146[cd[((32 * idx) + cd[4] + 36)]] = block.timestamp
        if levelOf[cd[((32 * idx) + cd[4] + 36)]] > 254:
            revert with 'NH{q', 17
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = cd[((32 * idx) + cd[4] + 36)]
        mem[mem[64] + 64] = uint8(levelOf[cd[((32 * idx) + cd[4] + 36)]] + 1)
        emit 0x68d3fd0f: msg.sender, cd[((32 * idx) + cd[4] + 36)], uint8(levelOf[cd[((32 * idx) + cd[4] + 36)]] + 1)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + sub_e0b05c26[stor5[cd[((32 * idx) + cd[4] + 36)]]]
        continue 
    if s and 10^18 > -1 / s:
        revert with 'NH{q', 17
    if ext_call.return_data[0] < 10^18 * s:
        revert with 0, 'Insufficient LOOT balance'
    require ext_code.size(address(stor4.field_0))
    call address(stor4.field_0).burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 10^18 * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor4.field_160) = 0
}



}
