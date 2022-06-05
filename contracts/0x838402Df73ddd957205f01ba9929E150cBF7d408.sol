contract main {




// =====================  Runtime code  =====================


const sub_40d6872c(?) = 20

const sub_cbc09fc6(?) = 10000 * 10^18

const sub_dda4c63d(?) = (500000 * 10^18 * 3600)

const MAX_ALPHA = 8

const MINIMUM_TO_EXIT = (48 * 24 * 3600)


uint8 stor0; offset 160
address owner;
address stor1;
mapping of struct barn;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor8;
uint256 sub_267ed2b0;
uint256 sub_608f4f09;
uint256 sub_788df81b;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;

function sub_267ed2b0(?) payable {
    return uint256(sub_267ed2b0)
}

function barn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
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

function sub_608f4f09(?) payable {
    return sub_608f4f09
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function sub_788df81b(?) payable {
    return sub_788df81b
}

function owner() payable {
    return owner
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
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
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
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

function sub_a487ce17(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xe05c57bf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    return bool(ext_call.return_data[0])
}

function sub_1aace9b7(?) payable {
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

function calculateRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x94e56847 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    if ext_call.return_data[0]:
        if sub_608f4f09 < 500000 * 10^18 * 3600:
            if block.timestamp < Mask(80, 0, barn[arg1].field_16):
                revert with 0, 17
            if block.timestamp - Mask(80, 0, barn[arg1].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, barn[arg1].field_16):
                revert with 0, 17
            return ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[arg1].field_16)) / 24 * 3600)
        if Mask(80, 0, barn[arg1].field_16) > lastClaimTimestamp:
            return 0
        if lastClaimTimestamp < Mask(80, 0, barn[arg1].field_16):
            revert with 0, 17
        if lastClaimTimestamp - Mask(80, 0, barn[arg1].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, barn[arg1].field_16):
            revert with 0, 17
        return ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[arg1].field_16)) / 24 * 3600)
    require ext_code.size(stor1)
    staticcall stor1.0xe05c57bf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    if 8 < ext_call.return_data[223 len 1]:
        revert with 0, 17
    if uint256(sub_267ed2b0) < Mask(80, 0, barn[arg1].field_16):
        revert with 0, 17
    if uint8(-ext_call.return_data[223 len 1] + 8) and uint256(sub_267ed2b0) - Mask(80, 0, barn[arg1].field_16) > -1 / uint8(-ext_call.return_data[223 len 1] + 8):
        revert with 0, 17
    return ((uint256(sub_267ed2b0) * uint8(-ext_call.return_data[223 len 1] + 8)) - (Mask(80, 0, barn[arg1].field_16) * uint8(-ext_call.return_data[223 len 1] + 8)))
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not rescueEnabled:
        revert with 0, 'RESCUE DISABLED'
    mem[floor32(arg1.length) + 97] = 0
    mem[floor32(arg1.length) + 129] = 0
    mem[floor32(arg1.length) + 161] = 0
    mem[64] = floor32(arg1.length) + 289
    mem[floor32(arg1.length) + 193] = 0
    mem[floor32(arg1.length) + 225] = 0
    mem[floor32(arg1.length) + 257] = 0
    idx = 0
    s = floor32(arg1.length) + 97
    s = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _128 = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.0xe05c57bf with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _131 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_131] == bool(mem[_131])
        require mem[_131 + 32] == mem[_131 + 63 len 1]
        require mem[_131 + 64] == mem[_131 + 95 len 1]
        require mem[_131 + 96] == mem[_131 + 127 len 1]
        require mem[_131 + 128] == mem[_131 + 159 len 1]
        require mem[_131 + 160] == mem[_131 + 191 len 1]
        require mem[_131 + 192] == mem[_131 + 223 len 1]
        if mem[_131]:
            mem[0] = _128
            mem[32] = 3
            _140 = mem[64]
            mem[64] = mem[64] + 96
            mem[_140] = uint16(barn[_128].field_0)
            mem[_140 + 32] = Mask(80, 0, barn[_128].field_16)
            mem[_140 + 64] = address(barn[_128].field_96)
            if address(barn[_128].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[mem[64] + 68] = _128
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(stor1)
            call stor1.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _128, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = _128
            mem[32] = 3
            uint256(barn[_128].field_0) = 0
            if sub_788df81b < 1:
                revert with 0, 17
            sub_788df81b--
            mem[mem[64]] = _128
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0xbc7f0bcc: _128, 0, 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _140
            s = _128
            continue 
        require ext_code.size(stor1)
        staticcall stor1.0xe05c57bf with:
                gas gas_remaining wei
               args _128
        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 224
        require mem[_146] == bool(mem[_146])
        require mem[_146 + 32] == mem[_146 + 63 len 1]
        require mem[_146 + 64] == mem[_146 + 95 len 1]
        require mem[_146 + 96] == mem[_146 + 127 len 1]
        require mem[_146 + 128] == mem[_146 + 159 len 1]
        require mem[_146 + 160] == mem[_146 + 191 len 1]
        _158 = mem[_146 + 192]
        require mem[_146 + 192] == mem[_146 + 223 len 1]
        if 8 < mem[_146 + 223 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_146 + 223 len 1] + 8)
        _159 = sha3(mem[0], 4)
        mem[32] = 5
        if packIndices[_128] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 4)
        _162 = mem[64]
        mem[64] = mem[64] + 96
        mem[_162] = uint16(stor[sha3(_159) + stor5[_128]].field_0)
        mem[_162 + 32] = Mask(80, 0, stor[sha3(_159) + stor5[_128]].field_16)
        mem[_162 + 64] = address(stor[sha3(_159) + stor5[_128]].field_96)
        if address(stor[sha3(_159) + stor5[_128]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_158) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_158) + 8)
        mem[mem[64] + 68] = _128
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(stor1)
        call stor1.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _128, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        if uint256(pack[-uint8(_158) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_158) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_158) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_158) + 8 << 248, 4)
        _169 = mem[64]
        mem[64] = mem[64] + 96
        mem[_169] = uint16(pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0)
        mem[_169 + 32] = Mask(80, 0, pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0)
        mem[_169 + 64] = address(pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0)
        if packIndices[_128] >= uint256(pack[-uint8(_158) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_158) + 8 << 248][stor5[_128]].field_0) = uint16(pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_158) + 8 << 248][stor5[_128]].field_16) = Mask(80, 0, pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_158) + 8 << 248][stor5[_128]].field_96) = address(pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor4[-uint8(_158) + 8 << 248][uint256(stor4[-uint8(_158) + 8 << 248].field_0)].field_0)] = packIndices[_128]
        if not uint256(pack[-uint8(_158) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_158) + 8 << 248][uint256(pack[-uint8(_158) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_158) + 8 << 248].field_0)--
        mem[0] = _128
        mem[32] = 5
        packIndices[_128] = 0
        mem[mem[64]] = _128
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0xab26c19b: _128, 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _162
        s = _128
        continue 
}

