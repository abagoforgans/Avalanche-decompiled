contract main {




// =====================  Runtime code  =====================


const sub_6d282449(?) = 20

const sub_ce85f22b(?) = 2400000000 * 10^18

const MAX_ALPHA = 8


uint8 stor0; offset 160
address owner;
address stor1;
mapping of struct sub_771f2476;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor8;
uint256 sub_ba40d7cc;
uint256 sub_b01bd7bf;
uint256 MINIMUM_TO_EXIT;
uint256 sub_16110e5c;
uint256 sub_8b8952dd;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
uint8 stor14; offset 8

function sub_16110e5c(?) payable {
    return sub_16110e5c
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function paused() payable {
    return bool(stor0)
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function sub_771f2476(?) payable {
    require calldata.size - 4 >= 32
    return uint16(sub_771f2476[arg1].field_0), Mask(80, 0, sub_771f2476[arg1].field_0), address(sub_771f2476[arg1].field_96)
}

function sub_8b8952dd(?) payable {
    return sub_8b8952dd
}

function owner() payable {
    return owner
}

function sub_b01bd7bf(?) payable {
    return sub_b01bd7bf
}

function sub_ba40d7cc(?) payable {
    return uint256(sub_ba40d7cc)
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(pack[arg1].field_0)
    return uint16(pack[arg1][arg2].field_0), Mask(80, 0, pack[arg1][arg2].field_0), address(pack[arg1][arg2].field_96)
}

function _fallback() payable {
    revert
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function setSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg2
    sub_b01bd7bf = arg1
}

function balanceOf() payable {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor0:
            revert with 0, 'Pauseable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pauseable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Barn directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_db31244b(?) payable {
    require calldata.size - 4 >= 32
    if totalAlphaStaked != 0:
        if not totalAlphaStaked:
            revert with 0, 18
        idx = 5
        s = 0
        while idx <= 8:
            mem[0] = idx
            mem[32] = 4
            if uint256(pack[idx].field_0) and idx > -1 / uint256(pack[idx].field_0):
                revert with 0, 17
            if s > !(uint256(pack[idx].field_0) * idx):
                revert with 0, 17
            if arg1 % totalAlphaStaked >= s + (uint256(pack[idx].field_0) * idx):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(pack[idx].field_0) * idx)
                continue 
            if not uint256(pack[idx].field_0):
                revert with 0, 18
            if Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0) >= uint256(pack[idx].field_0):
                revert with 0, 50
            return address(pack[idx][Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0)].field_96)
        return 0
    else:
        return 0
}

function sub_07b20603(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.tokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    require ext_call.return_data[320] == ext_call.return_data[351 len 1]
    return bool(ext_call.return_data[0])
}

