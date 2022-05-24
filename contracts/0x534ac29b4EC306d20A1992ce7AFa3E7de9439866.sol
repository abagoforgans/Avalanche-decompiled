contract main {




// =====================  Runtime code  =====================


#
#  - sub_59c4a28e(?)
#  - sub_6c0363f6(?)
#
address owner;
uint256 GAME_DURATION;
uint256 sub_87fcbd46;
mapping of struct sub_55b4b9ce;
mapping of uint128 sub_983bd024;
uint128 stor5;
uint256 sub_921c45ca;
address stor6;
address stor7;

function sub_55b4b9ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    return sub_55b4b9ce[arg1 << 128].field_128
}

function sub_87fcbd46(?) payable {
    return sub_87fcbd46
}

function owner() payable {
    return owner
}

function sub_921c45ca(?) payable {
    return uint256(sub_921c45ca)
}

function sub_983bd024(?) payable {
    require calldata.size - 4 >= 32
    return sub_983bd024[arg1]
}

function sub_c09f8c13(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    return bool(sub_55b4b9ce[arg1 << 128].field_1536)
}

function sub_c17885bd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    return sub_55b4b9ce[arg1 << 128].field_1544
}

function GAME_DURATION() payable {
    return GAME_DURATION
}

function sub_eb5f193d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    return sub_55b4b9ce[arg1 << 128].field_1280
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_589a15e2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_87fcbd46 = arg1
}

function sub_bfea694b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    GAME_DURATION = arg1
}

function _setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function sub_774b2be2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
}

function sub_2974992e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if sub_55b4b9ce[arg1 << 128].field_512:
        mem[128] = sub_55b4b9ce[arg1 << 128][2].field_0
        idx = 128
        s = 0
        while (32 * sub_55b4b9ce[arg1 << 128].field_512) + 96 > idx:
            mem[idx + 32] = sub_55b4b9ce[arg1 << 128][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_55b4b9ce[arg1 << 128].field_512, data=mem[128 len 32 * sub_55b4b9ce[arg1 << 128].field_512])
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_512) + 128] = 32
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_512) + 160] = sub_55b4b9ce[arg1 << 128].field_512
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_512) + 192 len 32 * sub_55b4b9ce[arg1 << 128].field_512] = mem[128 len 32 * sub_55b4b9ce[arg1 << 128].field_512]
    return memory
      from (32 * sub_55b4b9ce[arg1 << 128].field_512) + 128
       len (96 * sub_55b4b9ce[arg1 << 128].field_512) + 64
}

function sub_efe37ad9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if sub_55b4b9ce[arg1 << 128].field_768:
        mem[128] = sub_55b4b9ce[arg1 << 128][3].field_0
        if (32 * sub_55b4b9ce[arg1 << 128].field_768) + 32 > 64:
            mem[160] = sub_55b4b9ce[arg1 << 128][3].field_256
            idx = 160
            s = 1
            while (32 * sub_55b4b9ce[arg1 << 128].field_768) + 96 > idx:
                mem[idx + 32] = sub_55b4b9ce[arg1 << 128][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_768) + 128] = 32
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_768) + 160] = sub_55b4b9ce[arg1 << 128].field_768
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_768) + 192 len 32 * sub_55b4b9ce[arg1 << 128].field_768] = mem[128 len 32 * sub_55b4b9ce[arg1 << 128].field_768]
    return memory
      from (32 * sub_55b4b9ce[arg1 << 128].field_768) + 128
       len (96 * sub_55b4b9ce[arg1 << 128].field_768) + 64
}

function sub_5cd0500f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if sub_55b4b9ce[arg1 << 128].field_1024:
        mem[128] = sub_55b4b9ce[arg1 << 128][4].field_0
        if (32 * sub_55b4b9ce[arg1 << 128].field_1024) + 32 > 64:
            mem[160] = sub_55b4b9ce[arg1 << 128][4].field_256
            idx = 160
            s = 1
            while (32 * sub_55b4b9ce[arg1 << 128].field_1024) + 96 > idx:
                mem[idx + 32] = sub_55b4b9ce[arg1 << 128][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_1024) + 128] = 32
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_1024) + 160] = sub_55b4b9ce[arg1 << 128].field_1024
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_1024) + 192 len 32 * sub_55b4b9ce[arg1 << 128].field_1024] = mem[128 len 32 * sub_55b4b9ce[arg1 << 128].field_1024]
    return memory
      from (32 * sub_55b4b9ce[arg1 << 128].field_1024) + 128
       len (96 * sub_55b4b9ce[arg1 << 128].field_1024) + 64
}