function addManyToBarnAndPack(address arg1, uint16[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if floor32(arg2.length) + 97 < 96 or floor32(arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == arg1:
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            if msg.sender == stor1:
                if mem[(32 * idx) + 158 len 2] != 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(stor1)
                    staticcall stor1.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 224
                    require mem[_498] == bool(mem[_498])
                    require mem[_498 + 32] == mem[_498 + 63 len 1]
                    require mem[_498 + 64] == mem[_498 + 95 len 1]
                    require mem[_498 + 96] == mem[_498 + 127 len 1]
                    require mem[_498 + 128] == mem[_498 + 159 len 1]
                    require mem[_498 + 160] == mem[_498 + 191 len 1]
                    require mem[_498 + 192] == mem[_498 + 223 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_498]:
                        _551 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= 500000 * 10^18 * 3600:
                            _563 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_563] = mem[(32 * idx) + 158 len 2]
                            mem[_563 + 32] = Mask(80, 0, block.timestamp)
                            mem[_563 + 64] = arg1
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_788df81b > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b) and 10000 * 10^18 > -1 / (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b):
                                revert with 0, 17
                            if sub_608f4f09 > !((10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600):
                                revert with 0, 17
                            sub_608f4f09 += (10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _624 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_624] = mem[(32 * idx) + 158 len 2]
                            mem[_624 + 32] = Mask(80, 0, block.timestamp)
                            mem[_624 + 64] = arg1
                        mem[0] = uint16(_551)
                        mem[32] = 3
                        uint16(barn[_551 << 240].field_0) = uint16(_551)
                        Mask(80, 0, barn[_551 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_551 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_551)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _551 << 240, block.timestamp);
                    else:
                        _550 = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _562 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 224
                        require mem[_562] == bool(mem[_562])
                        require mem[_562 + 32] == mem[_562 + 63 len 1]
                        require mem[_562 + 64] == mem[_562 + 95 len 1]
                        require mem[_562 + 96] == mem[_562 + 127 len 1]
                        require mem[_562 + 128] == mem[_562 + 159 len 1]
                        require mem[_562 + 160] == mem[_562 + 191 len 1]
                        require mem[_562 + 192] == mem[_562 + 223 len 1]
                        if 8 < mem[_562 + 223 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_562 + 223 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_562 + 223 len 1] + 8)
                        mem[0] = uint8(-mem[_562 + 223 len 1] + 8)
                        _664 = sha3(mem[0], 4)
                        mem[0] = uint16(_550)
                        packIndices[_550 << 240] = uint256(stor[_664].field_0)
                        mem[32] = 4
                        _666 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_666] = uint16(_550)
                        mem[_666 + 32] = Mask(80, 0, stor8)
                        mem[_666 + 64] = arg1
                        uint256(stor[_664].field_0)++
                        mem[0] = _664
                        uint16(stor[uint256(stor[_664].field_0) + sha3(_664)].field_0) = uint16(_550)
                        Mask(80, 0, stor[uint256(stor[_664].field_0) + sha3(_664)].field_0) = Mask(80, 0, stor8)
                        uint16(stor[uint256(stor[_664].field_0) + sha3(_664)].field_80) = 0
                        address(stor[uint256(stor[_664].field_0) + sha3(_664)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_550)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _550 << 240, uint256(sub_267ed2b0));
            else:
                _481 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_481 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_494] == mem[_494 + 12 len 20]
                if mem[_494 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= mem[96]:
                    revert with 0, 50
                _509 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(_509)
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(_509)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (mem[(32 * idx) + 128] << 240)
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _530 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_530] == bool(mem[_530])
                require mem[_530 + 32] == mem[_530 + 63 len 1]
                require mem[_530 + 64] == mem[_530 + 95 len 1]
                require mem[_530 + 96] == mem[_530 + 127 len 1]
                require mem[_530 + 128] == mem[_530 + 159 len 1]
                require mem[_530 + 160] == mem[_530 + 191 len 1]
                require mem[_530 + 192] == mem[_530 + 223 len 1]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_530]:
                    _594 = mem[(32 * idx) + 128]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if sub_608f4f09 >= 500000 * 10^18 * 3600:
                        _607 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_607] = mem[(32 * idx) + 158 len 2]
                        mem[_607 + 32] = Mask(80, 0, block.timestamp)
                        mem[_607 + 64] = arg1
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and sub_788df81b > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b) and 10000 * 10^18 > -1 / (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b):
                            revert with 0, 17
                        if sub_608f4f09 > !((10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600):
                            revert with 0, 17
                        sub_608f4f09 += (10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        _654 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_654] = mem[(32 * idx) + 158 len 2]
                        mem[_654 + 32] = Mask(80, 0, block.timestamp)
                        mem[_654 + 64] = arg1
                    mem[0] = uint16(_594)
                    mem[32] = 3
                    uint16(barn[_594 << 240].field_0) = uint16(_594)
                    Mask(80, 0, barn[_594 << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[_594 << 240].field_96) = arg1
                    if sub_788df81b > -2:
                        revert with 0, 17
                    sub_788df81b++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_594)
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), _594 << 240, block.timestamp);
                else:
                    _593 = mem[(32 * idx) + 128]
                    require ext_code.size(stor1)
                    staticcall stor1.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _606 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 224
                    require mem[_606] == bool(mem[_606])
                    require mem[_606 + 32] == mem[_606 + 63 len 1]
                    require mem[_606 + 64] == mem[_606 + 95 len 1]
                    require mem[_606 + 96] == mem[_606 + 127 len 1]
                    require mem[_606 + 128] == mem[_606 + 159 len 1]
                    require mem[_606 + 160] == mem[_606 + 191 len 1]
                    require mem[_606 + 192] == mem[_606 + 223 len 1]
                    if 8 < mem[_606 + 223 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_606 + 223 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_606 + 223 len 1] + 8)
                    mem[0] = uint8(-mem[_606 + 223 len 1] + 8)
                    _690 = sha3(mem[0], 4)
                    mem[0] = uint16(_593)
                    packIndices[_593 << 240] = uint256(stor[_690].field_0)
                    mem[32] = 4
                    _692 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_692] = uint16(_593)
                    mem[_692 + 32] = Mask(80, 0, stor8)
                    mem[_692 + 64] = arg1
                    uint256(stor[_690].field_0)++
                    mem[0] = _690
                    uint16(stor[uint256(stor[_690].field_0) + sha3(_690)].field_0) = uint16(_593)
                    Mask(80, 0, stor[uint256(stor[_690].field_0) + sha3(_690)].field_0) = Mask(80, 0, stor8)
                    uint16(stor[uint256(stor[_690].field_0) + sha3(_690)].field_80) = 0
                    address(stor[uint256(stor[_690].field_0) + sha3(_690)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_593)
                    mem[mem[64] + 64] = uint256(sub_267ed2b0)
                    emit TokenStaked(address(arg1), _593 << 240, uint256(sub_267ed2b0));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            if msg.sender == stor1:
                if mem[(32 * idx) + 158 len 2] != 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(stor1)
                    staticcall stor1.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 224
                    require mem[_500] == bool(mem[_500])
                    require mem[_500 + 32] == mem[_500 + 63 len 1]
                    require mem[_500 + 64] == mem[_500 + 95 len 1]
                    require mem[_500 + 96] == mem[_500 + 127 len 1]
                    require mem[_500 + 128] == mem[_500 + 159 len 1]
                    require mem[_500 + 160] == mem[_500 + 191 len 1]
                    require mem[_500 + 192] == mem[_500 + 223 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_500]:
                        _553 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= 500000 * 10^18 * 3600:
                            _570 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_570] = mem[(32 * idx) + 158 len 2]
                            mem[_570 + 32] = Mask(80, 0, block.timestamp)
                            mem[_570 + 64] = arg1
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_788df81b > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b) and 10000 * 10^18 > -1 / (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b):
                                revert with 0, 17
                            if sub_608f4f09 > !((10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600):
                                revert with 0, 17
                            sub_608f4f09 += (10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _631 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_631] = mem[(32 * idx) + 158 len 2]
                            mem[_631 + 32] = Mask(80, 0, block.timestamp)
                            mem[_631 + 64] = arg1
                        mem[0] = uint16(_553)
                        mem[32] = 3
                        uint16(barn[_553 << 240].field_0) = uint16(_553)
                        Mask(80, 0, barn[_553 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_553 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_553)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _553 << 240, block.timestamp);
                    else:
                        _552 = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 224
                        require mem[_569] == bool(mem[_569])
                        require mem[_569 + 32] == mem[_569 + 63 len 1]
                        require mem[_569 + 64] == mem[_569 + 95 len 1]
                        require mem[_569 + 96] == mem[_569 + 127 len 1]
                        require mem[_569 + 128] == mem[_569 + 159 len 1]
                        require mem[_569 + 160] == mem[_569 + 191 len 1]
                        require mem[_569 + 192] == mem[_569 + 223 len 1]
                        if 8 < mem[_569 + 223 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_569 + 223 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_569 + 223 len 1] + 8)
                        mem[0] = uint8(-mem[_569 + 223 len 1] + 8)
                        _674 = sha3(mem[0], 4)
                        mem[0] = uint16(_552)
                        packIndices[_552 << 240] = uint256(stor[_674].field_0)
                        mem[32] = 4
                        _676 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_676] = uint16(_552)
                        mem[_676 + 32] = Mask(80, 0, stor8)
                        mem[_676 + 64] = arg1
                        uint256(stor[_674].field_0)++
                        mem[0] = _674
                        uint16(stor[uint256(stor[_674].field_0) + sha3(_674)].field_0) = uint16(_552)
                        Mask(80, 0, stor[uint256(stor[_674].field_0) + sha3(_674)].field_0) = Mask(80, 0, stor8)
                        uint16(stor[uint256(stor[_674].field_0) + sha3(_674)].field_80) = 0
                        address(stor[uint256(stor[_674].field_0) + sha3(_674)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_552)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _552 << 240, uint256(sub_267ed2b0));
            else:
                _484 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_484 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _497 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_497] == mem[_497 + 12 len 20]
                if mem[_497 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= mem[96]:
                    revert with 0, 50
                _514 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(_514)
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(_514)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (mem[(32 * idx) + 128] << 240)
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _531 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_531] == bool(mem[_531])
                require mem[_531 + 32] == mem[_531 + 63 len 1]
                require mem[_531 + 64] == mem[_531 + 95 len 1]
                require mem[_531 + 96] == mem[_531 + 127 len 1]
                require mem[_531 + 128] == mem[_531 + 159 len 1]
                require mem[_531 + 160] == mem[_531 + 191 len 1]
                require mem[_531 + 192] == mem[_531 + 223 len 1]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_531]:
                    _597 = mem[(32 * idx) + 128]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if sub_608f4f09 >= 500000 * 10^18 * 3600:
                        _613 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_613] = mem[(32 * idx) + 158 len 2]
                        mem[_613 + 32] = Mask(80, 0, block.timestamp)
                        mem[_613 + 64] = arg1
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and sub_788df81b > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b) and 10000 * 10^18 > -1 / (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b):
                            revert with 0, 17
                        if sub_608f4f09 > !((10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600):
                            revert with 0, 17
                        sub_608f4f09 += (10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        _659 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_659] = mem[(32 * idx) + 158 len 2]
                        mem[_659 + 32] = Mask(80, 0, block.timestamp)
                        mem[_659 + 64] = arg1
                    mem[0] = uint16(_597)
                    mem[32] = 3
                    uint16(barn[_597 << 240].field_0) = uint16(_597)
                    Mask(80, 0, barn[_597 << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[_597 << 240].field_96) = arg1
                    if sub_788df81b > -2:
                        revert with 0, 17
                    sub_788df81b++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_597)
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), _597 << 240, block.timestamp);
                else:
                    _596 = mem[(32 * idx) + 128]
                    require ext_code.size(stor1)
                    staticcall stor1.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 224
                    require mem[_612] == bool(mem[_612])
                    require mem[_612 + 32] == mem[_612 + 63 len 1]
                    require mem[_612 + 64] == mem[_612 + 95 len 1]
                    require mem[_612 + 96] == mem[_612 + 127 len 1]
                    require mem[_612 + 128] == mem[_612 + 159 len 1]
                    require mem[_612 + 160] == mem[_612 + 191 len 1]
                    require mem[_612 + 192] == mem[_612 + 223 len 1]
                    if 8 < mem[_612 + 223 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_612 + 223 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_612 + 223 len 1] + 8)
                    mem[0] = uint8(-mem[_612 + 223 len 1] + 8)
                    _699 = sha3(mem[0], 4)
                    mem[0] = uint16(_596)
                    packIndices[_596 << 240] = uint256(stor[_699].field_0)
                    mem[32] = 4
                    _701 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_701] = uint16(_596)
                    mem[_701 + 32] = Mask(80, 0, stor8)
                    mem[_701 + 64] = arg1
                    uint256(stor[_699].field_0)++
                    mem[0] = _699
                    uint16(stor[uint256(stor[_699].field_0) + sha3(_699)].field_0) = uint16(_596)
                    Mask(80, 0, stor[uint256(stor[_699].field_0) + sha3(_699)].field_0) = Mask(80, 0, stor8)
                    uint16(stor[uint256(stor[_699].field_0) + sha3(_699)].field_80) = 0
                    address(stor[uint256(stor[_699].field_0) + sha3(_699)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_596)
                    mem[mem[64] + 64] = uint256(sub_267ed2b0)
                    emit TokenStaked(address(arg1), _596 << 240, uint256(sub_267ed2b0));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function claimManyFromBarnAndPack(uint16[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == uint16(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if stor0:
        revert with 0, 'Pausable: paused'
    if sub_608f4f09 >= 500000 * 10^18 * 3600:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0xe05c57bf with:
                    gas gas_remaining wei
                   args (mem[(32 * idx) + 128] << 240)
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_1136] == bool(mem[_1136])
            require mem[_1136 + 32] == mem[_1136 + 63 len 1]
            require mem[_1136 + 64] == mem[_1136 + 95 len 1]
            require mem[_1136 + 96] == mem[_1136 + 127 len 1]
            require mem[_1136 + 128] == mem[_1136 + 159 len 1]
            require mem[_1136 + 160] == mem[_1136 + 191 len 1]
            require mem[_1136 + 192] == mem[_1136 + 223 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_1136]:
                _1157 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 158 len 2]
                mem[32] = 3
                _1162 = sha3(mem[(32 * idx) + 158 len 2], 3)
                _1163 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1163] = uint16(barn[mem[(32 * idx) + 158 len 2]].field_0)
                mem[_1163 + 32] = Mask(80, 0, stor[_1162].field_16)
                mem[_1163 + 64] = address(stor[_1162].field_96)
                if address(stor[_1162].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1162].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1162].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1162].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1433 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1433] = uint16(_1157)
                                mem[_1433 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1433 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1522 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1522] = uint16(_1157)
                                mem[_1522 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1522 + 64] = msg.sender
                            mem[0] = uint16(_1157)
                            mem[32] = 3
                            uint16(barn[_1157 << 240].field_0) = uint16(_1157)
                            Mask(80, 0, barn[_1157 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1157 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1157)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1157 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1234 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1157)
                            _1235 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1235 + 32 len mem[_1235]])) != 1:
                                mem[_1234 + 216] = uint16(_1157)
                                mem[_1234 + 248] = 128
                                mem[_1234 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1157 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint256(barn[_1157 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1234 + 148] = uint16(_1157)
                                mem[_1234 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                mem[_1234 + 212] = arg2
                                emit 0xbc7f0bcc: _1157 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1234 + 216] = uint16(_1157)
                                mem[_1234 + 248] = 128
                                mem[_1234 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1157 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint256(barn[_1157 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1234 + 148] = uint16(_1157)
                                mem[_1234 + 180] = 0
                                mem[_1234 + 212] = arg2
                                emit 0xbc7f0bcc: _1157 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1162].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1319 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1319] = uint16(_1157)
                                    mem[_1319 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1319 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1383 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1383] = uint16(_1157)
                                    mem[_1383 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1383 + 64] = msg.sender
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint16(barn[_1157 << 240].field_0) = uint16(_1157)
                                Mask(80, 0, barn[_1157 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1157 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1157)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1205 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1157)
                                _1206 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1206 + 32 len mem[_1206]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_1205 + 216] = uint16(_1157)
                                mem[_1205 + 248] = 128
                                mem[_1205 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1157 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint256(barn[_1157 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1205 + 148] = uint16(_1157)
                                mem[_1205 + 180] = 0
                                mem[_1205 + 212] = arg2
                            emit 0xbc7f0bcc: _1157 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1162].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1162].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1162].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1442 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1442] = uint16(_1157)
                                    mem[_1442 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1442 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1545 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1545] = uint16(_1157)
                                    mem[_1545 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1545 + 64] = msg.sender
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint16(barn[_1157 << 240].field_0) = uint16(_1157)
                                Mask(80, 0, barn[_1157 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1157 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1157)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1157 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1245 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1157)
                                _1246 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1246 + 32 len mem[_1246]])) != 1:
                                    mem[_1245 + 216] = uint16(_1157)
                                    mem[_1245 + 248] = 128
                                    mem[_1245 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1157 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1157)
                                    mem[32] = 3
                                    uint256(barn[_1157 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1245 + 148] = uint16(_1157)
                                    mem[_1245 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                    mem[_1245 + 212] = arg2
                                    emit 0xbc7f0bcc: _1157 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1245 + 216] = uint16(_1157)
                                    mem[_1245 + 248] = 128
                                    mem[_1245 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1157 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1157)
                                    mem[32] = 3
                                    uint256(barn[_1157 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1245 + 148] = uint16(_1157)
                                    mem[_1245 + 180] = 0
                                    mem[_1245 + 212] = arg2
                                    emit 0xbc7f0bcc: _1157 << 240, 0, arg2
                else:
                    if block.timestamp < Mask(80, 0, stor[_1162].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, stor[_1162].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S GEM'
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1162].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1162].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1162].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1513 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1513] = uint16(_1157)
                                mem[_1513 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1513 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1594 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1594] = uint16(_1157)
                                mem[_1594 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1594 + 64] = msg.sender
                            mem[0] = uint16(_1157)
                            mem[32] = 3
                            uint16(barn[_1157 << 240].field_0) = uint16(_1157)
                            Mask(80, 0, barn[_1157 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1157 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1157)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1157 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1269 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1157)
                            _1270 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1270 + 32 len mem[_1270]])) != 1:
                                mem[_1269 + 216] = uint16(_1157)
                                mem[_1269 + 248] = 128
                                mem[_1269 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1157 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint256(barn[_1157 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1269 + 148] = uint16(_1157)
                                mem[_1269 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                mem[_1269 + 212] = arg2
                                emit 0xbc7f0bcc: _1157 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1269 + 216] = uint16(_1157)
                                mem[_1269 + 248] = 128
                                mem[_1269 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1157 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint256(barn[_1157 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1269 + 148] = uint16(_1157)
                                mem[_1269 + 180] = 0
                                mem[_1269 + 212] = arg2
                                emit 0xbc7f0bcc: _1157 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1162].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1369 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1369] = uint16(_1157)
                                    mem[_1369 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1369 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1451 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1451] = uint16(_1157)
                                    mem[_1451 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1451 + 64] = msg.sender
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint16(barn[_1157 << 240].field_0) = uint16(_1157)
                                Mask(80, 0, barn[_1157 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1157 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1157)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1219 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1157)
                                _1220 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1220 + 32 len mem[_1220]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_1219 + 216] = uint16(_1157)
                                mem[_1219 + 248] = 128
                                mem[_1219 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1157 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint256(barn[_1157 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1219 + 148] = uint16(_1157)
                                mem[_1219 + 180] = 0
                                mem[_1219 + 212] = arg2
                            emit 0xbc7f0bcc: _1157 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1162].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1162].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1162].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1525 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1525] = uint16(_1157)
                                    mem[_1525 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1525 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1600 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1600] = uint16(_1157)
                                    mem[_1600 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1600 + 64] = msg.sender
                                mem[0] = uint16(_1157)
                                mem[32] = 3
                                uint16(barn[_1157 << 240].field_0) = uint16(_1157)
                                Mask(80, 0, barn[_1157 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1157 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1157)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1157 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1281 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1157)
                                _1282 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1282 + 32 len mem[_1282]])) != 1:
                                    mem[_1281 + 216] = uint16(_1157)
                                    mem[_1281 + 248] = 128
                                    mem[_1281 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1157 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1157)
                                    mem[32] = 3
                                    uint256(barn[_1157 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1281 + 148] = uint16(_1157)
                                    mem[_1281 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                    mem[_1281 + 212] = arg2
                                    emit 0xbc7f0bcc: _1157 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1162].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1281 + 216] = uint16(_1157)
                                    mem[_1281 + 248] = 128
                                    mem[_1281 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1157 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1157)
                                    mem[32] = 3
                                    uint256(barn[_1157 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1281 + 148] = uint16(_1157)
                                    mem[_1281 + 180] = 0
                                    mem[_1281 + 212] = arg2
                                    emit 0xbc7f0bcc: _1157 << 240, 0, arg2
            else:
                _1156 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_1156 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1170] == mem[_1170 + 12 len 20]
                if mem[_1170 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (_1156 << 240)
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_1204] == bool(mem[_1204])
                require mem[_1204 + 32] == mem[_1204 + 63 len 1]
                require mem[_1204 + 64] == mem[_1204 + 95 len 1]
                require mem[_1204 + 96] == mem[_1204 + 127 len 1]
                require mem[_1204 + 128] == mem[_1204 + 159 len 1]
                require mem[_1204 + 160] == mem[_1204 + 191 len 1]
                _1362 = mem[_1204 + 192]
                require mem[_1204 + 192] == mem[_1204 + 223 len 1]
                if 8 < mem[_1204 + 223 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1204 + 223 len 1] + 8)
                _1468 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[_1156 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1497 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1497] = uint16(stor[sha3(_1468) + stor5[_1156 << 240]].field_0)
                mem[_1497 + 32] = Mask(80, 0, stor[sha3(_1468) + stor5[_1156 << 240]].field_16)
                mem[_1497 + 64] = address(stor[sha3(_1468) + stor5[_1156 << 240]].field_96)
                if address(stor[sha3(_1468) + stor5[_1156 << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_267ed2b0) < Mask(80, 0, stor[sha3(_1468) + stor5[_1156 << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1362) + 8) and uint256(sub_267ed2b0) - Mask(80, 0, stor[sha3(_1468) + stor5[_1156 << 240]].field_16) > -1 / uint8(-uint8(_1362) + 8):
                    revert with 0, 17
                if not arg2:
                    _1614 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1614] = uint16(_1156)
                    mem[_1614 + 32] = Mask(80, 0, stor8)
                    mem[_1614 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[_1156 << 240] >= uint256(pack[-uint8(_1362) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1362) + 8 << 248, 4)
                    Mask(80, 0, pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_0) = uint16(_1156)
                    Mask(80, 0, pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_16) = 0
                    address(pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1362) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1362) + 8)
                    mem[mem[64] + 68] = uint16(_1156)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1156 << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1362) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1362) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1362) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1362) + 8 << 248, 4)
                    _1655 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1655] = uint16(pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0)
                    mem[_1655 + 32] = Mask(80, 0, pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0)
                    mem[_1655 + 64] = address(pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0)
                    if packIndices[_1156 << 240] >= uint256(pack[-uint8(_1362) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_0) = uint16(pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_16) = Mask(80, 0, pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1362) + 8 << 248][stor5[_1156 << 240]].field_96) = address(pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1362) + 8 << 248][uint256(stor4[-uint8(_1362) + 8 << 248].field_0)].field_0)] = packIndices[_1156 << 240]
                    if not uint256(pack[-uint8(_1362) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1362) + 8 << 248][uint256(pack[-uint8(_1362) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1362) + 8 << 248].field_0)--
                    mem[0] = uint16(_1156)
                    mem[32] = 5
                    packIndices[_1156 << 240] = 0
                mem[mem[64]] = uint16(_1156)
                mem[mem[64] + 32] = (uint256(sub_267ed2b0) * uint8(-uint8(_1362) + 8)) - (Mask(80, 0, stor[sha3(_1468) + stor5[_1156 << 240]].field_16) * uint8(-uint8(_1362) + 8))
                mem[mem[64] + 64] = arg2
                emit 0xab26c19b: _1156 << 240, (uint256(sub_267ed2b0) * uint8(-uint8(_1362) + 8)) - (Mask(80, 0, stor[sha3(_1468) + stor5[_1156 << 240]].field_16) * uint8(-uint8(_1362) + 8)), arg2
                if 0 > !((uint256(sub_267ed2b0) * uint8(-uint8(_1362) + 8)) - (Mask(80, 0, stor[sha3(_1468) + stor5[_1156 << 240]].field_16) * uint8(-uint8(_1362) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and sub_788df81b > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b) and 10000 * 10^18 > -1 / (block.timestamp * sub_788df81b) - (lastClaimTimestamp * sub_788df81b):
            revert with 0, 17
        if sub_608f4f09 > !((10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600):
            revert with 0, 17
        sub_608f4f09 += (10000 * 10^18 * block.timestamp * sub_788df81b) - (10000 * 10^18 * lastClaimTimestamp * sub_788df81b) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor1)
            staticcall stor1.0xe05c57bf with:
                    gas gas_remaining wei
                   args (mem[(32 * idx) + 128] << 240)
            mem[mem[64] len 224] = ext_call.return_data[0 len 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 224
            require mem[_1137] == bool(mem[_1137])
            require mem[_1137 + 32] == mem[_1137 + 63 len 1]
            require mem[_1137 + 64] == mem[_1137 + 95 len 1]
            require mem[_1137 + 96] == mem[_1137 + 127 len 1]
            require mem[_1137 + 128] == mem[_1137 + 159 len 1]
            require mem[_1137 + 160] == mem[_1137 + 191 len 1]
            require mem[_1137 + 192] == mem[_1137 + 223 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_1137]:
                _1159 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 158 len 2]
                mem[32] = 3
                _1166 = sha3(mem[(32 * idx) + 158 len 2], 3)
                _1167 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1167] = uint16(barn[mem[(32 * idx) + 158 len 2]].field_0)
                mem[_1167 + 32] = Mask(80, 0, stor[_1166].field_16)
                mem[_1167 + 64] = address(stor[_1166].field_96)
                if address(stor[_1166].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1166].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1166].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1166].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1438 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1438] = uint16(_1159)
                                mem[_1438 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1438 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1533 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1533] = uint16(_1159)
                                mem[_1533 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1533 + 64] = msg.sender
                            mem[0] = uint16(_1159)
                            mem[32] = 3
                            uint16(barn[_1159 << 240].field_0) = uint16(_1159)
                            Mask(80, 0, barn[_1159 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1159 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1159)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1159 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1239 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1159)
                            _1240 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1240 + 32 len mem[_1240]])) != 1:
                                mem[_1239 + 216] = uint16(_1159)
                                mem[_1239 + 248] = 128
                                mem[_1239 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1159 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint256(barn[_1159 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1239 + 148] = uint16(_1159)
                                mem[_1239 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                mem[_1239 + 212] = arg2
                                emit 0xbc7f0bcc: _1159 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1239 + 216] = uint16(_1159)
                                mem[_1239 + 248] = 128
                                mem[_1239 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1159 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint256(barn[_1159 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1239 + 148] = uint16(_1159)
                                mem[_1239 + 180] = 0
                                mem[_1239 + 212] = arg2
                                emit 0xbc7f0bcc: _1159 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1166].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1328 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1328] = uint16(_1159)
                                    mem[_1328 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1328 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1396 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1396] = uint16(_1159)
                                    mem[_1396 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1396 + 64] = msg.sender
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint16(barn[_1159 << 240].field_0) = uint16(_1159)
                                Mask(80, 0, barn[_1159 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1159 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1159)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1210 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1159)
                                _1211 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1211 + 32 len mem[_1211]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_1210 + 216] = uint16(_1159)
                                mem[_1210 + 248] = 128
                                mem[_1210 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1159 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint256(barn[_1159 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1210 + 148] = uint16(_1159)
                                mem[_1210 + 180] = 0
                                mem[_1210 + 212] = arg2
                            emit 0xbc7f0bcc: _1159 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1166].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1166].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1166].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1455 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1455] = uint16(_1159)
                                    mem[_1455 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1455 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1560 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1560] = uint16(_1159)
                                    mem[_1560 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1560 + 64] = msg.sender
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint16(barn[_1159 << 240].field_0) = uint16(_1159)
                                Mask(80, 0, barn[_1159 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1159 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1159)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1159 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1250 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1159)
                                _1251 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1251 + 32 len mem[_1251]])) != 1:
                                    mem[_1250 + 216] = uint16(_1159)
                                    mem[_1250 + 248] = 128
                                    mem[_1250 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1159 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1159)
                                    mem[32] = 3
                                    uint256(barn[_1159 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1250 + 148] = uint16(_1159)
                                    mem[_1250 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                    mem[_1250 + 212] = arg2
                                    emit 0xbc7f0bcc: _1159 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1250 + 216] = uint16(_1159)
                                    mem[_1250 + 248] = 128
                                    mem[_1250 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1159 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1159)
                                    mem[32] = 3
                                    uint256(barn[_1159 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1250 + 148] = uint16(_1159)
                                    mem[_1250 + 180] = 0
                                    mem[_1250 + 212] = arg2
                                    emit 0xbc7f0bcc: _1159 << 240, 0, arg2
                else:
                    if block.timestamp < Mask(80, 0, stor[_1166].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, stor[_1166].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S GEM'
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1166].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1166].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1166].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1519 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1519] = uint16(_1159)
                                mem[_1519 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1519 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1597 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1597] = uint16(_1159)
                                mem[_1597 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1597 + 64] = msg.sender
                            mem[0] = uint16(_1159)
                            mem[32] = 3
                            uint16(barn[_1159 << 240].field_0) = uint16(_1159)
                            Mask(80, 0, barn[_1159 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1159 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1159)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1159 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1276 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1159)
                            _1277 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1277 + 32 len mem[_1277]])) != 1:
                                mem[_1276 + 216] = uint16(_1159)
                                mem[_1276 + 248] = 128
                                mem[_1276 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1159 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint256(barn[_1159 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1276 + 148] = uint16(_1159)
                                mem[_1276 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                mem[_1276 + 212] = arg2
                                emit 0xbc7f0bcc: _1159 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1276 + 216] = uint16(_1159)
                                mem[_1276 + 248] = 128
                                mem[_1276 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1159 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint256(barn[_1159 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1276 + 148] = uint16(_1159)
                                mem[_1276 + 180] = 0
                                mem[_1276 + 212] = arg2
                                emit 0xbc7f0bcc: _1159 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1166].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1376 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1376] = uint16(_1159)
                                    mem[_1376 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1376 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1464 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1464] = uint16(_1159)
                                    mem[_1464 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1464 + 64] = msg.sender
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint16(barn[_1159 << 240].field_0) = uint16(_1159)
                                Mask(80, 0, barn[_1159 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1159 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1159)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1224 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1159)
                                _1225 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1225 + 32 len mem[_1225]])):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_1224 + 216] = uint16(_1159)
                                mem[_1224 + 248] = 128
                                mem[_1224 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1159 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint256(barn[_1159 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1224 + 148] = uint16(_1159)
                                mem[_1224 + 180] = 0
                                mem[_1224 + 212] = arg2
                            emit 0xbc7f0bcc: _1159 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1166].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1166].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1166].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1536 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1536] = uint16(_1159)
                                    mem[_1536 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1536 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1607 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1607] = uint16(_1159)
                                    mem[_1607 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1607 + 64] = msg.sender
                                mem[0] = uint16(_1159)
                                mem[32] = 3
                                uint16(barn[_1159 << 240].field_0) = uint16(_1159)
                                Mask(80, 0, barn[_1159 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1159 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1159)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1159 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1286 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1159)
                                _1287 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1287 + 32 len mem[_1287]])) != 1:
                                    mem[_1286 + 216] = uint16(_1159)
                                    mem[_1286 + 248] = 128
                                    mem[_1286 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1159 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1159)
                                    mem[32] = 3
                                    uint256(barn[_1159 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1286 + 148] = uint16(_1159)
                                    mem[_1286 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                    mem[_1286 + 212] = arg2
                                    emit 0xbc7f0bcc: _1159 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1166].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1286 + 216] = uint16(_1159)
                                    mem[_1286 + 248] = 128
                                    mem[_1286 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1159 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1159)
                                    mem[32] = 3
                                    uint256(barn[_1159 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1286 + 148] = uint16(_1159)
                                    mem[_1286 + 180] = 0
                                    mem[_1286 + 212] = arg2
                                    emit 0xbc7f0bcc: _1159 << 240, 0, arg2
            else:
                _1158 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_1158 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1172] == mem[_1172 + 12 len 20]
                if mem[_1172 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (_1158 << 240)
                mem[mem[64] len 224] = ext_call.return_data[0 len 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 224
                require mem[_1209] == bool(mem[_1209])
                require mem[_1209 + 32] == mem[_1209 + 63 len 1]
                require mem[_1209 + 64] == mem[_1209 + 95 len 1]
                require mem[_1209 + 96] == mem[_1209 + 127 len 1]
                require mem[_1209 + 128] == mem[_1209 + 159 len 1]
                require mem[_1209 + 160] == mem[_1209 + 191 len 1]
                _1365 = mem[_1209 + 192]
                require mem[_1209 + 192] == mem[_1209 + 223 len 1]
                if 8 < mem[_1209 + 223 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1209 + 223 len 1] + 8)
                _1482 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[_1158 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1504 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1504] = uint16(stor[sha3(_1482) + stor5[_1158 << 240]].field_0)
                mem[_1504 + 32] = Mask(80, 0, stor[sha3(_1482) + stor5[_1158 << 240]].field_16)
                mem[_1504 + 64] = address(stor[sha3(_1482) + stor5[_1158 << 240]].field_96)
                if address(stor[sha3(_1482) + stor5[_1158 << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_267ed2b0) < Mask(80, 0, stor[sha3(_1482) + stor5[_1158 << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1365) + 8) and uint256(sub_267ed2b0) - Mask(80, 0, stor[sha3(_1482) + stor5[_1158 << 240]].field_16) > -1 / uint8(-uint8(_1365) + 8):
                    revert with 0, 17
                if not arg2:
                    _1621 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1621] = uint16(_1158)
                    mem[_1621 + 32] = Mask(80, 0, stor8)
                    mem[_1621 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[_1158 << 240] >= uint256(pack[-uint8(_1365) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1365) + 8 << 248, 4)
                    Mask(80, 0, pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_0) = uint16(_1158)
                    Mask(80, 0, pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_16) = 0
                    address(pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1365) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1365) + 8)
                    mem[mem[64] + 68] = uint16(_1158)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1158 << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1365) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1365) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1365) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1365) + 8 << 248, 4)
                    _1659 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1659] = uint16(pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0)
                    mem[_1659 + 32] = Mask(80, 0, pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0)
                    mem[_1659 + 64] = address(pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0)
                    if packIndices[_1158 << 240] >= uint256(pack[-uint8(_1365) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_0) = uint16(pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_16) = Mask(80, 0, pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1365) + 8 << 248][stor5[_1158 << 240]].field_96) = address(pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1365) + 8 << 248][uint256(stor4[-uint8(_1365) + 8 << 248].field_0)].field_0)] = packIndices[_1158 << 240]
                    if not uint256(pack[-uint8(_1365) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1365) + 8 << 248][uint256(pack[-uint8(_1365) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1365) + 8 << 248].field_0)--
                    mem[0] = uint16(_1158)
                    mem[32] = 5
                    packIndices[_1158 << 240] = 0
                mem[mem[64]] = uint16(_1158)
                mem[mem[64] + 32] = (uint256(sub_267ed2b0) * uint8(-uint8(_1365) + 8)) - (Mask(80, 0, stor[sha3(_1482) + stor5[_1158 << 240]].field_16) * uint8(-uint8(_1365) + 8))
                mem[mem[64] + 64] = arg2
                emit 0xab26c19b: _1158 << 240, (uint256(sub_267ed2b0) * uint8(-uint8(_1365) + 8)) - (Mask(80, 0, stor[sha3(_1482) + stor5[_1158 << 240]].field_16) * uint8(-uint8(_1365) + 8)), arg2
                if 0 > !((uint256(sub_267ed2b0) * uint8(-uint8(_1365) + 8)) - (Mask(80, 0, stor[sha3(_1482) + stor5[_1158 << 240]].field_16) * uint8(-uint8(_1365) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