function sub_7abae42e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[64] = 128
    mem[96] = 0
    mem[128] = 0x70a0823100000000000000000000000000000000000000000000000000000000
    mem[132] = this.address
    require ext_code.size(stor1)
    staticcall stor1.mem[var45003 len 4] with:
            gas gas_remaining wei
           args mem[var45003 + 4 len var45004 - 4]
    mem[var45005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require var49002 - var49001 >= 32
    if var53002 >= var53001:
        mem[ceil32(return_data.size) + 128] = 32
        _221 = mem[var53003]
        mem[ceil32(return_data.size) + 160] = mem[var53003]
        mem[ceil32(return_data.size) + 192 len ceil32(_221)] = mem[var53003 + 32 len ceil32(_221)]
        if ceil32(_221) > _221:
            mem[ceil32(return_data.size) + _221 + 192] = 0
        return 32, mem[ceil32(return_data.size) + 160 len ceil32(_221) + 32]
    mem[ceil32(return_data.size) + 128] = 0x2f745c5900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = var55001
    require ext_code.size(stor1)
    staticcall stor1.mem[var57003 len 4] with:
            gas gas_remaining wei
           args mem[var57003 + 4 len var57004 - 4]
    mem[var57005] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 128
    require var61002 - var61001 >= 32
    mem[0] = var65001
    mem[32] = 3
    if address(sub_771f2476[var65001].field_96) != address(arg1):
        if var69001 == -1:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 128] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(stor1)
        staticcall stor1.mem[var77003 len 4] with:
                gas gas_remaining wei
               args mem[var77003 + 4 len var77004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        # nil
    else:
        if var69001:
            s = 0
            idx = var79002
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[(2 * ceil32(return_data.size)) + 128] = s
            t = s
            idx = var79002
            while idx:
                if t < 1:
                    revert with 0, 17
                if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if idx < 10 * idx / 10:
                    revert with 0, 17
                if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                    revert with 0, 17
                if t - 1 >= mem[(2 * ceil32(return_data.size)) + 128]:
                    revert with 0, 50
                mem[t + (2 * ceil32(return_data.size)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            # nil
        else:
            mem[64] = (2 * ceil32(return_data.size)) + 192
            mem[(2 * ceil32(return_data.size)) + 128] = 1
            mem[(2 * ceil32(return_data.size)) + 160] = 0x3000000000000000000000000000000000000000000000000000000000000000
            s = 0
            while s < var77003:
                mem[s + var77002] = mem[s + var77001]
                s = s + 32
                continue 
            # nil
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor14:
        revert with 0, 'No reentrancy'
    stor14 = 1
    if not rescueEnabled:
        revert with 0, 'RESCUE DISABLED'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[64] = 288
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    idx = 0
    s = 96
    s = 0
    while idx < arg1.length:
        require ext_code.size(stor1)
        staticcall stor1.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        require mem[_71] == bool(mem[_71])
        require mem[_71 + 32] == mem[_71 + 63 len 1]
        require mem[_71 + 64] == mem[_71 + 95 len 1]
        require mem[_71 + 96] == mem[_71 + 127 len 1]
        require mem[_71 + 128] == mem[_71 + 159 len 1]
        require mem[_71 + 160] == mem[_71 + 191 len 1]
        require mem[_71 + 192] == mem[_71 + 223 len 1]
        require mem[_71 + 224] == mem[_71 + 255 len 1]
        require mem[_71 + 256] == mem[_71 + 287 len 1]
        require mem[_71 + 288] == mem[_71 + 319 len 1]
        require mem[_71 + 320] == mem[_71 + 351 len 1]
        if mem[_71]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            _84 = mem[64]
            mem[64] = mem[64] + 96
            mem[_84] = uint16(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_84 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_84 + 64] = address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96)
            if address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            uint256(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            if sub_8b8952dd < 1:
                revert with 0, 17
            sub_8b8952dd--
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0x764fa7a0: cd[((32 * idx) + arg1 + 36)], 0, 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _84
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        require ext_code.size(stor1)
        staticcall stor1.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        require mem[_91] == bool(mem[_91])
        require mem[_91 + 32] == mem[_91 + 63 len 1]
        require mem[_91 + 64] == mem[_91 + 95 len 1]
        require mem[_91 + 96] == mem[_91 + 127 len 1]
        require mem[_91 + 128] == mem[_91 + 159 len 1]
        require mem[_91 + 160] == mem[_91 + 191 len 1]
        require mem[_91 + 192] == mem[_91 + 223 len 1]
        require mem[_91 + 224] == mem[_91 + 255 len 1]
        require mem[_91 + 256] == mem[_91 + 287 len 1]
        require mem[_91 + 288] == mem[_91 + 319 len 1]
        _105 = mem[_91 + 320]
        require mem[_91 + 320] == mem[_91 + 351 len 1]
        if 8 < mem[_91 + 351 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_91 + 351 len 1] + 8)
        _106 = sha3(mem[0], 4)
        mem[32] = 5
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 4)
        _109 = mem[64]
        mem[64] = mem[64] + 96
        mem[_109] = uint16(stor[sha3(_106) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_0)
        mem[_109 + 32] = Mask(80, 0, stor[sha3(_106) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_16)
        mem[_109 + 64] = address(stor[sha3(_106) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_96)
        if address(stor[sha3(_106) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_105) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_105) + 8)
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        if uint256(pack[-uint8(_105) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_105) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_105) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_105) + 8 << 248, 4)
        _116 = mem[64]
        mem[64] = mem[64] + 96
        mem[_116] = uint16(pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0)
        mem[_116 + 32] = Mask(80, 0, pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0)
        mem[_116 + 64] = address(pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_105) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_105) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_105) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_105) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor4[-uint8(_105) + 8 << 248][uint256(stor4[-uint8(_105) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_105) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_105) + 8 << 248][uint256(pack[-uint8(_105) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_105) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0x961b2cb5: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _109
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
    stor14 = 0
}

function sub_5b519142(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor14:
        revert with 0, 'No reentrancy'
    stor14 = 1
    if address(cd[4]) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if msg.sender == stor1:
                    require ext_code.size(stor1)
                    staticcall stor1.tokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _400 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    require mem[_400] == bool(mem[_400])
                    require mem[_400 + 32] == mem[_400 + 63 len 1]
                    require mem[_400 + 64] == mem[_400 + 95 len 1]
                    require mem[_400 + 96] == mem[_400 + 127 len 1]
                    require mem[_400 + 128] == mem[_400 + 159 len 1]
                    require mem[_400 + 160] == mem[_400 + 191 len 1]
                    require mem[_400 + 192] == mem[_400 + 223 len 1]
                    require mem[_400 + 224] == mem[_400 + 255 len 1]
                    require mem[_400 + 256] == mem[_400 + 287 len 1]
                    require mem[_400 + 288] == mem[_400 + 319 len 1]
                    require mem[_400 + 320] == mem[_400 + 351 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_400]:
                        if stor0:
                            revert with 0, 'Pauseable: paused'
                        if sub_16110e5c >= 2400000000 * 10^18:
                            _490 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_490] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_490 + 32] = Mask(80, 0, block.timestamp)
                            mem[_490 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
                                revert with 0, 17
                            if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
                                revert with 0, 17
                            sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _542 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_542] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_542 + 32] = Mask(80, 0, block.timestamp)
                            mem[_542 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        if sub_8b8952dd > -2:
                            revert with 0, 17
                        sub_8b8952dd++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_511] == bool(mem[_511])
                        require mem[_511 + 32] == mem[_511 + 63 len 1]
                        require mem[_511 + 64] == mem[_511 + 95 len 1]
                        require mem[_511 + 96] == mem[_511 + 127 len 1]
                        require mem[_511 + 128] == mem[_511 + 159 len 1]
                        require mem[_511 + 160] == mem[_511 + 191 len 1]
                        require mem[_511 + 192] == mem[_511 + 223 len 1]
                        require mem[_511 + 224] == mem[_511 + 255 len 1]
                        require mem[_511 + 256] == mem[_511 + 287 len 1]
                        require mem[_511 + 288] == mem[_511 + 319 len 1]
                        _625 = mem[_511 + 320]
                        require mem[_511 + 320] == mem[_511 + 351 len 1]
                        if 8 < mem[_511 + 351 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_511 + 351 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_511 + 351 len 1] + 8)
                        mem[0] = uint8(-mem[_511 + 351 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                        mem[0] = uint8(-uint8(_625) + 8)
                        mem[32] = 4
                        _661 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_661] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_661 + 32] = Mask(80, 0, stor8)
                        mem[_661 + 64] = address(cd[4])
                        uint256(pack[-uint8(_625) + 8 << 248].field_0)++
                        mem[0] = sha3(-uint8(_625) + 8 << 248, 4)
                        uint16(pack[-uint8(_625) + 8 << 248][uint256(pack[-uint8(_625) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, pack[-uint8(_625) + 8 << 248][uint256(pack[-uint8(_625) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, pack[-uint8(_625) + 8 << 248][uint256(pack[-uint8(_625) + 8 << 248].field_0)].field_16) = 0
                        address(pack[-uint8(_625) + 8 << 248][uint256(pack[-uint8(_625) + 8 << 248].field_0)].field_96) = address(cd[4])
                        _666 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_666] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_666 + 32] = Mask(80, 0, stor8)
                        mem[_666 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_ba40d7cc)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_ba40d7cc));
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.0x6352211e with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _397 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_397] == mem[_397 + 12 len 20]
                    if mem[_397 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.tokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    require mem[_445] == bool(mem[_445])
                    require mem[_445 + 32] == mem[_445 + 63 len 1]
                    require mem[_445 + 64] == mem[_445 + 95 len 1]
                    require mem[_445 + 96] == mem[_445 + 127 len 1]
                    require mem[_445 + 128] == mem[_445 + 159 len 1]
                    require mem[_445 + 160] == mem[_445 + 191 len 1]
                    require mem[_445 + 192] == mem[_445 + 223 len 1]
                    require mem[_445 + 224] == mem[_445 + 255 len 1]
                    require mem[_445 + 256] == mem[_445 + 287 len 1]
                    require mem[_445 + 288] == mem[_445 + 319 len 1]
                    require mem[_445 + 320] == mem[_445 + 351 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_445]:
                        if stor0:
                            revert with 0, 'Pauseable: paused'
                        if sub_16110e5c >= 2400000000 * 10^18:
                            _578 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_578] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_578 + 32] = Mask(80, 0, block.timestamp)
                            mem[_578 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
                                revert with 0, 17
                            if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
                                revert with 0, 17
                            sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _632 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_632] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_632 + 32] = Mask(80, 0, block.timestamp)
                            mem[_632 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        if sub_8b8952dd > -2:
                            revert with 0, 17
                        sub_8b8952dd++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _598 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_598] == bool(mem[_598])
                        require mem[_598 + 32] == mem[_598 + 63 len 1]
                        require mem[_598 + 64] == mem[_598 + 95 len 1]
                        require mem[_598 + 96] == mem[_598 + 127 len 1]
                        require mem[_598 + 128] == mem[_598 + 159 len 1]
                        require mem[_598 + 160] == mem[_598 + 191 len 1]
                        require mem[_598 + 192] == mem[_598 + 223 len 1]
                        require mem[_598 + 224] == mem[_598 + 255 len 1]
                        require mem[_598 + 256] == mem[_598 + 287 len 1]
                        require mem[_598 + 288] == mem[_598 + 319 len 1]
                        _715 = mem[_598 + 320]
                        require mem[_598 + 320] == mem[_598 + 351 len 1]
                        if 8 < mem[_598 + 351 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_598 + 351 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_598 + 351 len 1] + 8)
                        mem[0] = uint8(-mem[_598 + 351 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                        mem[0] = uint8(-uint8(_715) + 8)
                        mem[32] = 4
                        _721 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_721] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_721 + 32] = Mask(80, 0, stor8)
                        mem[_721 + 64] = address(cd[4])
                        uint256(pack[-uint8(_715) + 8 << 248].field_0)++
                        mem[0] = sha3(-uint8(_715) + 8 << 248, 4)
                        uint16(pack[-uint8(_715) + 8 << 248][uint256(pack[-uint8(_715) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, pack[-uint8(_715) + 8 << 248][uint256(pack[-uint8(_715) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, pack[-uint8(_715) + 8 << 248][uint256(pack[-uint8(_715) + 8 << 248].field_0)].field_16) = 0
                        address(pack[-uint8(_715) + 8 << 248][uint256(pack[-uint8(_715) + 8 << 248].field_0)].field_96) = address(cd[4])
                        _726 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_726] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_726 + 32] = Mask(80, 0, stor8)
                        mem[_726 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_ba40d7cc)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_ba40d7cc));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if tx.origin == address(cd[4]):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_401] == bool(mem[_401])
                        require mem[_401 + 32] == mem[_401 + 63 len 1]
                        require mem[_401 + 64] == mem[_401 + 95 len 1]
                        require mem[_401 + 96] == mem[_401 + 127 len 1]
                        require mem[_401 + 128] == mem[_401 + 159 len 1]
                        require mem[_401 + 160] == mem[_401 + 191 len 1]
                        require mem[_401 + 192] == mem[_401 + 223 len 1]
                        require mem[_401 + 224] == mem[_401 + 255 len 1]
                        require mem[_401 + 256] == mem[_401 + 287 len 1]
                        require mem[_401 + 288] == mem[_401 + 319 len 1]
                        require mem[_401 + 320] == mem[_401 + 351 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_401]:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_16110e5c >= 2400000000 * 10^18:
                                _497 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_497] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_497 + 32] = Mask(80, 0, block.timestamp)
                                mem[_497 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
                                    revert with 0, 17
                                if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                                sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _548 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_548] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_548 + 32] = Mask(80, 0, block.timestamp)
                                mem[_548 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_8b8952dd > -2:
                                revert with 0, 17
                            sub_8b8952dd++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _512 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            require mem[_512] == bool(mem[_512])
                            require mem[_512 + 32] == mem[_512 + 63 len 1]
                            require mem[_512 + 64] == mem[_512 + 95 len 1]
                            require mem[_512 + 96] == mem[_512 + 127 len 1]
                            require mem[_512 + 128] == mem[_512 + 159 len 1]
                            require mem[_512 + 160] == mem[_512 + 191 len 1]
                            require mem[_512 + 192] == mem[_512 + 223 len 1]
                            require mem[_512 + 224] == mem[_512 + 255 len 1]
                            require mem[_512 + 256] == mem[_512 + 287 len 1]
                            require mem[_512 + 288] == mem[_512 + 319 len 1]
                            _626 = mem[_512 + 320]
                            require mem[_512 + 320] == mem[_512 + 351 len 1]
                            if 8 < mem[_512 + 351 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_512 + 351 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_512 + 351 len 1] + 8)
                            mem[0] = uint8(-mem[_512 + 351 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_626) + 8)
                            mem[32] = 4
                            _676 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_676] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_676 + 32] = Mask(80, 0, stor8)
                            mem[_676 + 64] = address(cd[4])
                            uint256(pack[-uint8(_626) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_626) + 8 << 248, 4)
                            uint16(pack[-uint8(_626) + 8 << 248][uint256(pack[-uint8(_626) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_626) + 8 << 248][uint256(pack[-uint8(_626) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_626) + 8 << 248][uint256(pack[-uint8(_626) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_626) + 8 << 248][uint256(pack[-uint8(_626) + 8 << 248].field_0)].field_96) = address(cd[4])
                            _681 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_681] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_681 + 32] = Mask(80, 0, stor8)
                            mem[_681 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_ba40d7cc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_ba40d7cc));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _398 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_398] == mem[_398 + 12 len 20]
                        if mem[_398 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _446 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_446] == bool(mem[_446])
                        require mem[_446 + 32] == mem[_446 + 63 len 1]
                        require mem[_446 + 64] == mem[_446 + 95 len 1]
                        require mem[_446 + 96] == mem[_446 + 127 len 1]
                        require mem[_446 + 128] == mem[_446 + 159 len 1]
                        require mem[_446 + 160] == mem[_446 + 191 len 1]
                        require mem[_446 + 192] == mem[_446 + 223 len 1]
                        require mem[_446 + 224] == mem[_446 + 255 len 1]
                        require mem[_446 + 256] == mem[_446 + 287 len 1]
                        require mem[_446 + 288] == mem[_446 + 319 len 1]
                        require mem[_446 + 320] == mem[_446 + 351 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_446]:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_16110e5c >= 2400000000 * 10^18:
                                _585 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_585] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_585 + 32] = Mask(80, 0, block.timestamp)
                                mem[_585 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
                                    revert with 0, 17
                                if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                                sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _638 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_638] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_638 + 32] = Mask(80, 0, block.timestamp)
                                mem[_638 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_8b8952dd > -2:
                                revert with 0, 17
                            sub_8b8952dd++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            require mem[_599] == bool(mem[_599])
                            require mem[_599 + 32] == mem[_599 + 63 len 1]
                            require mem[_599 + 64] == mem[_599 + 95 len 1]
                            require mem[_599 + 96] == mem[_599 + 127 len 1]
                            require mem[_599 + 128] == mem[_599 + 159 len 1]
                            require mem[_599 + 160] == mem[_599 + 191 len 1]
                            require mem[_599 + 192] == mem[_599 + 223 len 1]
                            require mem[_599 + 224] == mem[_599 + 255 len 1]
                            require mem[_599 + 256] == mem[_599 + 287 len 1]
                            require mem[_599 + 288] == mem[_599 + 319 len 1]
                            _716 = mem[_599 + 320]
                            require mem[_599 + 320] == mem[_599 + 351 len 1]
                            if 8 < mem[_599 + 351 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_599 + 351 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_599 + 351 len 1] + 8)
                            mem[0] = uint8(-mem[_599 + 351 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_716) + 8)
                            mem[32] = 4
                            _735 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_735] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_735 + 32] = Mask(80, 0, stor8)
                            mem[_735 + 64] = address(cd[4])
                            uint256(pack[-uint8(_716) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_716) + 8 << 248, 4)
                            uint16(pack[-uint8(_716) + 8 << 248][uint256(pack[-uint8(_716) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_716) + 8 << 248][uint256(pack[-uint8(_716) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_716) + 8 << 248][uint256(pack[-uint8(_716) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_716) + 8 << 248][uint256(pack[-uint8(_716) + 8 << 248].field_0)].field_96) = address(cd[4])
                            _740 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_740] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_740 + 32] = Mask(80, 0, stor8)
                            mem[_740 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_ba40d7cc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_ba40d7cc));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor1 != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_402] == bool(mem[_402])
                        require mem[_402 + 32] == mem[_402 + 63 len 1]
                        require mem[_402 + 64] == mem[_402 + 95 len 1]
                        require mem[_402 + 96] == mem[_402 + 127 len 1]
                        require mem[_402 + 128] == mem[_402 + 159 len 1]
                        require mem[_402 + 160] == mem[_402 + 191 len 1]
                        require mem[_402 + 192] == mem[_402 + 223 len 1]
                        require mem[_402 + 224] == mem[_402 + 255 len 1]
                        require mem[_402 + 256] == mem[_402 + 287 len 1]
                        require mem[_402 + 288] == mem[_402 + 319 len 1]
                        require mem[_402 + 320] == mem[_402 + 351 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_402]:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_16110e5c >= 2400000000 * 10^18:
                                _504 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_504] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_504 + 32] = Mask(80, 0, block.timestamp)
                                mem[_504 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
                                    revert with 0, 17
                                if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                                sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _554 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_554] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_554 + 32] = Mask(80, 0, block.timestamp)
                                mem[_554 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_8b8952dd > -2:
                                revert with 0, 17
                            sub_8b8952dd++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            require mem[_513] == bool(mem[_513])
                            require mem[_513 + 32] == mem[_513 + 63 len 1]
                            require mem[_513 + 64] == mem[_513 + 95 len 1]
                            require mem[_513 + 96] == mem[_513 + 127 len 1]
                            require mem[_513 + 128] == mem[_513 + 159 len 1]
                            require mem[_513 + 160] == mem[_513 + 191 len 1]
                            require mem[_513 + 192] == mem[_513 + 223 len 1]
                            require mem[_513 + 224] == mem[_513 + 255 len 1]
                            require mem[_513 + 256] == mem[_513 + 287 len 1]
                            require mem[_513 + 288] == mem[_513 + 319 len 1]
                            _627 = mem[_513 + 320]
                            require mem[_513 + 320] == mem[_513 + 351 len 1]
                            if 8 < mem[_513 + 351 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_513 + 351 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_513 + 351 len 1] + 8)
                            mem[0] = uint8(-mem[_513 + 351 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_627) + 8)
                            mem[32] = 4
                            _691 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_691] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_691 + 32] = Mask(80, 0, stor8)
                            mem[_691 + 64] = address(cd[4])
                            uint256(pack[-uint8(_627) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_627) + 8 << 248, 4)
                            uint16(pack[-uint8(_627) + 8 << 248][uint256(pack[-uint8(_627) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_627) + 8 << 248][uint256(pack[-uint8(_627) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_627) + 8 << 248][uint256(pack[-uint8(_627) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_627) + 8 << 248][uint256(pack[-uint8(_627) + 8 << 248].field_0)].field_96) = address(cd[4])
                            _696 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_696] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_696 + 32] = Mask(80, 0, stor8)
                            mem[_696 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_ba40d7cc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_ba40d7cc));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _399 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_399] == mem[_399 + 12 len 20]
                        if mem[_399 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _447 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_447] == bool(mem[_447])
                        require mem[_447 + 32] == mem[_447 + 63 len 1]
                        require mem[_447 + 64] == mem[_447 + 95 len 1]
                        require mem[_447 + 96] == mem[_447 + 127 len 1]
                        require mem[_447 + 128] == mem[_447 + 159 len 1]
                        require mem[_447 + 160] == mem[_447 + 191 len 1]
                        require mem[_447 + 192] == mem[_447 + 223 len 1]
                        require mem[_447 + 224] == mem[_447 + 255 len 1]
                        require mem[_447 + 256] == mem[_447 + 287 len 1]
                        require mem[_447 + 288] == mem[_447 + 319 len 1]
                        require mem[_447 + 320] == mem[_447 + 351 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_447]:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_16110e5c >= 2400000000 * 10^18:
                                _592 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_592] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_592 + 32] = Mask(80, 0, block.timestamp)
                                mem[_592 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
                                    revert with 0, 17
                                if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                                sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _644 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_644] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_644 + 32] = Mask(80, 0, block.timestamp)
                                mem[_644 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_8b8952dd > -2:
                                revert with 0, 17
                            sub_8b8952dd++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 352
                            require mem[_600] == bool(mem[_600])
                            require mem[_600 + 32] == mem[_600 + 63 len 1]
                            require mem[_600 + 64] == mem[_600 + 95 len 1]
                            require mem[_600 + 96] == mem[_600 + 127 len 1]
                            require mem[_600 + 128] == mem[_600 + 159 len 1]
                            require mem[_600 + 160] == mem[_600 + 191 len 1]
                            require mem[_600 + 192] == mem[_600 + 223 len 1]
                            require mem[_600 + 224] == mem[_600 + 255 len 1]
                            require mem[_600 + 256] == mem[_600 + 287 len 1]
                            require mem[_600 + 288] == mem[_600 + 319 len 1]
                            _717 = mem[_600 + 320]
                            require mem[_600 + 320] == mem[_600 + 351 len 1]
                            if 8 < mem[_600 + 351 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_600 + 351 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_600 + 351 len 1] + 8)
                            mem[0] = uint8(-mem[_600 + 351 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_717) + 8)
                            mem[32] = 4
                            _749 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_749] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_749 + 32] = Mask(80, 0, stor8)
                            mem[_749 + 64] = address(cd[4])
                            uint256(pack[-uint8(_717) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_717) + 8 << 248, 4)
                            uint16(pack[-uint8(_717) + 8 << 248][uint256(pack[-uint8(_717) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_717) + 8 << 248][uint256(pack[-uint8(_717) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_717) + 8 << 248][uint256(pack[-uint8(_717) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_717) + 8 << 248][uint256(pack[-uint8(_717) + 8 << 248].field_0)].field_96) = address(cd[4])
                            _754 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_754] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_754 + 32] = Mask(80, 0, stor8)
                            mem[_754 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_ba40d7cc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_ba40d7cc));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    stor14 = 0
}