function sub_2295cd06(?) payable {
    require calldata.size - 4 >= 64
    if stor7 != msg.sender:
        revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 
                    'WorldWar: Only RandomContract can call this function'
    if not sub_55b4b9ce[stor4[arg1]].field_1024:
        revert with 'NH{q', 18
    idx = 0
    s = 0
    while idx < sub_55b4b9ce[stor4[arg1]].field_768:
        if s > !sub_55b4b9ce[stor4[arg1]][idx + 3].field_0:
            revert with 'NH{q', 17
        if idx >= sub_55b4b9ce[stor4[arg1]].field_256:
            revert with 'NH{q', 50
        mem[0] = sha3(sub_983bd024[arg1], 3) + 1
        if arg2 % sub_55b4b9ce[stor4[arg1]].field_1024 > s + sub_55b4b9ce[stor4[arg1]][idx + 3].field_0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + sub_55b4b9ce[stor4[arg1]][idx + 3].field_0
            continue 
        sub_55b4b9ce[stor4[arg1]].field_1544 = sub_55b4b9ce[stor4[arg1]][idx + 1].field_0
    revert with 0, 'WorldWar: Impossible case'
}

function sub_bd233cab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 'NH{q', 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint64(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        _22 = mem[(32 * idx) + 128]
        mem[(32 * ('cd', 4).length) + 128] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 4).length) + 132] = this.address
        mem[(32 * ('cd', 4).length) + 164] = owner
        mem[(32 * ('cd', 4).length) + 196] = uint64(_22)
        require ext_code.size(stor6)
        call stor6.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), owner, uint64(_22)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_60e72adb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if sub_55b4b9ce[arg1 << 128].field_1536:
        revert with 0, 'WorldWar: Room already claimed'
    if not sub_55b4b9ce[arg1 << 128].field_1544:
        revert with 0, 'WorldWar: Winner not picked'
    if sub_55b4b9ce[arg1 << 128].field_1024 and sub_87fcbd46 > -1 / sub_55b4b9ce[arg1 << 128].field_1024:
        revert with 'NH{q', 17
    if sub_55b4b9ce[arg1 << 128].field_1024 < sub_55b4b9ce[arg1 << 128].field_1024 * sub_87fcbd46 / 100000:
        revert with 'NH{q', 17
    idx = 0
    while idx < sub_55b4b9ce[arg1 << 128].field_1024 - (sub_55b4b9ce[arg1 << 128].field_1024 * sub_87fcbd46 / 100000):
        if idx >= sub_55b4b9ce[arg1 << 128].field_1024:
            revert with 'NH{q', 50
        mem[0] = sha3(arg1 << 128, 3) + 4
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = sub_55b4b9ce[arg1 << 128].field_1544
        mem[164] = sub_55b4b9ce[arg1 << 128][idx + 4].field_0
        require ext_code.size(stor6)
        call stor6.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), sub_55b4b9ce[arg1 << 128].field_1536, sub_55b4b9ce[arg1 << 128][idx + 4].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    sub_55b4b9ce[arg1 << 128].field_1536 = 1
}

function sub_cf4f60ca(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    mem[64] = (32 * sub_55b4b9ce[arg1 << 128].field_256) + 128
    mem[96] = sub_55b4b9ce[arg1 << 128].field_256
    if not sub_55b4b9ce[arg1 << 128].field_256:
        mem[(32 * sub_55b4b9ce[arg1 << 128].field_256) + 128] = 32
        mem[(32 * sub_55b4b9ce[arg1 << 128].field_256) + 160] = sub_55b4b9ce[arg1 << 128].field_256
        idx = 0
        s = (32 * sub_55b4b9ce[arg1 << 128].field_256) + 192
        t = 128
        while idx < sub_55b4b9ce[arg1 << 128].field_256:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_55b4b9ce[arg1 << 128].field_256) + 128
           len (96 * sub_55b4b9ce[arg1 << 128].field_256) + 64
    mem[128] = sub_55b4b9ce[arg1 << 128][1].field_0
    idx = 128
    s = 0
    while (32 * sub_55b4b9ce[arg1 << 128].field_256) + 96 > idx:
        mem[idx + 32] = sub_55b4b9ce[arg1 << 128][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_256) + 128] = 32
    mem[(32 * sub_55b4b9ce[arg1 << 128].field_256) + 160] = sub_55b4b9ce[arg1 << 128].field_256
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_55b4b9ce[arg1 << 128].field_256:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_55b4b9ce[arg1 << 128].field_256) + -mem[64] + 192
}

function pick(uint128 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    if sub_55b4b9ce[arg1 << 128].field_128 > !GAME_DURATION:
        revert with 'NH{q', 17
    if sub_55b4b9ce[arg1 << 128].field_128 + GAME_DURATION > block.timestamp:
        revert with 0, 'WorldWar: The room has not ended'
    if sub_55b4b9ce[arg1 << 128].field_1544:
        revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 'WorldWar: Winner is already picked'
    if sub_55b4b9ce[arg1 << 128].field_1280:
        revert with 0, 'WorldWar: Request already sent'
    idx = 0
    s = 96
    while idx < sub_55b4b9ce[arg1 << 128].field_512:
        mem[0] = sha3(arg1 << 128, 3) + 2
        _31 = mem[64]
        _33 = mem[s]
        t = 0
        while t < _33:
            mem[t + _31 + 32] = mem[s + t + 32]
            t = t + 32
            continue 
        mem[_33 + _31 + 32] = sub_55b4b9ce[arg1 << 128][idx + 2].field_0
        if ceil32(_33) <= _33:
            _41 = mem[64]
            mem[mem[64]] = _33 + _31 + -mem[64] + 32
            mem[64] = _33 + _31 + 64
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _41
            continue 
        _42 = mem[64]
        mem[mem[64]] = _33 + _31 + -mem[64] + 32
        mem[64] = _33 + _31 + 64
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _42
        continue 
    _28 = sha3(mem[s + 32 len mem[s]])
    mem[mem[64] + 4] = sha3(mem[s + 32 len mem[s]])
    require ext_code.size(stor7)
    call stor7.0xc42af83c with:
         gas gas_remaining wei
        args _28
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    sub_55b4b9ce[arg1 << 128].field_1280 = mem[_34]
    mem[0] = mem[_34]
    sub_983bd024[mem[0]] = arg1
}

