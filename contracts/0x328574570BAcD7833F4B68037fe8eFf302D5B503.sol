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

function sub_a487ce17(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xe05c57bf with:
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

function calculateRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x94e56847 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not bool(ceil32(return_data.size) + 544 <= test266151307()):
        revert with 0, 65
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
    if 8 < ext_call.return_data[351 len 1]:
        revert with 0, 17
    if uint256(sub_267ed2b0) < Mask(80, 0, barn[arg1].field_16):
        revert with 0, 17
    if uint8(-ext_call.return_data[351 len 1] + 8) and uint256(sub_267ed2b0) - Mask(80, 0, barn[arg1].field_16) > -1 / uint8(-ext_call.return_data[351 len 1] + 8):
        revert with 0, 17
    return ((uint256(sub_267ed2b0) * uint8(-ext_call.return_data[351 len 1] + 8)) - (Mask(80, 0, barn[arg1].field_16) * uint8(-ext_call.return_data[351 len 1] + 8)))
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
        _144 = mem[(32 * idx) + 128]
        require ext_code.size(stor1)
        staticcall stor1.0xe05c57bf with:
                gas gas_remaining wei
               args mem[(32 * idx) + 128]
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        require mem[_147] == bool(mem[_147])
        require mem[_147 + 32] == mem[_147 + 63 len 1]
        require mem[_147 + 64] == mem[_147 + 95 len 1]
        require mem[_147 + 96] == mem[_147 + 127 len 1]
        require mem[_147 + 128] == mem[_147 + 159 len 1]
        require mem[_147 + 160] == mem[_147 + 191 len 1]
        require mem[_147 + 192] == mem[_147 + 223 len 1]
        require mem[_147 + 224] == mem[_147 + 255 len 1]
        require mem[_147 + 256] == mem[_147 + 287 len 1]
        require mem[_147 + 288] == mem[_147 + 319 len 1]
        require mem[_147 + 320] == mem[_147 + 351 len 1]
        if mem[_147]:
            mem[0] = _144
            mem[32] = 3
            _160 = mem[64]
            mem[64] = mem[64] + 96
            mem[_160] = uint16(barn[_144].field_0)
            mem[_160 + 32] = Mask(80, 0, barn[_144].field_16)
            mem[_160 + 64] = address(barn[_144].field_96)
            if address(barn[_144].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[mem[64] + 68] = _144
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(stor1)
            call stor1.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _144, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = _144
            mem[32] = 3
            uint256(barn[_144].field_0) = 0
            if sub_788df81b < 1:
                revert with 0, 17
            sub_788df81b--
            mem[mem[64]] = _144
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0xbc7f0bcc: _144, 0, 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _160
            s = _144
            continue 
        require ext_code.size(stor1)
        staticcall stor1.0xe05c57bf with:
                gas gas_remaining wei
               args _144
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _166 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        require mem[_166] == bool(mem[_166])
        require mem[_166 + 32] == mem[_166 + 63 len 1]
        require mem[_166 + 64] == mem[_166 + 95 len 1]
        require mem[_166 + 96] == mem[_166 + 127 len 1]
        require mem[_166 + 128] == mem[_166 + 159 len 1]
        require mem[_166 + 160] == mem[_166 + 191 len 1]
        require mem[_166 + 192] == mem[_166 + 223 len 1]
        require mem[_166 + 224] == mem[_166 + 255 len 1]
        require mem[_166 + 256] == mem[_166 + 287 len 1]
        require mem[_166 + 288] == mem[_166 + 319 len 1]
        _182 = mem[_166 + 320]
        require mem[_166 + 320] == mem[_166 + 351 len 1]
        if 8 < mem[_166 + 351 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_166 + 351 len 1] + 8)
        _183 = sha3(mem[0], 4)
        mem[32] = 5
        if packIndices[_144] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 4)
        _186 = mem[64]
        mem[64] = mem[64] + 96
        mem[_186] = uint16(stor[sha3(_183) + stor5[_144]].field_0)
        mem[_186 + 32] = Mask(80, 0, stor[sha3(_183) + stor5[_144]].field_16)
        mem[_186 + 64] = address(stor[sha3(_183) + stor5[_144]].field_96)
        if address(stor[sha3(_183) + stor5[_144]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_182) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_182) + 8)
        mem[mem[64] + 68] = _144
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(stor1)
        call stor1.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, _144, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        if uint256(pack[-uint8(_182) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_182) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_182) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_182) + 8 << 248, 4)
        _193 = mem[64]
        mem[64] = mem[64] + 96
        mem[_193] = uint16(pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0)
        mem[_193 + 32] = Mask(80, 0, pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0)
        mem[_193 + 64] = address(pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0)
        if packIndices[_144] >= uint256(pack[-uint8(_182) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_182) + 8 << 248][stor5[_144]].field_0) = uint16(pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_182) + 8 << 248][stor5[_144]].field_16) = Mask(80, 0, pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_182) + 8 << 248][stor5[_144]].field_96) = address(pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor4[-uint8(_182) + 8 << 248][uint256(stor4[-uint8(_182) + 8 << 248].field_0)].field_0)] = packIndices[_144]
        if not uint256(pack[-uint8(_182) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_182) + 8 << 248][uint256(pack[-uint8(_182) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_182) + 8 << 248].field_0)--
        mem[0] = _144
        mem[32] = 5
        packIndices[_144] = 0
        mem[mem[64]] = _144
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0xab26c19b: _144, 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _186
        s = _144
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
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _562 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    require mem[_562] == bool(mem[_562])
                    require mem[_562 + 32] == mem[_562 + 63 len 1]
                    require mem[_562 + 64] == mem[_562 + 95 len 1]
                    require mem[_562 + 96] == mem[_562 + 127 len 1]
                    require mem[_562 + 128] == mem[_562 + 159 len 1]
                    require mem[_562 + 160] == mem[_562 + 191 len 1]
                    require mem[_562 + 192] == mem[_562 + 223 len 1]
                    require mem[_562 + 224] == mem[_562 + 255 len 1]
                    require mem[_562 + 256] == mem[_562 + 287 len 1]
                    require mem[_562 + 288] == mem[_562 + 319 len 1]
                    require mem[_562 + 320] == mem[_562 + 351 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_562]:
                        _631 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= 500000 * 10^18 * 3600:
                            _643 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_643] = mem[(32 * idx) + 158 len 2]
                            mem[_643 + 32] = Mask(80, 0, block.timestamp)
                            mem[_643 + 64] = arg1
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
                            _704 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_704] = mem[(32 * idx) + 158 len 2]
                            mem[_704 + 32] = Mask(80, 0, block.timestamp)
                            mem[_704 + 64] = arg1
                        mem[0] = uint16(_631)
                        mem[32] = 3
                        uint16(barn[_631 << 240].field_0) = uint16(_631)
                        Mask(80, 0, barn[_631 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_631 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_631)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _631 << 240, block.timestamp);
                    else:
                        _630 = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_642] == bool(mem[_642])
                        require mem[_642 + 32] == mem[_642 + 63 len 1]
                        require mem[_642 + 64] == mem[_642 + 95 len 1]
                        require mem[_642 + 96] == mem[_642 + 127 len 1]
                        require mem[_642 + 128] == mem[_642 + 159 len 1]
                        require mem[_642 + 160] == mem[_642 + 191 len 1]
                        require mem[_642 + 192] == mem[_642 + 223 len 1]
                        require mem[_642 + 224] == mem[_642 + 255 len 1]
                        require mem[_642 + 256] == mem[_642 + 287 len 1]
                        require mem[_642 + 288] == mem[_642 + 319 len 1]
                        require mem[_642 + 320] == mem[_642 + 351 len 1]
                        if 8 < mem[_642 + 351 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_642 + 351 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_642 + 351 len 1] + 8)
                        mem[0] = uint8(-mem[_642 + 351 len 1] + 8)
                        _764 = sha3(mem[0], 4)
                        mem[0] = uint16(_630)
                        packIndices[_630 << 240] = uint256(stor[_764].field_0)
                        mem[32] = 4
                        _766 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_766] = uint16(_630)
                        mem[_766 + 32] = Mask(80, 0, stor8)
                        mem[_766 + 64] = arg1
                        uint256(stor[_764].field_0)++
                        mem[0] = _764
                        uint16(stor[uint256(stor[_764].field_0) + sha3(_764)].field_0) = uint16(_630)
                        Mask(80, 0, stor[uint256(stor[_764].field_0) + sha3(_764)].field_0) = Mask(80, 0, stor8)
                        uint16(stor[uint256(stor[_764].field_0) + sha3(_764)].field_80) = 0
                        address(stor[uint256(stor[_764].field_0) + sha3(_764)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_630)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _630 << 240, uint256(sub_267ed2b0));
            else:
                _545 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_545 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _558 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_558] == mem[_558 + 12 len 20]
                if mem[_558 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= mem[96]:
                    revert with 0, 50
                _573 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(_573)
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(_573)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (mem[(32 * idx) + 128] << 240)
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                require mem[_594] == bool(mem[_594])
                require mem[_594 + 32] == mem[_594 + 63 len 1]
                require mem[_594 + 64] == mem[_594 + 95 len 1]
                require mem[_594 + 96] == mem[_594 + 127 len 1]
                require mem[_594 + 128] == mem[_594 + 159 len 1]
                require mem[_594 + 160] == mem[_594 + 191 len 1]
                require mem[_594 + 192] == mem[_594 + 223 len 1]
                require mem[_594 + 224] == mem[_594 + 255 len 1]
                require mem[_594 + 256] == mem[_594 + 287 len 1]
                require mem[_594 + 288] == mem[_594 + 319 len 1]
                require mem[_594 + 320] == mem[_594 + 351 len 1]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_594]:
                    _674 = mem[(32 * idx) + 128]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if sub_608f4f09 >= 500000 * 10^18 * 3600:
                        _687 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_687] = mem[(32 * idx) + 158 len 2]
                        mem[_687 + 32] = Mask(80, 0, block.timestamp)
                        mem[_687 + 64] = arg1
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
                        _738 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_738] = mem[(32 * idx) + 158 len 2]
                        mem[_738 + 32] = Mask(80, 0, block.timestamp)
                        mem[_738 + 64] = arg1
                    mem[0] = uint16(_674)
                    mem[32] = 3
                    uint16(barn[_674 << 240].field_0) = uint16(_674)
                    Mask(80, 0, barn[_674 << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[_674 << 240].field_96) = arg1
                    if sub_788df81b > -2:
                        revert with 0, 17
                    sub_788df81b++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_674)
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), _674 << 240, block.timestamp);
                else:
                    _673 = mem[(32 * idx) + 128]
                    require ext_code.size(stor1)
                    staticcall stor1.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _686 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    require mem[_686] == bool(mem[_686])
                    require mem[_686 + 32] == mem[_686 + 63 len 1]
                    require mem[_686 + 64] == mem[_686 + 95 len 1]
                    require mem[_686 + 96] == mem[_686 + 127 len 1]
                    require mem[_686 + 128] == mem[_686 + 159 len 1]
                    require mem[_686 + 160] == mem[_686 + 191 len 1]
                    require mem[_686 + 192] == mem[_686 + 223 len 1]
                    require mem[_686 + 224] == mem[_686 + 255 len 1]
                    require mem[_686 + 256] == mem[_686 + 287 len 1]
                    require mem[_686 + 288] == mem[_686 + 319 len 1]
                    require mem[_686 + 320] == mem[_686 + 351 len 1]
                    if 8 < mem[_686 + 351 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_686 + 351 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_686 + 351 len 1] + 8)
                    mem[0] = uint8(-mem[_686 + 351 len 1] + 8)
                    _786 = sha3(mem[0], 4)
                    mem[0] = uint16(_673)
                    packIndices[_673 << 240] = uint256(stor[_786].field_0)
                    mem[32] = 4
                    _788 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_788] = uint16(_673)
                    mem[_788 + 32] = Mask(80, 0, stor8)
                    mem[_788 + 64] = arg1
                    uint256(stor[_786].field_0)++
                    mem[0] = _786
                    uint16(stor[uint256(stor[_786].field_0) + sha3(_786)].field_0) = uint16(_673)
                    Mask(80, 0, stor[uint256(stor[_786].field_0) + sha3(_786)].field_0) = Mask(80, 0, stor8)
                    uint16(stor[uint256(stor[_786].field_0) + sha3(_786)].field_80) = 0
                    address(stor[uint256(stor[_786].field_0) + sha3(_786)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_673)
                    mem[mem[64] + 64] = uint256(sub_267ed2b0)
                    emit TokenStaked(address(arg1), _673 << 240, uint256(sub_267ed2b0));
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
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _564 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    require mem[_564] == bool(mem[_564])
                    require mem[_564 + 32] == mem[_564 + 63 len 1]
                    require mem[_564 + 64] == mem[_564 + 95 len 1]
                    require mem[_564 + 96] == mem[_564 + 127 len 1]
                    require mem[_564 + 128] == mem[_564 + 159 len 1]
                    require mem[_564 + 160] == mem[_564 + 191 len 1]
                    require mem[_564 + 192] == mem[_564 + 223 len 1]
                    require mem[_564 + 224] == mem[_564 + 255 len 1]
                    require mem[_564 + 256] == mem[_564 + 287 len 1]
                    require mem[_564 + 288] == mem[_564 + 319 len 1]
                    require mem[_564 + 320] == mem[_564 + 351 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_564]:
                        _633 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= 500000 * 10^18 * 3600:
                            _650 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_650] = mem[(32 * idx) + 158 len 2]
                            mem[_650 + 32] = Mask(80, 0, block.timestamp)
                            mem[_650 + 64] = arg1
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
                            _711 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_711] = mem[(32 * idx) + 158 len 2]
                            mem[_711 + 32] = Mask(80, 0, block.timestamp)
                            mem[_711 + 64] = arg1
                        mem[0] = uint16(_633)
                        mem[32] = 3
                        uint16(barn[_633 << 240].field_0) = uint16(_633)
                        Mask(80, 0, barn[_633 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_633 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_633)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _633 << 240, block.timestamp);
                    else:
                        _632 = mem[(32 * idx) + 128]
                        require ext_code.size(stor1)
                        staticcall stor1.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _649 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        require mem[_649] == bool(mem[_649])
                        require mem[_649 + 32] == mem[_649 + 63 len 1]
                        require mem[_649 + 64] == mem[_649 + 95 len 1]
                        require mem[_649 + 96] == mem[_649 + 127 len 1]
                        require mem[_649 + 128] == mem[_649 + 159 len 1]
                        require mem[_649 + 160] == mem[_649 + 191 len 1]
                        require mem[_649 + 192] == mem[_649 + 223 len 1]
                        require mem[_649 + 224] == mem[_649 + 255 len 1]
                        require mem[_649 + 256] == mem[_649 + 287 len 1]
                        require mem[_649 + 288] == mem[_649 + 319 len 1]
                        require mem[_649 + 320] == mem[_649 + 351 len 1]
                        if 8 < mem[_649 + 351 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_649 + 351 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_649 + 351 len 1] + 8)
                        mem[0] = uint8(-mem[_649 + 351 len 1] + 8)
                        _774 = sha3(mem[0], 4)
                        mem[0] = uint16(_632)
                        packIndices[_632 << 240] = uint256(stor[_774].field_0)
                        mem[32] = 4
                        _776 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_776] = uint16(_632)
                        mem[_776 + 32] = Mask(80, 0, stor8)
                        mem[_776 + 64] = arg1
                        uint256(stor[_774].field_0)++
                        mem[0] = _774
                        uint16(stor[uint256(stor[_774].field_0) + sha3(_774)].field_0) = uint16(_632)
                        Mask(80, 0, stor[uint256(stor[_774].field_0) + sha3(_774)].field_0) = Mask(80, 0, stor8)
                        uint16(stor[uint256(stor[_774].field_0) + sha3(_774)].field_80) = 0
                        address(stor[uint256(stor[_774].field_0) + sha3(_774)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_632)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _632 << 240, uint256(sub_267ed2b0));
            else:
                _548 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_548 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_561] == mem[_561 + 12 len 20]
                if mem[_561 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= mem[96]:
                    revert with 0, 50
                _578 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(_578)
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(_578)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (mem[(32 * idx) + 128] << 240)
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                require mem[_595] == bool(mem[_595])
                require mem[_595 + 32] == mem[_595 + 63 len 1]
                require mem[_595 + 64] == mem[_595 + 95 len 1]
                require mem[_595 + 96] == mem[_595 + 127 len 1]
                require mem[_595 + 128] == mem[_595 + 159 len 1]
                require mem[_595 + 160] == mem[_595 + 191 len 1]
                require mem[_595 + 192] == mem[_595 + 223 len 1]
                require mem[_595 + 224] == mem[_595 + 255 len 1]
                require mem[_595 + 256] == mem[_595 + 287 len 1]
                require mem[_595 + 288] == mem[_595 + 319 len 1]
                require mem[_595 + 320] == mem[_595 + 351 len 1]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_595]:
                    _677 = mem[(32 * idx) + 128]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if sub_608f4f09 >= 500000 * 10^18 * 3600:
                        _693 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_693] = mem[(32 * idx) + 158 len 2]
                        mem[_693 + 32] = Mask(80, 0, block.timestamp)
                        mem[_693 + 64] = arg1
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
                        _743 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_743] = mem[(32 * idx) + 158 len 2]
                        mem[_743 + 32] = Mask(80, 0, block.timestamp)
                        mem[_743 + 64] = arg1
                    mem[0] = uint16(_677)
                    mem[32] = 3
                    uint16(barn[_677 << 240].field_0) = uint16(_677)
                    Mask(80, 0, barn[_677 << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[_677 << 240].field_96) = arg1
                    if sub_788df81b > -2:
                        revert with 0, 17
                    sub_788df81b++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_677)
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), _677 << 240, block.timestamp);
                else:
                    _676 = mem[(32 * idx) + 128]
                    require ext_code.size(stor1)
                    staticcall stor1.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _692 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    require mem[_692] == bool(mem[_692])
                    require mem[_692 + 32] == mem[_692 + 63 len 1]
                    require mem[_692 + 64] == mem[_692 + 95 len 1]
                    require mem[_692 + 96] == mem[_692 + 127 len 1]
                    require mem[_692 + 128] == mem[_692 + 159 len 1]
                    require mem[_692 + 160] == mem[_692 + 191 len 1]
                    require mem[_692 + 192] == mem[_692 + 223 len 1]
                    require mem[_692 + 224] == mem[_692 + 255 len 1]
                    require mem[_692 + 256] == mem[_692 + 287 len 1]
                    require mem[_692 + 288] == mem[_692 + 319 len 1]
                    require mem[_692 + 320] == mem[_692 + 351 len 1]
                    if 8 < mem[_692 + 351 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_692 + 351 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_692 + 351 len 1] + 8)
                    mem[0] = uint8(-mem[_692 + 351 len 1] + 8)
                    _795 = sha3(mem[0], 4)
                    mem[0] = uint16(_676)
                    packIndices[_676 << 240] = uint256(stor[_795].field_0)
                    mem[32] = 4
                    _797 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_797] = uint16(_676)
                    mem[_797 + 32] = Mask(80, 0, stor8)
                    mem[_797 + 64] = arg1
                    uint256(stor[_795].field_0)++
                    mem[0] = _795
                    uint16(stor[uint256(stor[_795].field_0) + sha3(_795)].field_0) = uint16(_676)
                    Mask(80, 0, stor[uint256(stor[_795].field_0) + sha3(_795)].field_0) = Mask(80, 0, stor8)
                    uint16(stor[uint256(stor[_795].field_0) + sha3(_795)].field_80) = 0
                    address(stor[uint256(stor[_795].field_0) + sha3(_795)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_676)
                    mem[mem[64] + 64] = uint256(sub_267ed2b0)
                    emit TokenStaked(address(arg1), _676 << 240, uint256(sub_267ed2b0));
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
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1168 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            require mem[_1168] == bool(mem[_1168])
            require mem[_1168 + 32] == mem[_1168 + 63 len 1]
            require mem[_1168 + 64] == mem[_1168 + 95 len 1]
            require mem[_1168 + 96] == mem[_1168 + 127 len 1]
            require mem[_1168 + 128] == mem[_1168 + 159 len 1]
            require mem[_1168 + 160] == mem[_1168 + 191 len 1]
            require mem[_1168 + 192] == mem[_1168 + 223 len 1]
            require mem[_1168 + 224] == mem[_1168 + 255 len 1]
            require mem[_1168 + 256] == mem[_1168 + 287 len 1]
            require mem[_1168 + 288] == mem[_1168 + 319 len 1]
            require mem[_1168 + 320] == mem[_1168 + 351 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_1168]:
                _1197 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 158 len 2]
                mem[32] = 3
                _1202 = sha3(mem[(32 * idx) + 158 len 2], 3)
                _1203 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1203] = uint16(barn[mem[(32 * idx) + 158 len 2]].field_0)
                mem[_1203 + 32] = Mask(80, 0, stor[_1202].field_16)
                mem[_1203 + 64] = address(stor[_1202].field_96)
                if address(stor[_1202].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1202].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1202].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1202].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1475 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1475] = uint16(_1197)
                                mem[_1475 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1475 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1556 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1556] = uint16(_1197)
                                mem[_1556 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1556 + 64] = msg.sender
                            mem[0] = uint16(_1197)
                            mem[32] = 3
                            uint16(barn[_1197 << 240].field_0) = uint16(_1197)
                            Mask(80, 0, barn[_1197 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1197 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1197)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1197 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1274 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1197)
                            _1275 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1275 + 32 len mem[_1275]])) != 1:
                                mem[_1274 + 216] = uint16(_1197)
                                mem[_1274 + 248] = 128
                                mem[_1274 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1197 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint256(barn[_1197 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1274 + 148] = uint16(_1197)
                                mem[_1274 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                mem[_1274 + 212] = arg2
                                emit 0xbc7f0bcc: _1197 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1274 + 216] = uint16(_1197)
                                mem[_1274 + 248] = 128
                                mem[_1274 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1197 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint256(barn[_1197 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1274 + 148] = uint16(_1197)
                                mem[_1274 + 180] = 0
                                mem[_1274 + 212] = arg2
                                emit 0xbc7f0bcc: _1197 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1202].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1359 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1359] = uint16(_1197)
                                    mem[_1359 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1359 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1423 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1423] = uint16(_1197)
                                    mem[_1423 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1423 + 64] = msg.sender
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint16(barn[_1197 << 240].field_0) = uint16(_1197)
                                Mask(80, 0, barn[_1197 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1197 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1197)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1245 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1197)
                                _1246 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1246 + 32 len mem[_1246]])):
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
                                mem[_1245 + 216] = uint16(_1197)
                                mem[_1245 + 248] = 128
                                mem[_1245 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1197 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint256(barn[_1197 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1245 + 148] = uint16(_1197)
                                mem[_1245 + 180] = 0
                                mem[_1245 + 212] = arg2
                            emit 0xbc7f0bcc: _1197 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1202].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1202].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1202].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1485 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1485] = uint16(_1197)
                                    mem[_1485 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1485 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1578 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1578] = uint16(_1197)
                                    mem[_1578 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1578 + 64] = msg.sender
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint16(barn[_1197 << 240].field_0) = uint16(_1197)
                                Mask(80, 0, barn[_1197 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1197 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1197)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1197 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1285 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1197)
                                _1286 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1286 + 32 len mem[_1286]])) != 1:
                                    mem[_1285 + 216] = uint16(_1197)
                                    mem[_1285 + 248] = 128
                                    mem[_1285 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1197 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1197)
                                    mem[32] = 3
                                    uint256(barn[_1197 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1285 + 148] = uint16(_1197)
                                    mem[_1285 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                    mem[_1285 + 212] = arg2
                                    emit 0xbc7f0bcc: _1197 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1285 + 216] = uint16(_1197)
                                    mem[_1285 + 248] = 128
                                    mem[_1285 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1197 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1197)
                                    mem[32] = 3
                                    uint256(barn[_1197 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1285 + 148] = uint16(_1197)
                                    mem[_1285 + 180] = 0
                                    mem[_1285 + 212] = arg2
                                    emit 0xbc7f0bcc: _1197 << 240, 0, arg2
                else:
                    if block.timestamp < Mask(80, 0, stor[_1202].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, stor[_1202].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S GEM'
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1202].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1202].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1202].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1548 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1548] = uint16(_1197)
                                mem[_1548 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1548 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1628 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1628] = uint16(_1197)
                                mem[_1628 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1628 + 64] = msg.sender
                            mem[0] = uint16(_1197)
                            mem[32] = 3
                            uint16(barn[_1197 << 240].field_0) = uint16(_1197)
                            Mask(80, 0, barn[_1197 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1197 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1197)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1197 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1309 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1197)
                            _1310 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1310 + 32 len mem[_1310]])) != 1:
                                mem[_1309 + 216] = uint16(_1197)
                                mem[_1309 + 248] = 128
                                mem[_1309 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1197 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint256(barn[_1197 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1309 + 148] = uint16(_1197)
                                mem[_1309 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                mem[_1309 + 212] = arg2
                                emit 0xbc7f0bcc: _1197 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1309 + 216] = uint16(_1197)
                                mem[_1309 + 248] = 128
                                mem[_1309 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1197 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint256(barn[_1197 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1309 + 148] = uint16(_1197)
                                mem[_1309 + 180] = 0
                                mem[_1309 + 212] = arg2
                                emit 0xbc7f0bcc: _1197 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1202].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1409 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1409] = uint16(_1197)
                                    mem[_1409 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1409 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1494 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1494] = uint16(_1197)
                                    mem[_1494 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1494 + 64] = msg.sender
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint16(barn[_1197 << 240].field_0) = uint16(_1197)
                                Mask(80, 0, barn[_1197 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1197 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1197)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1259 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1197)
                                _1260 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1260 + 32 len mem[_1260]])):
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
                                mem[_1259 + 216] = uint16(_1197)
                                mem[_1259 + 248] = 128
                                mem[_1259 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1197 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint256(barn[_1197 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1259 + 148] = uint16(_1197)
                                mem[_1259 + 180] = 0
                                mem[_1259 + 212] = arg2
                            emit 0xbc7f0bcc: _1197 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1202].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1202].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1202].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1559 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1559] = uint16(_1197)
                                    mem[_1559 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1559 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1634 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1634] = uint16(_1197)
                                    mem[_1634 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1634 + 64] = msg.sender
                                mem[0] = uint16(_1197)
                                mem[32] = 3
                                uint16(barn[_1197 << 240].field_0) = uint16(_1197)
                                Mask(80, 0, barn[_1197 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1197 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1197)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1197 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1321 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1197)
                                _1322 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1322 + 32 len mem[_1322]])) != 1:
                                    mem[_1321 + 216] = uint16(_1197)
                                    mem[_1321 + 248] = 128
                                    mem[_1321 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1197 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1197)
                                    mem[32] = 3
                                    uint256(barn[_1197 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1321 + 148] = uint16(_1197)
                                    mem[_1321 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                    mem[_1321 + 212] = arg2
                                    emit 0xbc7f0bcc: _1197 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1202].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1321 + 216] = uint16(_1197)
                                    mem[_1321 + 248] = 128
                                    mem[_1321 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1197 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1197)
                                    mem[32] = 3
                                    uint256(barn[_1197 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1321 + 148] = uint16(_1197)
                                    mem[_1321 + 180] = 0
                                    mem[_1321 + 212] = arg2
                                    emit 0xbc7f0bcc: _1197 << 240, 0, arg2
            else:
                _1196 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_1196 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1210 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1210] == mem[_1210 + 12 len 20]
                if mem[_1210 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (_1196 << 240)
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                require mem[_1244] == bool(mem[_1244])
                require mem[_1244 + 32] == mem[_1244 + 63 len 1]
                require mem[_1244 + 64] == mem[_1244 + 95 len 1]
                require mem[_1244 + 96] == mem[_1244 + 127 len 1]
                require mem[_1244 + 128] == mem[_1244 + 159 len 1]
                require mem[_1244 + 160] == mem[_1244 + 191 len 1]
                require mem[_1244 + 192] == mem[_1244 + 223 len 1]
                require mem[_1244 + 224] == mem[_1244 + 255 len 1]
                require mem[_1244 + 256] == mem[_1244 + 287 len 1]
                require mem[_1244 + 288] == mem[_1244 + 319 len 1]
                _1606 = mem[_1244 + 320]
                require mem[_1244 + 320] == mem[_1244 + 351 len 1]
                if 8 < mem[_1244 + 351 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1244 + 351 len 1] + 8)
                _1664 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[_1196 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1669 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1669] = uint16(stor[sha3(_1664) + stor5[_1196 << 240]].field_0)
                mem[_1669 + 32] = Mask(80, 0, stor[sha3(_1664) + stor5[_1196 << 240]].field_16)
                mem[_1669 + 64] = address(stor[sha3(_1664) + stor5[_1196 << 240]].field_96)
                if address(stor[sha3(_1664) + stor5[_1196 << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_267ed2b0) < Mask(80, 0, stor[sha3(_1664) + stor5[_1196 << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1606) + 8) and uint256(sub_267ed2b0) - Mask(80, 0, stor[sha3(_1664) + stor5[_1196 << 240]].field_16) > -1 / uint8(-uint8(_1606) + 8):
                    revert with 0, 17
                if not arg2:
                    _1678 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1678] = uint16(_1196)
                    mem[_1678 + 32] = Mask(80, 0, stor8)
                    mem[_1678 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[_1196 << 240] >= uint256(pack[-uint8(_1606) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1606) + 8 << 248, 4)
                    Mask(80, 0, pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_0) = uint16(_1196)
                    Mask(80, 0, pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_16) = 0
                    address(pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1606) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1606) + 8)
                    mem[mem[64] + 68] = uint16(_1196)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1196 << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1606) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1606) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1606) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1606) + 8 << 248, 4)
                    _1703 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1703] = uint16(pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0)
                    mem[_1703 + 32] = Mask(80, 0, pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0)
                    mem[_1703 + 64] = address(pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0)
                    if packIndices[_1196 << 240] >= uint256(pack[-uint8(_1606) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_0) = uint16(pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_16) = Mask(80, 0, pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1606) + 8 << 248][stor5[_1196 << 240]].field_96) = address(pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1606) + 8 << 248][uint256(stor4[-uint8(_1606) + 8 << 248].field_0)].field_0)] = packIndices[_1196 << 240]
                    if not uint256(pack[-uint8(_1606) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1606) + 8 << 248][uint256(pack[-uint8(_1606) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1606) + 8 << 248].field_0)--
                    mem[0] = uint16(_1196)
                    mem[32] = 5
                    packIndices[_1196 << 240] = 0
                mem[mem[64]] = uint16(_1196)
                mem[mem[64] + 32] = (uint256(sub_267ed2b0) * uint8(-uint8(_1606) + 8)) - (Mask(80, 0, stor[sha3(_1664) + stor5[_1196 << 240]].field_16) * uint8(-uint8(_1606) + 8))
                mem[mem[64] + 64] = arg2
                emit 0xab26c19b: _1196 << 240, (uint256(sub_267ed2b0) * uint8(-uint8(_1606) + 8)) - (Mask(80, 0, stor[sha3(_1664) + stor5[_1196 << 240]].field_16) * uint8(-uint8(_1606) + 8)), arg2
                if 0 > !((uint256(sub_267ed2b0) * uint8(-uint8(_1606) + 8)) - (Mask(80, 0, stor[sha3(_1664) + stor5[_1196 << 240]].field_16) * uint8(-uint8(_1606) + 8))):
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
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            require mem[_1169] == bool(mem[_1169])
            require mem[_1169 + 32] == mem[_1169 + 63 len 1]
            require mem[_1169 + 64] == mem[_1169 + 95 len 1]
            require mem[_1169 + 96] == mem[_1169 + 127 len 1]
            require mem[_1169 + 128] == mem[_1169 + 159 len 1]
            require mem[_1169 + 160] == mem[_1169 + 191 len 1]
            require mem[_1169 + 192] == mem[_1169 + 223 len 1]
            require mem[_1169 + 224] == mem[_1169 + 255 len 1]
            require mem[_1169 + 256] == mem[_1169 + 287 len 1]
            require mem[_1169 + 288] == mem[_1169 + 319 len 1]
            require mem[_1169 + 320] == mem[_1169 + 351 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_1169]:
                _1199 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 158 len 2]
                mem[32] = 3
                _1206 = sha3(mem[(32 * idx) + 158 len 2], 3)
                _1207 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1207] = uint16(barn[mem[(32 * idx) + 158 len 2]].field_0)
                mem[_1207 + 32] = Mask(80, 0, stor[_1206].field_16)
                mem[_1207 + 64] = address(stor[_1206].field_96)
                if address(stor[_1206].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1206].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1206].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1206].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1480 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1480] = uint16(_1199)
                                mem[_1480 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1480 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1567 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1567] = uint16(_1199)
                                mem[_1567 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1567 + 64] = msg.sender
                            mem[0] = uint16(_1199)
                            mem[32] = 3
                            uint16(barn[_1199 << 240].field_0) = uint16(_1199)
                            Mask(80, 0, barn[_1199 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1199 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1199)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1199 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1279 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1199)
                            _1280 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1280 + 32 len mem[_1280]])) != 1:
                                mem[_1279 + 216] = uint16(_1199)
                                mem[_1279 + 248] = 128
                                mem[_1279 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1199 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint256(barn[_1199 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1279 + 148] = uint16(_1199)
                                mem[_1279 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                mem[_1279 + 212] = arg2
                                emit 0xbc7f0bcc: _1199 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1279 + 216] = uint16(_1199)
                                mem[_1279 + 248] = 128
                                mem[_1279 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1199 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint256(barn[_1199 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1279 + 148] = uint16(_1199)
                                mem[_1279 + 180] = 0
                                mem[_1279 + 212] = arg2
                                emit 0xbc7f0bcc: _1199 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1206].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1368 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1368] = uint16(_1199)
                                    mem[_1368 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1368 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1436 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1436] = uint16(_1199)
                                    mem[_1436 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1436 + 64] = msg.sender
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint16(barn[_1199 << 240].field_0) = uint16(_1199)
                                Mask(80, 0, barn[_1199 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1199 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1199)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1250 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1199)
                                _1251 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1251 + 32 len mem[_1251]])):
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
                                mem[_1250 + 216] = uint16(_1199)
                                mem[_1250 + 248] = 128
                                mem[_1250 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1199 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint256(barn[_1199 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1250 + 148] = uint16(_1199)
                                mem[_1250 + 180] = 0
                                mem[_1250 + 212] = arg2
                            emit 0xbc7f0bcc: _1199 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1206].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1206].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1206].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1499 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1499] = uint16(_1199)
                                    mem[_1499 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1499 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1592 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1592] = uint16(_1199)
                                    mem[_1592 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1592 + 64] = msg.sender
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint16(barn[_1199 << 240].field_0) = uint16(_1199)
                                Mask(80, 0, barn[_1199 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1199 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1199)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1199 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1290 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1199)
                                _1291 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1291 + 32 len mem[_1291]])) != 1:
                                    mem[_1290 + 216] = uint16(_1199)
                                    mem[_1290 + 248] = 128
                                    mem[_1290 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1199 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1199)
                                    mem[32] = 3
                                    uint256(barn[_1199 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1290 + 148] = uint16(_1199)
                                    mem[_1290 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                    mem[_1290 + 212] = arg2
                                    emit 0xbc7f0bcc: _1199 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1290 + 216] = uint16(_1199)
                                    mem[_1290 + 248] = 128
                                    mem[_1290 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1199 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1199)
                                    mem[32] = 3
                                    uint256(barn[_1199 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1290 + 148] = uint16(_1199)
                                    mem[_1290 + 180] = 0
                                    mem[_1290 + 212] = arg2
                                    emit 0xbc7f0bcc: _1199 << 240, 0, arg2
                else:
                    if block.timestamp < Mask(80, 0, stor[_1206].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, stor[_1206].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S GEM'
                    if sub_608f4f09 < 500000 * 10^18 * 3600:
                        if block.timestamp < Mask(80, 0, stor[_1206].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1206].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1206].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1553 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1553] = uint16(_1199)
                                mem[_1553 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1553 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1631 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1631] = uint16(_1199)
                                mem[_1631 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1631 + 64] = msg.sender
                            mem[0] = uint16(_1199)
                            mem[32] = 3
                            uint16(barn[_1199 << 240].field_0) = uint16(_1199)
                            Mask(80, 0, barn[_1199 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1199 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1199)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1199 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1316 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1199)
                            _1317 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1317 + 32 len mem[_1317]])) != 1:
                                mem[_1316 + 216] = uint16(_1199)
                                mem[_1316 + 248] = 128
                                mem[_1316 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1199 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint256(barn[_1199 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1316 + 148] = uint16(_1199)
                                mem[_1316 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                mem[_1316 + 212] = arg2
                                emit 0xbc7f0bcc: _1199 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1316 + 216] = uint16(_1199)
                                mem[_1316 + 248] = 128
                                mem[_1316 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1199 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint256(barn[_1199 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1316 + 148] = uint16(_1199)
                                mem[_1316 + 180] = 0
                                mem[_1316 + 212] = arg2
                                emit 0xbc7f0bcc: _1199 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1206].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1416 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1416] = uint16(_1199)
                                    mem[_1416 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1416 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1508 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1508] = uint16(_1199)
                                    mem[_1508 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1508 + 64] = msg.sender
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint16(barn[_1199 << 240].field_0) = uint16(_1199)
                                Mask(80, 0, barn[_1199 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1199 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1199)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1264 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1199)
                                _1265 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1265 + 32 len mem[_1265]])):
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
                                mem[_1264 + 216] = uint16(_1199)
                                mem[_1264 + 248] = 128
                                mem[_1264 + 280] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1199 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint256(barn[_1199 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1264 + 148] = uint16(_1199)
                                mem[_1264 + 180] = 0
                                mem[_1264 + 212] = arg2
                            emit 0xbc7f0bcc: _1199 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1206].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1206].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1206].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1570 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1570] = uint16(_1199)
                                    mem[_1570 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1570 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1641 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1641] = uint16(_1199)
                                    mem[_1641 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1641 + 64] = msg.sender
                                mem[0] = uint16(_1199)
                                mem[32] = 3
                                uint16(barn[_1199 << 240].field_0) = uint16(_1199)
                                Mask(80, 0, barn[_1199 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1199 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1199)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1199 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1326 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1199)
                                _1327 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1327 + 32 len mem[_1327]])) != 1:
                                    mem[_1326 + 216] = uint16(_1199)
                                    mem[_1326 + 248] = 128
                                    mem[_1326 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1199 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1199)
                                    mem[32] = 3
                                    uint256(barn[_1199 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1326 + 148] = uint16(_1199)
                                    mem[_1326 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                    mem[_1326 + 212] = arg2
                                    emit 0xbc7f0bcc: _1199 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1206].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1326 + 216] = uint16(_1199)
                                    mem[_1326 + 248] = 128
                                    mem[_1326 + 280] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1199 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1199)
                                    mem[32] = 3
                                    uint256(barn[_1199 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1326 + 148] = uint16(_1199)
                                    mem[_1326 + 180] = 0
                                    mem[_1326 + 212] = arg2
                                    emit 0xbc7f0bcc: _1199 << 240, 0, arg2
            else:
                _1198 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (_1198 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1212] == mem[_1212 + 12 len 20]
                if mem[_1212 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0xe05c57bf with:
                        gas gas_remaining wei
                       args (_1198 << 240)
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                require mem[_1249] == bool(mem[_1249])
                require mem[_1249 + 32] == mem[_1249 + 63 len 1]
                require mem[_1249 + 64] == mem[_1249 + 95 len 1]
                require mem[_1249 + 96] == mem[_1249 + 127 len 1]
                require mem[_1249 + 128] == mem[_1249 + 159 len 1]
                require mem[_1249 + 160] == mem[_1249 + 191 len 1]
                require mem[_1249 + 192] == mem[_1249 + 223 len 1]
                require mem[_1249 + 224] == mem[_1249 + 255 len 1]
                require mem[_1249 + 256] == mem[_1249 + 287 len 1]
                require mem[_1249 + 288] == mem[_1249 + 319 len 1]
                _1615 = mem[_1249 + 320]
                require mem[_1249 + 320] == mem[_1249 + 351 len 1]
                if 8 < mem[_1249 + 351 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1249 + 351 len 1] + 8)
                _1666 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[_1198 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1671 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1671] = uint16(stor[sha3(_1666) + stor5[_1198 << 240]].field_0)
                mem[_1671 + 32] = Mask(80, 0, stor[sha3(_1666) + stor5[_1198 << 240]].field_16)
                mem[_1671 + 64] = address(stor[sha3(_1666) + stor5[_1198 << 240]].field_96)
                if address(stor[sha3(_1666) + stor5[_1198 << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_267ed2b0) < Mask(80, 0, stor[sha3(_1666) + stor5[_1198 << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1615) + 8) and uint256(sub_267ed2b0) - Mask(80, 0, stor[sha3(_1666) + stor5[_1198 << 240]].field_16) > -1 / uint8(-uint8(_1615) + 8):
                    revert with 0, 17
                if not arg2:
                    _1679 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1679] = uint16(_1198)
                    mem[_1679 + 32] = Mask(80, 0, stor8)
                    mem[_1679 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[_1198 << 240] >= uint256(pack[-uint8(_1615) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1615) + 8 << 248, 4)
                    Mask(80, 0, pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_0) = uint16(_1198)
                    Mask(80, 0, pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_16) = 0
                    address(pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1615) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1615) + 8)
                    mem[mem[64] + 68] = uint16(_1198)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1198 << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_1615) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1615) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1615) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1615) + 8 << 248, 4)
                    _1707 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1707] = uint16(pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0)
                    mem[_1707 + 32] = Mask(80, 0, pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0)
                    mem[_1707 + 64] = address(pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0)
                    if packIndices[_1198 << 240] >= uint256(pack[-uint8(_1615) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_0) = uint16(pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_16) = Mask(80, 0, pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1615) + 8 << 248][stor5[_1198 << 240]].field_96) = address(pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1615) + 8 << 248][uint256(stor4[-uint8(_1615) + 8 << 248].field_0)].field_0)] = packIndices[_1198 << 240]
                    if not uint256(pack[-uint8(_1615) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1615) + 8 << 248][uint256(pack[-uint8(_1615) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1615) + 8 << 248].field_0)--
                    mem[0] = uint16(_1198)
                    mem[32] = 5
                    packIndices[_1198 << 240] = 0
                mem[mem[64]] = uint16(_1198)
                mem[mem[64] + 32] = (uint256(sub_267ed2b0) * uint8(-uint8(_1615) + 8)) - (Mask(80, 0, stor[sha3(_1666) + stor5[_1198 << 240]].field_16) * uint8(-uint8(_1615) + 8))
                mem[mem[64] + 64] = arg2
                emit 0xab26c19b: _1198 << 240, (uint256(sub_267ed2b0) * uint8(-uint8(_1615) + 8)) - (Mask(80, 0, stor[sha3(_1666) + stor5[_1198 << 240]].field_16) * uint8(-uint8(_1615) + 8)), arg2
                if 0 > !((uint256(sub_267ed2b0) * uint8(-uint8(_1615) + 8)) - (Mask(80, 0, stor[sha3(_1666) + stor5[_1198 << 240]].field_16) * uint8(-uint8(_1615) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