function sub_b40b03d2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if stor14:
        revert with 0, 'No reentrancy'
    stor14 = 1
    if stor0:
        revert with 0, 'Pauseable: paused'
    if sub_16110e5c >= 2400000000 * 10^18:
        if msg.sender != tx.origin:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            require mem[_669] == bool(mem[_669])
            require mem[_669 + 32] == mem[_669 + 63 len 1]
            require mem[_669 + 64] == mem[_669 + 95 len 1]
            require mem[_669 + 96] == mem[_669 + 127 len 1]
            require mem[_669 + 128] == mem[_669 + 159 len 1]
            require mem[_669 + 160] == mem[_669 + 191 len 1]
            require mem[_669 + 192] == mem[_669 + 223 len 1]
            require mem[_669 + 224] == mem[_669 + 255 len 1]
            require mem[_669 + 256] == mem[_669 + 287 len 1]
            require mem[_669 + 288] == mem[_669 + 319 len 1]
            require mem[_669 + 320] == mem[_669 + 351 len 1]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_669]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _696 = mem[64]
                mem[64] = mem[64] + 96
                mem[_696] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_696 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_696 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_16110e5c < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _950 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_950] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_950 + 32] = Mask(80, 0, block.timestamp)
                                mem[_950 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_ba40d7cc) > !((20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_ba40d7cc) += (20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _1076 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1076] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1076 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1076 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _769 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_769] == mem[_769 + 12 len 20]
                            require ext_code.size(mem[_769 + 12 len 20])
                            staticcall mem[_769 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _837 = mem[_827]
                            if block.number < 1:
                                revert with 0, 17
                            _883 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_8b8952dd
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _884 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_884 + 32 len mem[_884]]) xor _837) != 1:
                                mem[_883 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_883 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_883 + 276] = (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                mem[_883 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += ((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_883 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_883 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_883 + 276] = 0
                                mem[_883 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _835 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_835] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_835 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_835 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _923 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_923] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_923 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_923 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _736 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_736] == mem[_736 + 12 len 20]
                                require ext_code.size(mem[_736 + 12 len 20])
                                staticcall mem[_736 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _775 = mem[_768]
                                if block.number < 1:
                                    revert with 0, 17
                                _802 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _803 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_803 + 32 len mem[_803]]) xor _775):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_802 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_802 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_802 + 276] = 0
                                mem[_802 + 308] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _969 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_969] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_969 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_969 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !((20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += (20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _1093 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1093] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1093 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1093 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _773 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_773] == mem[_773 + 12 len 20]
                                require ext_code.size(mem[_773 + 12 len 20])
                                staticcall mem[_773 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _853 = mem[_832]
                                if block.number < 1:
                                    revert with 0, 17
                                _900 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _901 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_901 + 32 len mem[_901]]) xor _853) != 1:
                                    mem[_900 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_900 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_900 + 276] = (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    mem[_900 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += ((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_900 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_900 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_900 + 276] = 0
                                    mem[_900 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                else:
                    if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S FIAT'
                    if sub_16110e5c < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _1043 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1043] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1043 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1043 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_ba40d7cc) > !((20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_ba40d7cc) += (20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _1157 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1157] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1157 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1157 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_796] == mem[_796 + 12 len 20]
                            require ext_code.size(mem[_796 + 12 len 20])
                            staticcall mem[_796 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _872 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _889 = mem[_872]
                            if block.number < 1:
                                revert with 0, 17
                            _954 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_8b8952dd
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _955 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_955 + 32 len mem[_955]]) xor _889) != 1:
                                mem[_954 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_954 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_954 + 276] = (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                mem[_954 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += ((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_954 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_954 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_954 + 276] = 0
                                mem[_954 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _887 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_887] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_887 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_887 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _999 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_999] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_999 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_999 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _750 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_750] == mem[_750 + 12 len 20]
                                require ext_code.size(mem[_750 + 12 len 20])
                                staticcall mem[_750 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _808 = mem[_795]
                                if block.number < 1:
                                    revert with 0, 17
                                _838 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _839 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_839 + 32 len mem[_839]]) xor _808):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_838 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_838 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_838 + 276] = 0
                                mem[_838 + 308] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _1056 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1056] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1056 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1056 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !((20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += (20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _1165 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1165] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1165 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1165 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _799 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_799] == mem[_799 + 12 len 20]
                                require ext_code.size(mem[_799 + 12 len 20])
                                staticcall mem[_799 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _879 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _906 = mem[_879]
                                if block.number < 1:
                                    revert with 0, 17
                                _975 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _976 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_976 + 32 len mem[_976]]) xor _906) != 1:
                                    mem[_975 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_975 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_975 + 276] = (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    mem[_975 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += ((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_975 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_975 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_975 + 276] = 0
                                    mem[_975 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_703] == mem[_703 + 12 len 20]
                if mem[_703 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.tokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _741 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                require mem[_741] == bool(mem[_741])
                require mem[_741 + 32] == mem[_741 + 63 len 1]
                require mem[_741 + 64] == mem[_741 + 95 len 1]
                require mem[_741 + 96] == mem[_741 + 127 len 1]
                require mem[_741 + 128] == mem[_741 + 159 len 1]
                require mem[_741 + 160] == mem[_741 + 191 len 1]
                require mem[_741 + 192] == mem[_741 + 223 len 1]
                require mem[_741 + 224] == mem[_741 + 255 len 1]
                require mem[_741 + 256] == mem[_741 + 287 len 1]
                require mem[_741 + 288] == mem[_741 + 319 len 1]
                _1135 = mem[_741 + 320]
                require mem[_741 + 320] == mem[_741 + 351 len 1]
                if 8 < mem[_741 + 351 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_741 + 351 len 1] + 8)
                _1223 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1236 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1236] = uint16(stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
                mem[_1236 + 32] = Mask(80, 0, stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
                mem[_1236 + 64] = address(stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
                if address(stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_ba40d7cc) < Mask(80, 0, stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1135) + 8) and uint256(sub_ba40d7cc) - Mask(80, 0, stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1135) + 8):
                    revert with 0, 17
                if not cd[36]:
                    _1265 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1265] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1265 + 32] = Mask(80, 0, stor8)
                    mem[_1265 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1135) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1135) + 8 << 248, 4)
                    uint16(pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1135) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1135) + 8)
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1135) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1135) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1135) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1135) + 8 << 248, 4)
                    _1290 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1290] = uint16(pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0)
                    mem[_1290 + 32] = Mask(80, 0, pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0)
                    mem[_1290 + 64] = address(pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1135) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1135) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1135) + 8 << 248][uint256(stor4[-uint8(_1135) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_1135) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1135) + 8 << 248][uint256(pack[-uint8(_1135) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1135) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_ba40d7cc) * uint8(-uint8(_1135) + 8)) - (Mask(80, 0, stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_1135) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x961b2cb5: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_ba40d7cc) * uint8(-uint8(_1135) + 8)) - (Mask(80, 0, stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_1135) + 8)), bool(cd[36])
                if 0 > !((uint256(sub_ba40d7cc) * uint8(-uint8(_1135) + 8)) - (Mask(80, 0, stor[sha3(_1223) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_1135) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and sub_8b8952dd > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd) and sub_b01bd7bf > -1 / (block.timestamp * sub_8b8952dd) - (lastClaimTimestamp * sub_8b8952dd):
            revert with 0, 17
        if sub_16110e5c > !((block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600):
            revert with 0, 17
        sub_16110e5c += (block.timestamp * sub_8b8952dd * sub_b01bd7bf) - (lastClaimTimestamp * sub_8b8952dd * sub_b01bd7bf) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        if msg.sender != tx.origin:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            require mem[_670] == bool(mem[_670])
            require mem[_670 + 32] == mem[_670 + 63 len 1]
            require mem[_670 + 64] == mem[_670 + 95 len 1]
            require mem[_670 + 96] == mem[_670 + 127 len 1]
            require mem[_670 + 128] == mem[_670 + 159 len 1]
            require mem[_670 + 160] == mem[_670 + 191 len 1]
            require mem[_670 + 192] == mem[_670 + 223 len 1]
            require mem[_670 + 224] == mem[_670 + 255 len 1]
            require mem[_670 + 256] == mem[_670 + 287 len 1]
            require mem[_670 + 288] == mem[_670 + 319 len 1]
            require mem[_670 + 320] == mem[_670 + 351 len 1]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_670]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _700 = mem[64]
                mem[64] = mem[64] + 96
                mem[_700] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_700 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_700 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_16110e5c < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _961 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_961] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_961 + 32] = Mask(80, 0, block.timestamp)
                                mem[_961 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_ba40d7cc) > !((20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_ba40d7cc) += (20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _1086 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1086] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1086 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1086 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _772 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_772] == mem[_772 + 12 len 20]
                            require ext_code.size(mem[_772 + 12 len 20])
                            staticcall mem[_772 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _846 = mem[_830]
                            if block.number < 1:
                                revert with 0, 17
                            _892 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_8b8952dd
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _893 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_893 + 32 len mem[_893]]) xor _846) != 1:
                                mem[_892 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_892 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_892 + 276] = (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                mem[_892 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += ((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_892 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_892 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_892 + 276] = 0
                                mem[_892 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _844 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_844] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_844 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_844 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _928 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_928] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_928 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_928 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_740] == mem[_740 + 12 len 20]
                                require ext_code.size(mem[_740 + 12 len 20])
                                staticcall mem[_740 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _771 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _781 = mem[_771]
                                if block.number < 1:
                                    revert with 0, 17
                                _811 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _812 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_812 + 32 len mem[_812]]) xor _781):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_811 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_811 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_811 + 276] = 0
                                mem[_811 + 308] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _981 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_981] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_981 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_981 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !((20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += (20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _1105 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1105] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1105 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1105 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_774] == mem[_774 + 12 len 20]
                                require ext_code.size(mem[_774 + 12 len 20])
                                staticcall mem[_774 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _834 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _860 = mem[_834]
                                if block.number < 1:
                                    revert with 0, 17
                                _912 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _913 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_913 + 32 len mem[_913]]) xor _860) != 1:
                                    mem[_912 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_912 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_912 + 276] = (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    mem[_912 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += ((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_912 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_912 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_912 + 276] = 0
                                    mem[_912 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                else:
                    if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S FIAT'
                    if sub_16110e5c < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _1049 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1049] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1049 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1049 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_ba40d7cc) > !((20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_ba40d7cc) += (20 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                _1160 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1160] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1160 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1160 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _798 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_798] == mem[_798 + 12 len 20]
                            require ext_code.size(mem[_798 + 12 len 20])
                            staticcall mem[_798 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _878 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _898 = mem[_878]
                            if block.number < 1:
                                revert with 0, 17
                            _965 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_8b8952dd
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _966 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_966 + 32 len mem[_966]]) xor _898) != 1:
                                mem[_965 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_965 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_965 + 276] = (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                mem[_965 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += ((block.timestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_965 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_965 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_965 + 276] = 0
                                mem[_965 + 308] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _896 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_896] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_896 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_896 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1008 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1008] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1008 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1008 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _752 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_752] == mem[_752 + 12 len 20]
                                require ext_code.size(mem[_752 + 12 len 20])
                                staticcall mem[_752 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _817 = mem[_797]
                                if block.number < 1:
                                    revert with 0, 17
                                _847 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _848 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_848 + 32 len mem[_848]]) xor _817):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_847 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                if sub_8b8952dd < 1:
                                    revert with 0, 17
                                sub_8b8952dd--
                                mem[_847 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_847 + 276] = 0
                                mem[_847 + 308] = bool(cd[36])
                            emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_b01bd7bf > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _1067 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1067] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1067 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1067 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_ba40d7cc) > !((20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_ba40d7cc) += (20 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600:
                                        revert with 0, 17
                                    _1175 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1175] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1175 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1175 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _800 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_800] == mem[_800 + 12 len 20]
                                require ext_code.size(mem[_800 + 12 len 20])
                                staticcall mem[_800 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _880 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _918 = mem[_880]
                                if block.number < 1:
                                    revert with 0, 17
                                _987 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_8b8952dd
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _988 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_988 + 32 len mem[_988]]) xor _918) != 1:
                                    mem[_987 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_987 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_987 + 276] = (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    mem[_987 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_ba40d7cc) > !(((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_ba40d7cc) += ((lastClaimTimestamp * sub_b01bd7bf) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_b01bd7bf) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_987 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    if sub_8b8952dd < 1:
                                        revert with 0, 17
                                    sub_8b8952dd--
                                    mem[_987 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_987 + 276] = 0
                                    mem[_987 + 308] = bool(cd[36])
                                    emit 0x764fa7a0: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _706 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_706] == mem[_706 + 12 len 20]
                if mem[_706 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.tokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                require mem[_745] == bool(mem[_745])
                require mem[_745 + 32] == mem[_745 + 63 len 1]
                require mem[_745 + 64] == mem[_745 + 95 len 1]
                require mem[_745 + 96] == mem[_745 + 127 len 1]
                require mem[_745 + 128] == mem[_745 + 159 len 1]
                require mem[_745 + 160] == mem[_745 + 191 len 1]
                require mem[_745 + 192] == mem[_745 + 223 len 1]
                require mem[_745 + 224] == mem[_745 + 255 len 1]
                require mem[_745 + 256] == mem[_745 + 287 len 1]
                require mem[_745 + 288] == mem[_745 + 319 len 1]
                _1145 = mem[_745 + 320]
                require mem[_745 + 320] == mem[_745 + 351 len 1]
                if 8 < mem[_745 + 351 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_745 + 351 len 1] + 8)
                _1229 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1241 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1241] = uint16(stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
                mem[_1241 + 32] = Mask(80, 0, stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
                mem[_1241 + 64] = address(stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
                if address(stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_ba40d7cc) < Mask(80, 0, stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1145) + 8) and uint256(sub_ba40d7cc) - Mask(80, 0, stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1145) + 8):
                    revert with 0, 17
                if not cd[36]:
                    _1266 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1266] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1266 + 32] = Mask(80, 0, stor8)
                    mem[_1266 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1145) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1145) + 8 << 248, 4)
                    uint16(pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1145) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1145) + 8)
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1145) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1145) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1145) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1145) + 8 << 248, 4)
                    _1294 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1294] = uint16(pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0)
                    mem[_1294 + 32] = Mask(80, 0, pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0)
                    mem[_1294 + 64] = address(pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_1145) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1145) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1145) + 8 << 248][uint256(stor4[-uint8(_1145) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_1145) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1145) + 8 << 248][uint256(pack[-uint8(_1145) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1145) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_ba40d7cc) * uint8(-uint8(_1145) + 8)) - (Mask(80, 0, stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_1145) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x961b2cb5: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_ba40d7cc) * uint8(-uint8(_1145) + 8)) - (Mask(80, 0, stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_1145) + 8)), bool(cd[36])
                if 0 > !((uint256(sub_ba40d7cc) * uint8(-uint8(_1145) + 8)) - (Mask(80, 0, stor[sha3(_1229) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_1145) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor14 = 0
}



}