function sub_c3214595(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = uint128(block.timestamp)
    mem[160] = 96
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    if 1 > !uint256(sub_921c45ca):
        revert with 'NH{q', 17
    uint256(sub_921c45ca)++
    sub_55b4b9ce[uint128(stor5)].field_0 = uint128(stor5)
    sub_55b4b9ce[uint128(stor5)].field_128 = uint128(block.timestamp)
    sub_55b4b9ce[uint128(stor5)].field_256 = uint128(stor5)
    if not uint128(stor5):
        idx = 0
        while sub_55b4b9ce[uint128(stor5)].field_256 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * uint128(stor5)) + 128 > idx:
            sub_55b4b9ce[uint128(stor5)][s + 1].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint128(stor5)) + 31) >> 5
        while sub_55b4b9ce[uint128(stor5)].field_256 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_55b4b9ce[uint128(stor5)].field_512 = uint128(stor5)
    if not uint128(stor5):
        idx = 0
        while sub_55b4b9ce[uint128(stor5)].field_512 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * uint128(stor5)) + 128 > idx:
            sub_55b4b9ce[uint128(stor5)][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint128(stor5)) + 31) >> 5
        while sub_55b4b9ce[uint128(stor5)].field_512 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_55b4b9ce[uint128(stor5)].field_768 = uint128(stor5)
    if not uint128(stor5):
        idx = 0
        while sub_55b4b9ce[uint128(stor5)].field_768 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * uint128(stor5)) + 128 > idx:
            sub_55b4b9ce[uint128(stor5)][s + 3].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint128(stor5)) + 31) >> 5
        while sub_55b4b9ce[uint128(stor5)].field_768 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    sub_55b4b9ce[uint128(stor5)].field_1024 = uint128(stor5)
    if not uint128(stor5):
        idx = 0
        while sub_55b4b9ce[uint128(stor5)].field_1024 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * uint128(stor5)) + 128 > idx:
            sub_55b4b9ce[uint128(stor5)][s + 4].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * uint128(stor5)) + 31) >> 5
        while sub_55b4b9ce[uint128(stor5)].field_1024 > idx:
            sub_55b4b9ce[uint128(stor5)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    sub_55b4b9ce[uint128(stor5)].field_1280 = 0
    sub_55b4b9ce[uint128(stor5)].field_1536 = 0
    sub_55b4b9ce[uint128(stor5)].field_1544 = 0
    sub_55b4b9ce[uint128(stor5)].field_1704 = 0
    sub_55b4b9ce[uint128(stor5)].field_1792 = 0
}

function sub_05de6666(?) payable {
    if uint256(sub_921c45ca) < 1:
        revert with 'NH{q', 17
    if not sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256:
        if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512:
            idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + 736
            s = 0
            while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 704 > idx:
                mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768:
            idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 768
            s = 0
            while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 736 > idx:
                mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
            idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 800
            s = 0
            while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                idx = idx + 32
                s = s + 1
                continue 
    else:
        if (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + 32 > 64:
            idx = 736
            s = 1
            while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + 672 > idx:
                mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512:
                idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + 736
                s = 0
                while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 704 > idx:
                    mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768:
                idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 768
                s = 0
                while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 736 > idx:
                    mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
                idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 800
                s = 0
                while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                    mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if not sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512:
                if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768:
                    idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 768
                    s = 0
                    while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 736 > idx:
                        mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
                    idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 800
                    s = 0
                    while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                        mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 32 > 64:
                    idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + 768
                    s = 1
                    while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 704 > idx:
                        mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768:
                        idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 768
                        s = 0
                        while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 736 > idx:
                            mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
                        idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 800
                        s = 0
                        while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                            mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if not sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768:
                        if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
                            idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 800
                            s = 0
                            while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                                mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 32 > 64:
                            idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + 800
                            s = 1
                            while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 736 > idx:
                                mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
                                idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 800
                                s = 0
                                while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                                    mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                        else:
                            if sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024:
                                if (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 32 > 64:
                                    idx = (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + 832
                                    s = 1
                                    while (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_256) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_512) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_768) + (32 * sub_55b4b9ce[uint256(stor5) - 1 << 128].field_1024) + 768 > idx:
                                        mem[idx + 32] = sub_55b4b9ce[uint256(stor5) - 1 << 128][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
    return sub_55b4b9ce[uint256(stor5) - 1 << 128].field_0
}



}
