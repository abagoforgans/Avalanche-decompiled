contract main {




// =====================  Runtime code  =====================


const MAX_ALPHA = 8

const DAILY_WOOL_RATE = 10^13

const WOOL_CLAIM_TAX_PERCENTAGE = 20

const MINIMUM_TO_EXIT = (48 * 24 * 3600)

const MAXIMUM_GLOBAL_WOOL = 24 * 10^17


uint8 stor0; offset 160
address owner;
address stor1;
mapping of struct barn;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor8;
uint256 woolPerAlpha;
uint256 totalWoolEarned;
uint256 totalSheepStaked;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
address boosterAddress; offset 8

function barn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function totalWoolEarned() payable {
    return totalWoolEarned
}

function getRealOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(barn[arg1].field_96)
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

function totalSheepStaked() payable {
    return totalSheepStaked
}

function owner() payable {
    return owner
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function booster() payable {
    return boosterAddress
}

function woolPerAlpha() payable {
    return uint256(woolPerAlpha)
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

function setTotalSheepStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalSheepStaked = arg1
}

function setBooster(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    boosterAddress = arg1
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

function randomWolfOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    if totalAlphaStaked:
        idx = 5
        s = 0
        while idx <= 8:
            mem[0] = idx
            mem[32] = 4
            if uint256(pack[idx].field_0) and idx > -1 / uint256(pack[idx].field_0):
                revert with 0, 17
            if s > !(uint256(pack[idx].field_0) * idx):
                revert with 0, 17
            if uint32(arg1) % totalAlphaStaked >= s + (uint256(pack[idx].field_0) * idx):
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

function isSheep(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x94e56847 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
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
    return bool(ext_call.return_data[0])
}

function setBarnValuesForMigration(uint16 arg1, uint80 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (96 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require calldata.size - s >= 96
        _34 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == uint16(cd[s])
        mem[_34] = cd[s]
        require cd[(s + 32)] == Mask(80, 0, cd[(s + 32)])
        mem[_34 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_34 + 64] = cd[(s + 64)]
        mem[t] = _34
        s = s + 96
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _66 = mem[96]
    idx = 0
    while idx < _66:
        _67 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[96]:
            revert with 0, 50
        mem[_67] = mem[mem[(32 * idx) + 128] + 30 len 2]
        if idx >= mem[96]:
            revert with 0, 50
        mem[_67 + 32] = mem[mem[(32 * idx) + 128] + 54 len 10]
        if idx >= mem[96]:
            revert with 0, 50
        mem[_67 + 64] = mem[mem[(32 * idx) + 128] + 76 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 30 len 2]
        mem[32] = 3
        uint16(barn[mem[0]].field_0) = mem[_67 + 30 len 2]
        Mask(80, 0, barn[mem[0]].field_16) = mem[_67 + 54 len 10]
        address(barn[mem[0]].field_96) = mem[_67 + 76 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        _89 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 0, 50
        _92 = mem[mem[(32 * idx) + 128] + 32]
        mem[mem[64]] = mem[mem[(32 * idx) + 128] + 76 len 20]
        mem[mem[64] + 32] = uint16(_89)
        mem[mem[64] + 64] = Mask(80, 0, _92)
        emit TokenStaked(mem[mem[64]], _89 << 240, Mask(80, 0, _92));
        if idx == -1:
            revert with 0, 17
        _66 = mem[96]
        idx = idx + 1
        continue 
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not rescueEnabled:
        revert with 0, 'RESCUE DISABLED'
    require msg.sender == tx.origin
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
        staticcall stor1.0x94e56847 with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 320
        _72 = mem[64]
        if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 320
        require mem[_71] == bool(mem[_71])
        mem[_72] = mem[_71]
        require mem[_71 + 32] == mem[_71 + 63 len 1]
        mem[_72 + 32] = mem[_71 + 32]
        require mem[_71 + 64] == mem[_71 + 95 len 1]
        mem[_72 + 64] = mem[_71 + 64]
        require mem[_71 + 96] == mem[_71 + 127 len 1]
        mem[_72 + 96] = mem[_71 + 96]
        require mem[_71 + 128] == mem[_71 + 159 len 1]
        mem[_72 + 128] = mem[_71 + 128]
        require mem[_71 + 160] == mem[_71 + 191 len 1]
        mem[_72 + 160] = mem[_71 + 160]
        require mem[_71 + 192] == mem[_71 + 223 len 1]
        mem[_72 + 192] = mem[_71 + 192]
        require mem[_71 + 224] == mem[_71 + 255 len 1]
        mem[_72 + 224] = mem[_71 + 224]
        require mem[_71 + 256] == mem[_71 + 287 len 1]
        mem[_72 + 256] = mem[_71 + 256]
        require mem[_71 + 288] == mem[_71 + 319 len 1]
        mem[_72 + 288] = mem[_71 + 288]
        if mem[_72]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            _85 = mem[64]
            mem[64] = mem[64] + 96
            mem[_85] = uint16(barn[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_85 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_85 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)]].field_96)
            if address(barn[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            uint256(barn[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            if totalSheepStaked < 1:
                revert with 0, 17
            totalSheepStaked--
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(stor1)
            call stor1.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)], 0, 1);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _85
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        require ext_code.size(stor1)
        staticcall stor1.0x94e56847 with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 320
        _93 = mem[64]
        if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 320
        require mem[_90] == bool(mem[_90])
        mem[_93] = mem[_90]
        require mem[_90 + 32] == mem[_90 + 63 len 1]
        mem[_93 + 32] = mem[_90 + 32]
        require mem[_90 + 64] == mem[_90 + 95 len 1]
        mem[_93 + 64] = mem[_90 + 64]
        require mem[_90 + 96] == mem[_90 + 127 len 1]
        mem[_93 + 96] = mem[_90 + 96]
        require mem[_90 + 128] == mem[_90 + 159 len 1]
        mem[_93 + 128] = mem[_90 + 128]
        require mem[_90 + 160] == mem[_90 + 191 len 1]
        mem[_93 + 160] = mem[_90 + 160]
        require mem[_90 + 192] == mem[_90 + 223 len 1]
        mem[_93 + 192] = mem[_90 + 192]
        require mem[_90 + 224] == mem[_90 + 255 len 1]
        mem[_93 + 224] = mem[_90 + 224]
        require mem[_90 + 256] == mem[_90 + 287 len 1]
        mem[_93 + 256] = mem[_90 + 256]
        require mem[_90 + 288] == mem[_90 + 319 len 1]
        mem[_93 + 288] = mem[_90 + 288]
        _107 = mem[_93 + 288]
        if 8 < mem[_93 + 319 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_93 + 319 len 1] + 8)
        _108 = sha3(mem[0], 4)
        mem[32] = 5
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 4)
        _111 = mem[64]
        mem[64] = mem[64] + 96
        mem[_111] = uint16(stor[sha3(_108) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_0)
        mem[_111 + 32] = Mask(80, 0, stor[sha3(_108) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_16)
        mem[_111 + 64] = address(stor[sha3(_108) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_96)
        if address(stor[sha3(_108) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_107) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_107) + 8)
        mem[32] = 4
        if uint256(pack[-uint8(_107) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_107) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_107) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_107) + 8 << 248, 4)
        _116 = mem[64]
        mem[64] = mem[64] + 96
        mem[_116] = uint16(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        mem[_116 + 32] = Mask(80, 0, pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        mem[_116 + 64] = address(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_107) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_107) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_107) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_107) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor4[-uint8(_107) + 8 << 248][uint256(stor4[-uint8(_107) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_107) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_107) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(stor1)
        call stor1.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit WolfClaimed(cd[((32 * idx) + arg1 + 36)], 0, 1);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _111
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
}

function addManyToBarnAndPack(address arg1, uint16[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender == arg1:
        require msg.sender == tx.origin
        idx = 0
        while idx < arg2.length:
            require ext_code.size(stor1)
            staticcall stor1.MAX_PER_MINT() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _261 = mem[_259]
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            if uint16(cd[((32 * idx) + arg2 + 36)]) > !mem[_259]:
                revert with 0, 17
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _267 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_267] >= uint16(cd[((32 * idx) + arg2 + 36)]) + _261
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            if msg.sender == stor1:
                if uint16(cd[((32 * idx) + arg2 + 36)]):
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _287 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _289 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_287] == bool(mem[_287])
                    mem[_289] = mem[_287]
                    require mem[_287 + 32] == mem[_287 + 63 len 1]
                    mem[_289 + 32] = mem[_287 + 32]
                    require mem[_287 + 64] == mem[_287 + 95 len 1]
                    mem[_289 + 64] = mem[_287 + 64]
                    require mem[_287 + 96] == mem[_287 + 127 len 1]
                    mem[_289 + 96] = mem[_287 + 96]
                    require mem[_287 + 128] == mem[_287 + 159 len 1]
                    mem[_289 + 128] = mem[_287 + 128]
                    require mem[_287 + 160] == mem[_287 + 191 len 1]
                    mem[_289 + 160] = mem[_287 + 160]
                    require mem[_287 + 192] == mem[_287 + 223 len 1]
                    mem[_289 + 192] = mem[_287 + 192]
                    require mem[_287 + 224] == mem[_287 + 255 len 1]
                    mem[_289 + 224] = mem[_287 + 224]
                    require mem[_287 + 256] == mem[_287 + 287 len 1]
                    mem[_289 + 256] = mem[_287 + 256]
                    require mem[_287 + 288] == mem[_287 + 319 len 1]
                    mem[_289 + 288] = mem[_287 + 288]
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                    if mem[_289]:
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if totalWoolEarned >= 24 * 10^17:
                            _347 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_347] = uint16(cd[((32 * idx) + arg2 + 36)])
                            mem[_347 + 32] = Mask(80, 0, block.timestamp)
                            mem[_347 + 64] = arg1
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and totalSheepStaked > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10^13 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                                revert with 0, 17
                            if totalWoolEarned > !((10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                                revert with 0, 17
                            totalWoolEarned += (10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _379 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_379] = uint16(cd[((32 * idx) + arg2 + 36)])
                            mem[_379 + 32] = Mask(80, 0, block.timestamp)
                            mem[_379 + 64] = arg1
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[32] = 3
                        uint16(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                        Mask(80, 0, barn[cd[((32 * idx) + arg2 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_96) = arg1
                        if totalSheepStaked > -2:
                            revert with 0, 17
                        totalSheepStaked++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, block.timestamp);
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.0x94e56847 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + arg2 + 36)] << 240)
                        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 320
                        _369 = mem[64]
                        if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 320
                        require mem[_359] == bool(mem[_359])
                        mem[_369] = mem[_359]
                        require mem[_359 + 32] == mem[_359 + 63 len 1]
                        mem[_369 + 32] = mem[_359 + 32]
                        require mem[_359 + 64] == mem[_359 + 95 len 1]
                        mem[_369 + 64] = mem[_359 + 64]
                        require mem[_359 + 96] == mem[_359 + 127 len 1]
                        mem[_369 + 96] = mem[_359 + 96]
                        require mem[_359 + 128] == mem[_359 + 159 len 1]
                        mem[_369 + 128] = mem[_359 + 128]
                        require mem[_359 + 160] == mem[_359 + 191 len 1]
                        mem[_369 + 160] = mem[_359 + 160]
                        require mem[_359 + 192] == mem[_359 + 223 len 1]
                        mem[_369 + 192] = mem[_359 + 192]
                        require mem[_359 + 224] == mem[_359 + 255 len 1]
                        mem[_369 + 224] = mem[_359 + 224]
                        require mem[_359 + 256] == mem[_359 + 287 len 1]
                        mem[_369 + 256] = mem[_359 + 256]
                        require mem[_359 + 288] == mem[_359 + 319 len 1]
                        mem[_369 + 288] = mem[_359 + 288]
                        if 8 < mem[_369 + 319 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_369 + 319 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_369 + 319 len 1] + 8)
                        mem[0] = uint8(-mem[_369 + 319 len 1] + 8)
                        _463 = sha3(mem[0], 4)
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_463].field_0)
                        mem[32] = 4
                        _465 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_465] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_465 + 32] = Mask(80, 0, stor8)
                        mem[_465 + 64] = arg1
                        uint256(stor[_463].field_0)++
                        mem[0] = _463
                        Mask(80, 0, stor[uint256(stor[_463].field_0) + sha3(_463)].field_0) = Mask(80, 0, stor8)
                        uint16(stor[uint256(stor[_463].field_0) + sha3(_463)].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                        Mask(80, 0, stor[uint256(stor[_463].field_0) + sha3(_463)].field_16) = 0
                        address(stor[uint256(stor[_463].field_0) + sha3(_463)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 64] = uint256(woolPerAlpha)
                        emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, uint256(woolPerAlpha));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg2 + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _275 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_275] == mem[_275 + 12 len 20]
                if mem[_275 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + arg2 + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg2 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _307 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _311 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_307] == bool(mem[_307])
                mem[_311] = mem[_307]
                require mem[_307 + 32] == mem[_307 + 63 len 1]
                mem[_311 + 32] = mem[_307 + 32]
                require mem[_307 + 64] == mem[_307 + 95 len 1]
                mem[_311 + 64] = mem[_307 + 64]
                require mem[_307 + 96] == mem[_307 + 127 len 1]
                mem[_311 + 96] = mem[_307 + 96]
                require mem[_307 + 128] == mem[_307 + 159 len 1]
                mem[_311 + 128] = mem[_307 + 128]
                require mem[_307 + 160] == mem[_307 + 191 len 1]
                mem[_311 + 160] = mem[_307 + 160]
                require mem[_307 + 192] == mem[_307 + 223 len 1]
                mem[_311 + 192] = mem[_307 + 192]
                require mem[_307 + 224] == mem[_307 + 255 len 1]
                mem[_311 + 224] = mem[_307 + 224]
                require mem[_307 + 256] == mem[_307 + 287 len 1]
                mem[_311 + 256] = mem[_307 + 256]
                require mem[_307 + 288] == mem[_307 + 319 len 1]
                mem[_311 + 288] = mem[_307 + 288]
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                if mem[_311]:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if totalWoolEarned >= 24 * 10^17:
                        _396 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_396] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_396 + 32] = Mask(80, 0, block.timestamp)
                        mem[_396 + 64] = arg1
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and totalSheepStaked > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10^13 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                            revert with 0, 17
                        if totalWoolEarned > !((10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                            revert with 0, 17
                        totalWoolEarned += (10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        _437 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_437] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_437 + 32] = Mask(80, 0, block.timestamp)
                        mem[_437 + 64] = arg1
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[32] = 3
                    uint16(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                    Mask(80, 0, barn[cd[((32 * idx) + arg2 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_96) = arg1
                    if totalSheepStaked > -2:
                        revert with 0, 17
                    totalSheepStaked++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, block.timestamp);
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _409 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _421 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_409] == bool(mem[_409])
                    mem[_421] = mem[_409]
                    require mem[_409 + 32] == mem[_409 + 63 len 1]
                    mem[_421 + 32] = mem[_409 + 32]
                    require mem[_409 + 64] == mem[_409 + 95 len 1]
                    mem[_421 + 64] = mem[_409 + 64]
                    require mem[_409 + 96] == mem[_409 + 127 len 1]
                    mem[_421 + 96] = mem[_409 + 96]
                    require mem[_409 + 128] == mem[_409 + 159 len 1]
                    mem[_421 + 128] = mem[_409 + 128]
                    require mem[_409 + 160] == mem[_409 + 191 len 1]
                    mem[_421 + 160] = mem[_409 + 160]
                    require mem[_409 + 192] == mem[_409 + 223 len 1]
                    mem[_421 + 192] = mem[_409 + 192]
                    require mem[_409 + 224] == mem[_409 + 255 len 1]
                    mem[_421 + 224] = mem[_409 + 224]
                    require mem[_409 + 256] == mem[_409 + 287 len 1]
                    mem[_421 + 256] = mem[_409 + 256]
                    require mem[_409 + 288] == mem[_409 + 319 len 1]
                    mem[_421 + 288] = mem[_409 + 288]
                    if 8 < mem[_421 + 319 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_421 + 319 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_421 + 319 len 1] + 8)
                    mem[0] = uint8(-mem[_421 + 319 len 1] + 8)
                    _489 = sha3(mem[0], 4)
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_489].field_0)
                    mem[32] = 4
                    _491 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_491] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[_491 + 32] = Mask(80, 0, stor8)
                    mem[_491 + 64] = arg1
                    uint256(stor[_489].field_0)++
                    mem[0] = _489
                    Mask(80, 0, stor[uint256(stor[_489].field_0) + sha3(_489)].field_0) = Mask(80, 0, stor8)
                    uint16(stor[uint256(stor[_489].field_0) + sha3(_489)].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                    Mask(80, 0, stor[uint256(stor[_489].field_0) + sha3(_489)].field_16) = 0
                    address(stor[uint256(stor[_489].field_0) + sha3(_489)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 64] = uint256(woolPerAlpha)
                    emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, uint256(woolPerAlpha));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        require msg.sender == tx.origin
        idx = 0
        while idx < arg2.length:
            require ext_code.size(stor1)
            staticcall stor1.MAX_PER_MINT() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _260 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _262 = mem[_260]
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            if uint16(cd[((32 * idx) + arg2 + 36)]) > !mem[_260]:
                revert with 0, 17
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_268] >= uint16(cd[((32 * idx) + arg2 + 36)]) + _262
            if idx >= arg2.length:
                revert with 0, 50
            require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
            if msg.sender == stor1:
                if uint16(cd[((32 * idx) + arg2 + 36)]):
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _290 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_288] == bool(mem[_288])
                    mem[_290] = mem[_288]
                    require mem[_288 + 32] == mem[_288 + 63 len 1]
                    mem[_290 + 32] = mem[_288 + 32]
                    require mem[_288 + 64] == mem[_288 + 95 len 1]
                    mem[_290 + 64] = mem[_288 + 64]
                    require mem[_288 + 96] == mem[_288 + 127 len 1]
                    mem[_290 + 96] = mem[_288 + 96]
                    require mem[_288 + 128] == mem[_288 + 159 len 1]
                    mem[_290 + 128] = mem[_288 + 128]
                    require mem[_288 + 160] == mem[_288 + 191 len 1]
                    mem[_290 + 160] = mem[_288 + 160]
                    require mem[_288 + 192] == mem[_288 + 223 len 1]
                    mem[_290 + 192] = mem[_288 + 192]
                    require mem[_288 + 224] == mem[_288 + 255 len 1]
                    mem[_290 + 224] = mem[_288 + 224]
                    require mem[_288 + 256] == mem[_288 + 287 len 1]
                    mem[_290 + 256] = mem[_288 + 256]
                    require mem[_288 + 288] == mem[_288 + 319 len 1]
                    mem[_290 + 288] = mem[_288 + 288]
                    if idx >= arg2.length:
                        revert with 0, 50
                    require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                    if mem[_290]:
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if totalWoolEarned >= 24 * 10^17:
                            _353 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_353] = uint16(cd[((32 * idx) + arg2 + 36)])
                            mem[_353 + 32] = Mask(80, 0, block.timestamp)
                            mem[_353 + 64] = arg1
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and totalSheepStaked > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10^13 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                                revert with 0, 17
                            if totalWoolEarned > !((10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                                revert with 0, 17
                            totalWoolEarned += (10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _384 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_384] = uint16(cd[((32 * idx) + arg2 + 36)])
                            mem[_384 + 32] = Mask(80, 0, block.timestamp)
                            mem[_384 + 64] = arg1
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[32] = 3
                        uint16(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                        Mask(80, 0, barn[cd[((32 * idx) + arg2 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_96) = arg1
                        if totalSheepStaked > -2:
                            revert with 0, 17
                        totalSheepStaked++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, block.timestamp);
                    else:
                        require ext_code.size(stor1)
                        staticcall stor1.0x94e56847 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + arg2 + 36)] << 240)
                        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _361 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 320
                        _370 = mem[64]
                        if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 320
                        require mem[_361] == bool(mem[_361])
                        mem[_370] = mem[_361]
                        require mem[_361 + 32] == mem[_361 + 63 len 1]
                        mem[_370 + 32] = mem[_361 + 32]
                        require mem[_361 + 64] == mem[_361 + 95 len 1]
                        mem[_370 + 64] = mem[_361 + 64]
                        require mem[_361 + 96] == mem[_361 + 127 len 1]
                        mem[_370 + 96] = mem[_361 + 96]
                        require mem[_361 + 128] == mem[_361 + 159 len 1]
                        mem[_370 + 128] = mem[_361 + 128]
                        require mem[_361 + 160] == mem[_361 + 191 len 1]
                        mem[_370 + 160] = mem[_361 + 160]
                        require mem[_361 + 192] == mem[_361 + 223 len 1]
                        mem[_370 + 192] = mem[_361 + 192]
                        require mem[_361 + 224] == mem[_361 + 255 len 1]
                        mem[_370 + 224] = mem[_361 + 224]
                        require mem[_361 + 256] == mem[_361 + 287 len 1]
                        mem[_370 + 256] = mem[_361 + 256]
                        require mem[_361 + 288] == mem[_361 + 319 len 1]
                        mem[_370 + 288] = mem[_361 + 288]
                        if 8 < mem[_370 + 319 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_370 + 319 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_370 + 319 len 1] + 8)
                        mem[0] = uint8(-mem[_370 + 319 len 1] + 8)
                        _472 = sha3(mem[0], 4)
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_472].field_0)
                        mem[32] = 4
                        _474 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_474] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_474 + 32] = Mask(80, 0, stor8)
                        mem[_474 + 64] = arg1
                        uint256(stor[_472].field_0)++
                        mem[0] = _472
                        Mask(80, 0, stor[uint256(stor[_472].field_0) + sha3(_472)].field_0) = Mask(80, 0, stor8)
                        uint16(stor[uint256(stor[_472].field_0) + sha3(_472)].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                        Mask(80, 0, stor[uint256(stor[_472].field_0) + sha3(_472)].field_16) = 0
                        address(stor[uint256(stor[_472].field_0) + sha3(_472)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 64] = uint256(woolPerAlpha)
                        emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, uint256(woolPerAlpha));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg2 + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_276] == mem[_276 + 12 len 20]
                if mem[_276 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + arg2 + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg2 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _308 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _312 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_308] == bool(mem[_308])
                mem[_312] = mem[_308]
                require mem[_308 + 32] == mem[_308 + 63 len 1]
                mem[_312 + 32] = mem[_308 + 32]
                require mem[_308 + 64] == mem[_308 + 95 len 1]
                mem[_312 + 64] = mem[_308 + 64]
                require mem[_308 + 96] == mem[_308 + 127 len 1]
                mem[_312 + 96] = mem[_308 + 96]
                require mem[_308 + 128] == mem[_308 + 159 len 1]
                mem[_312 + 128] = mem[_308 + 128]
                require mem[_308 + 160] == mem[_308 + 191 len 1]
                mem[_312 + 160] = mem[_308 + 160]
                require mem[_308 + 192] == mem[_308 + 223 len 1]
                mem[_312 + 192] = mem[_308 + 192]
                require mem[_308 + 224] == mem[_308 + 255 len 1]
                mem[_312 + 224] = mem[_308 + 224]
                require mem[_308 + 256] == mem[_308 + 287 len 1]
                mem[_312 + 256] = mem[_308 + 256]
                require mem[_308 + 288] == mem[_308 + 319 len 1]
                mem[_312 + 288] = mem[_308 + 288]
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                if mem[_312]:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if totalWoolEarned >= 24 * 10^17:
                        _402 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_402] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_402 + 32] = Mask(80, 0, block.timestamp)
                        mem[_402 + 64] = arg1
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and totalSheepStaked > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10^13 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                            revert with 0, 17
                        if totalWoolEarned > !((10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                            revert with 0, 17
                        totalWoolEarned += (10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        _442 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_442] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_442 + 32] = Mask(80, 0, block.timestamp)
                        mem[_442 + 64] = arg1
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[32] = 3
                    uint16(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                    Mask(80, 0, barn[cd[((32 * idx) + arg2 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[cd[((32 * idx) + arg2 + 36)] << 240].field_96) = arg1
                    if totalSheepStaked > -2:
                        revert with 0, 17
                    totalSheepStaked++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, block.timestamp);
                else:
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _422 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_413] == bool(mem[_413])
                    mem[_422] = mem[_413]
                    require mem[_413 + 32] == mem[_413 + 63 len 1]
                    mem[_422 + 32] = mem[_413 + 32]
                    require mem[_413 + 64] == mem[_413 + 95 len 1]
                    mem[_422 + 64] = mem[_413 + 64]
                    require mem[_413 + 96] == mem[_413 + 127 len 1]
                    mem[_422 + 96] = mem[_413 + 96]
                    require mem[_413 + 128] == mem[_413 + 159 len 1]
                    mem[_422 + 128] = mem[_413 + 128]
                    require mem[_413 + 160] == mem[_413 + 191 len 1]
                    mem[_422 + 160] = mem[_413 + 160]
                    require mem[_413 + 192] == mem[_413 + 223 len 1]
                    mem[_422 + 192] = mem[_413 + 192]
                    require mem[_413 + 224] == mem[_413 + 255 len 1]
                    mem[_422 + 224] = mem[_413 + 224]
                    require mem[_413 + 256] == mem[_413 + 287 len 1]
                    mem[_422 + 256] = mem[_413 + 256]
                    require mem[_413 + 288] == mem[_413 + 319 len 1]
                    mem[_422 + 288] = mem[_413 + 288]
                    if 8 < mem[_422 + 319 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_422 + 319 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_422 + 319 len 1] + 8)
                    mem[0] = uint8(-mem[_422 + 319 len 1] + 8)
                    _498 = sha3(mem[0], 4)
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_498].field_0)
                    mem[32] = 4
                    _500 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_500] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[_500 + 32] = Mask(80, 0, stor8)
                    mem[_500 + 64] = arg1
                    uint256(stor[_498].field_0)++
                    mem[0] = _498
                    Mask(80, 0, stor[uint256(stor[_498].field_0) + sha3(_498)].field_0) = Mask(80, 0, stor8)
                    uint16(stor[uint256(stor[_498].field_0) + sha3(_498)].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                    Mask(80, 0, stor[uint256(stor[_498].field_0) + sha3(_498)].field_16) = 0
                    address(stor[uint256(stor[_498].field_0) + sha3(_498)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[mem[64] + 64] = uint256(woolPerAlpha)
                    emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, uint256(woolPerAlpha));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function claimManyFromBarnAndPack(uint16[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if stor0:
        revert with 0, 'Pausable: paused'
    if totalWoolEarned >= 24 * 10^17:
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == uint16(cd[(arg1 + 36)])
        mem[0] = uint16(cd[(arg1 + 36)])
        mem[32] = 3
        mem[64] = 192
        mem[96] = uint16(barn[cd[(arg1 + 36)] << 240].field_0)
        mem[128] = Mask(80, 0, barn[cd[(arg1 + 36)] << 240].field_16)
        mem[160] = address(barn[cd[(arg1 + 36)] << 240].field_96)
        require tx.origin == msg.sender
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(stor1)
            staticcall stor1.0x94e56847 with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + arg1 + 36)] << 240)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _719 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _721 = mem[64]
            if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 320
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
            require mem[_719 + 288] == mem[_719 + 319 len 1]
            mem[_721 + 288] = mem[_719 + 288]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            if mem[_721]:
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 3
                _748 = mem[64]
                mem[64] = mem[64] + 96
                mem[_748] = uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0)
                mem[_748 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)
                mem[_748 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96)
                if address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if totalWoolEarned < 24 * 10^17:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _992 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_992] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_992 + 32] = Mask(80, 0, block.timestamp)
                                mem[_992 + 64] = msg.sender
                            else:
                                if 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1091 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1091] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1091 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1091 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _833 = mem[_824]
                            if block.number < 1:
                                revert with 0, 17
                            _863 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _864 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _866 = sha3(mem[_864 + 32 len mem[_864]])
                            if not _833:
                                revert with 0, 18
                            mem[0] = sha3(mem[_864 + 32 len mem[_864]]) % _833
                            mem[_863 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_863 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_863 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_863 + 276] = block.hash(block.number - 4)
                            mem[_863 + 308] = tx.origin
                            mem[_863 + 328] = _866 % _833
                            mem[_863 + 360] = block.hash(block.number - 2)
                            mem[_863 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_863 + 402] = block.hash(block.number - 3)
                            mem[_863 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_863 + 454] = block.hash(block.number - 1)
                            mem[_863 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_863 + 518] = block.timestamp
                            mem[_863 + 244] = 274
                            mem[64] = _863 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _866 % _833, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_863 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_863 + 650] = 128
                                mem[_863 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_863 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_863 + 582] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_863 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_863 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_863 + 650] = 128
                                mem[_863 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_863 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_863 + 582] = 0
                                mem[_863 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _893 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_893] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_893 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_893 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _964 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_964] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_964 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_964 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _794 = mem[_788]
                                if block.number < 1:
                                    revert with 0, 17
                                _805 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _806 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _808 = sha3(mem[_806 + 32 len mem[_806]])
                                if not _794:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_806 + 32 len mem[_806]]) % _794
                                mem[_805 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_805 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_805 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_805 + 276] = block.hash(block.number - 4)
                                mem[_805 + 308] = tx.origin
                                mem[_805 + 328] = _808 % _794
                                mem[_805 + 360] = block.hash(block.number - 2)
                                mem[_805 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_805 + 402] = block.hash(block.number - 3)
                                mem[_805 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_805 + 454] = block.hash(block.number - 1)
                                mem[_805 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_805 + 518] = block.timestamp
                                mem[_805 + 244] = 274
                                mem[64] = _805 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _808 % _794, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_805 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_805 + 650] = 128
                                mem[_805 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_805 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_805 + 582] = 0
                                mem[_805 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _999 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_999] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_999 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_999 + 64] = msg.sender
                                else:
                                    if 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1107 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1107] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1107 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1107 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _847 = mem[_827]
                                if block.number < 1:
                                    revert with 0, 17
                                _873 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _874 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _876 = sha3(mem[_874 + 32 len mem[_874]])
                                if not _847:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_874 + 32 len mem[_874]]) % _847
                                mem[_873 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_873 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_873 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_873 + 276] = block.hash(block.number - 4)
                                mem[_873 + 308] = tx.origin
                                mem[_873 + 328] = _876 % _847
                                mem[_873 + 360] = block.hash(block.number - 2)
                                mem[_873 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_873 + 402] = block.hash(block.number - 3)
                                mem[_873 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_873 + 454] = block.hash(block.number - 1)
                                mem[_873 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_873 + 518] = block.timestamp
                                mem[_873 + 244] = 274
                                mem[64] = _873 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _876 % _847, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_873 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_873 + 650] = 128
                                    mem[_873 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_873 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_873 + 582] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_873 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_873 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_873 + 650] = 128
                                    mem[_873 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_873 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_873 + 582] = 0
                                    mem[_873 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                else:
                    if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S WOOL'
                    if totalWoolEarned < 24 * 10^17:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1061 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1061] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1061 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1061 + 64] = msg.sender
                            else:
                                if 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1170 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1170] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1170 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1170 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _853 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _867 = mem[_853]
                            if block.number < 1:
                                revert with 0, 17
                            _895 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _896 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _898 = sha3(mem[_896 + 32 len mem[_896]])
                            if not _867:
                                revert with 0, 18
                            mem[0] = sha3(mem[_896 + 32 len mem[_896]]) % _867
                            mem[_895 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_895 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_895 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_895 + 276] = block.hash(block.number - 4)
                            mem[_895 + 308] = tx.origin
                            mem[_895 + 328] = _898 % _867
                            mem[_895 + 360] = block.hash(block.number - 2)
                            mem[_895 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_895 + 402] = block.hash(block.number - 3)
                            mem[_895 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_895 + 454] = block.hash(block.number - 1)
                            mem[_895 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_895 + 518] = block.timestamp
                            mem[_895 + 244] = 274
                            mem[64] = _895 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _898 % _867, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_895 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_895 + 650] = 128
                                mem[_895 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_895 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_895 + 582] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_895 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_895 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_895 + 650] = 128
                                mem[_895 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_895 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_895 + 582] = 0
                                mem[_895 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _946 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_946] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_946 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_946 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1022 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1022] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1022 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1022 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _801 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _811 = mem[_801]
                                if block.number < 1:
                                    revert with 0, 17
                                _834 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _835 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _837 = sha3(mem[_835 + 32 len mem[_835]])
                                if not _811:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_835 + 32 len mem[_835]]) % _811
                                mem[_834 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_834 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_834 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_834 + 276] = block.hash(block.number - 4)
                                mem[_834 + 308] = tx.origin
                                mem[_834 + 328] = _837 % _811
                                mem[_834 + 360] = block.hash(block.number - 2)
                                mem[_834 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_834 + 402] = block.hash(block.number - 3)
                                mem[_834 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_834 + 454] = block.hash(block.number - 1)
                                mem[_834 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_834 + 518] = block.timestamp
                                mem[_834 + 244] = 274
                                mem[64] = _834 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _837 % _811, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_834 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_834 + 650] = 128
                                mem[_834 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_834 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_834 + 582] = 0
                                mem[_834 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1076 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1076] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1076 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1076 + 64] = msg.sender
                                else:
                                    if 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1176 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1176] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1176 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1176 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _856 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _878 = mem[_856]
                                if block.number < 1:
                                    revert with 0, 17
                                _912 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _913 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _915 = sha3(mem[_913 + 32 len mem[_913]])
                                if not _878:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_913 + 32 len mem[_913]]) % _878
                                mem[_912 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_912 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_912 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_912 + 276] = block.hash(block.number - 4)
                                mem[_912 + 308] = tx.origin
                                mem[_912 + 328] = _915 % _878
                                mem[_912 + 360] = block.hash(block.number - 2)
                                mem[_912 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_912 + 402] = block.hash(block.number - 3)
                                mem[_912 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_912 + 454] = block.hash(block.number - 1)
                                mem[_912 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_912 + 518] = block.timestamp
                                mem[_912 + 244] = 274
                                mem[64] = _912 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _915 % _878, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_912 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_912 + 650] = 128
                                    mem[_912 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_912 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_912 + 582] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_912 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_912 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_912 + 650] = 128
                                    mem[_912 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_912 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_912 + 582] = 0
                                    mem[_912 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_755] == mem[_755 + 12 len 20]
                if mem[_755 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _793 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _803 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_793] == bool(mem[_793])
                mem[_803] = mem[_793]
                require mem[_793 + 32] == mem[_793 + 63 len 1]
                mem[_803 + 32] = mem[_793 + 32]
                require mem[_793 + 64] == mem[_793 + 95 len 1]
                mem[_803 + 64] = mem[_793 + 64]
                require mem[_793 + 96] == mem[_793 + 127 len 1]
                mem[_803 + 96] = mem[_793 + 96]
                require mem[_793 + 128] == mem[_793 + 159 len 1]
                mem[_803 + 128] = mem[_793 + 128]
                require mem[_793 + 160] == mem[_793 + 191 len 1]
                mem[_803 + 160] = mem[_793 + 160]
                require mem[_793 + 192] == mem[_793 + 223 len 1]
                mem[_803 + 192] = mem[_793 + 192]
                require mem[_793 + 224] == mem[_793 + 255 len 1]
                mem[_803 + 224] = mem[_793 + 224]
                require mem[_793 + 256] == mem[_793 + 287 len 1]
                mem[_803 + 256] = mem[_793 + 256]
                require mem[_793 + 288] == mem[_793 + 319 len 1]
                mem[_803 + 288] = mem[_793 + 288]
                _1227 = mem[_803 + 288]
                if 8 < mem[_803 + 319 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_803 + 319 len 1] + 8)
                _1263 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1278 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1278] = uint16(stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0)
                mem[_1278 + 32] = Mask(80, 0, stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16)
                mem[_1278 + 64] = address(stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96)
                if address(stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(woolPerAlpha) < Mask(80, 0, stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1227) + 8) and uint256(woolPerAlpha) - Mask(80, 0, stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1227) + 8):
                    revert with 0, 17
                if not arg2:
                    _1347 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1347] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_1347 + 32] = Mask(80, 0, stor8)
                    mem[_1347 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1227) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1227) + 8 << 248, 4)
                    uint16(pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                    Mask(80, 0, pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1227) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1227) + 8)
                    mem[32] = 4
                    if uint256(pack[-uint8(_1227) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1227) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1227) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1227) + 8 << 248, 4)
                    _1388 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1388] = uint16(pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0)
                    mem[_1388 + 32] = Mask(80, 0, pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0)
                    mem[_1388 + 64] = address(pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1227) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1227) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = address(pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1227) + 8 << 248][uint256(stor4[-uint8(_1227) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not uint256(pack[-uint8(_1227) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1227) + 8 << 248][uint256(pack[-uint8(_1227) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1227) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = (uint256(woolPerAlpha) * uint8(-uint8(_1227) + 8)) - (Mask(80, 0, stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1227) + 8))
                mem[mem[64] + 64] = arg2
                emit WolfClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (uint256(woolPerAlpha) * uint8(-uint8(_1227) + 8)) - (Mask(80, 0, stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1227) + 8)), arg2);
                if 0 > !((uint256(woolPerAlpha) * uint8(-uint8(_1227) + 8)) - (Mask(80, 0, stor[sha3(_1263) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1227) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and totalSheepStaked > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10^13 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
            revert with 0, 17
        if totalWoolEarned > !((10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
            revert with 0, 17
        totalWoolEarned += (10^13 * block.timestamp * totalSheepStaked) - (10^13 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        if 0 >= arg1.length:
            revert with 0, 50
        require cd[(arg1 + 36)] == uint16(cd[(arg1 + 36)])
        mem[0] = uint16(cd[(arg1 + 36)])
        mem[32] = 3
        mem[64] = 192
        mem[96] = uint16(barn[cd[(arg1 + 36)] << 240].field_0)
        mem[128] = Mask(80, 0, barn[cd[(arg1 + 36)] << 240].field_16)
        mem[160] = address(barn[cd[(arg1 + 36)] << 240].field_96)
        require tx.origin == msg.sender
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(stor1)
            staticcall stor1.0x94e56847 with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + arg1 + 36)] << 240)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _720 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _722 = mem[64]
            if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 320
            require mem[_720] == bool(mem[_720])
            mem[_722] = mem[_720]
            require mem[_720 + 32] == mem[_720 + 63 len 1]
            mem[_722 + 32] = mem[_720 + 32]
            require mem[_720 + 64] == mem[_720 + 95 len 1]
            mem[_722 + 64] = mem[_720 + 64]
            require mem[_720 + 96] == mem[_720 + 127 len 1]
            mem[_722 + 96] = mem[_720 + 96]
            require mem[_720 + 128] == mem[_720 + 159 len 1]
            mem[_722 + 128] = mem[_720 + 128]
            require mem[_720 + 160] == mem[_720 + 191 len 1]
            mem[_722 + 160] = mem[_720 + 160]
            require mem[_720 + 192] == mem[_720 + 223 len 1]
            mem[_722 + 192] = mem[_720 + 192]
            require mem[_720 + 224] == mem[_720 + 255 len 1]
            mem[_722 + 224] = mem[_720 + 224]
            require mem[_720 + 256] == mem[_720 + 287 len 1]
            mem[_722 + 256] = mem[_720 + 256]
            require mem[_720 + 288] == mem[_720 + 319 len 1]
            mem[_722 + 288] = mem[_720 + 288]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            if mem[_722]:
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 3
                _752 = mem[64]
                mem[64] = mem[64] + 96
                mem[_752] = uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0)
                mem[_752 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)
                mem[_752 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96)
                if address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if totalWoolEarned < 24 * 10^17:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _997 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_997] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_997 + 32] = Mask(80, 0, block.timestamp)
                                mem[_997 + 64] = msg.sender
                            else:
                                if 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1099 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1099] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1099 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1099 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _840 = mem[_826]
                            if block.number < 1:
                                revert with 0, 17
                            _868 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _869 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _871 = sha3(mem[_869 + 32 len mem[_869]])
                            if not _840:
                                revert with 0, 18
                            mem[0] = sha3(mem[_869 + 32 len mem[_869]]) % _840
                            mem[_868 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_868 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_868 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_868 + 276] = block.hash(block.number - 4)
                            mem[_868 + 308] = tx.origin
                            mem[_868 + 328] = _871 % _840
                            mem[_868 + 360] = block.hash(block.number - 2)
                            mem[_868 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_868 + 402] = block.hash(block.number - 3)
                            mem[_868 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_868 + 454] = block.hash(block.number - 1)
                            mem[_868 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_868 + 518] = block.timestamp
                            mem[_868 + 244] = 274
                            mem[64] = _868 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _871 % _840, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_868 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_868 + 650] = 128
                                mem[_868 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_868 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_868 + 582] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_868 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_868 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_868 + 650] = 128
                                mem[_868 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_868 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_868 + 582] = 0
                                mem[_868 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _901 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_901] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_901 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_901 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _968 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_968] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_968 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_968 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _792 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _798 = mem[_792]
                                if block.number < 1:
                                    revert with 0, 17
                                _812 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _813 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _815 = sha3(mem[_813 + 32 len mem[_813]])
                                if not _798:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_813 + 32 len mem[_813]]) % _798
                                mem[_812 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_812 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_812 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_812 + 276] = block.hash(block.number - 4)
                                mem[_812 + 308] = tx.origin
                                mem[_812 + 328] = _815 % _798
                                mem[_812 + 360] = block.hash(block.number - 2)
                                mem[_812 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_812 + 402] = block.hash(block.number - 3)
                                mem[_812 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_812 + 454] = block.hash(block.number - 1)
                                mem[_812 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_812 + 518] = block.timestamp
                                mem[_812 + 244] = 274
                                mem[64] = _812 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _815 % _798, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_812 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_812 + 650] = 128
                                mem[_812 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_812 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_812 + 582] = 0
                                mem[_812 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1006 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1006] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1006 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1006 + 64] = msg.sender
                                else:
                                    if 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1119 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1119] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1119 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1119 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _850 = mem[_830]
                                if block.number < 1:
                                    revert with 0, 17
                                _879 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _880 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _882 = sha3(mem[_880 + 32 len mem[_880]])
                                if not _850:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_880 + 32 len mem[_880]]) % _850
                                mem[_879 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_879 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_879 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_879 + 276] = block.hash(block.number - 4)
                                mem[_879 + 308] = tx.origin
                                mem[_879 + 328] = _882 % _850
                                mem[_879 + 360] = block.hash(block.number - 2)
                                mem[_879 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_879 + 402] = block.hash(block.number - 3)
                                mem[_879 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_879 + 454] = block.hash(block.number - 1)
                                mem[_879 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_879 + 518] = block.timestamp
                                mem[_879 + 244] = 274
                                mem[64] = _879 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _882 % _850, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_879 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_879 + 650] = 128
                                    mem[_879 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_879 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_879 + 582] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_879 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_879 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_879 + 650] = 128
                                    mem[_879 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_879 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_879 + 582] = 0
                                    mem[_879 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                else:
                    if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S WOOL'
                    if totalWoolEarned < 24 * 10^17:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1071 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1071] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1071 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1071 + 64] = msg.sender
                            else:
                                if 20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1172 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1172] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1172 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1172 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _854 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _872 = mem[_854]
                            if block.number < 1:
                                revert with 0, 17
                            _903 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _904 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _906 = sha3(mem[_904 + 32 len mem[_904]])
                            if not _872:
                                revert with 0, 18
                            mem[0] = sha3(mem[_904 + 32 len mem[_904]]) % _872
                            mem[_903 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_903 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_903 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_903 + 276] = block.hash(block.number - 4)
                            mem[_903 + 308] = tx.origin
                            mem[_903 + 328] = _906 % _872
                            mem[_903 + 360] = block.hash(block.number - 2)
                            mem[_903 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_903 + 402] = block.hash(block.number - 3)
                            mem[_903 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_903 + 454] = block.hash(block.number - 1)
                            mem[_903 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_903 + 518] = block.timestamp
                            mem[_903 + 244] = 274
                            mem[64] = _903 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _906 % _872, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_903 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_903 + 650] = 128
                                mem[_903 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_903 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_903 + 582] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_903 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_903 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_903 + 650] = 128
                                mem[_903 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_903 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_903 + 582] = 0
                                mem[_903 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _951 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_951] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_951 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_951 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1032 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1032] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1032 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1032 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _802 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _818 = mem[_802]
                                if block.number < 1:
                                    revert with 0, 17
                                _841 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _842 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _844 = sha3(mem[_842 + 32 len mem[_842]])
                                if not _818:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_842 + 32 len mem[_842]]) % _818
                                mem[_841 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_841 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_841 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_841 + 276] = block.hash(block.number - 4)
                                mem[_841 + 308] = tx.origin
                                mem[_841 + 328] = _844 % _818
                                mem[_841 + 360] = block.hash(block.number - 2)
                                mem[_841 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_841 + 402] = block.hash(block.number - 3)
                                mem[_841 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_841 + 454] = block.hash(block.number - 1)
                                mem[_841 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_841 + 518] = block.timestamp
                                mem[_841 + 244] = 274
                                mem[64] = _841 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _844 % _818, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_841 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_841 + 650] = 128
                                mem[_841 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_841 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_841 + 582] = 0
                                mem[_841 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10^13 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1085 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1085] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1085 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1085 + 64] = msg.sender
                                else:
                                    if 20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1185 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1185] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1185 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1185 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _860 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _884 = mem[_860]
                                if block.number < 1:
                                    revert with 0, 17
                                _922 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _923 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _925 = sha3(mem[_923 + 32 len mem[_923]])
                                if not _884:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_923 + 32 len mem[_923]]) % _884
                                mem[_922 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_922 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_922 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_922 + 276] = block.hash(block.number - 4)
                                mem[_922 + 308] = tx.origin
                                mem[_922 + 328] = _925 % _884
                                mem[_922 + 360] = block.hash(block.number - 2)
                                mem[_922 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_922 + 402] = block.hash(block.number - 3)
                                mem[_922 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_922 + 454] = block.hash(block.number - 1)
                                mem[_922 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_922 + 518] = block.timestamp
                                mem[_922 + 244] = 274
                                mem[64] = _922 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _925 % _884, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_922 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_922 + 650] = 128
                                    mem[_922 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_922 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_922 + 582] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_922 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_922 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_922 + 650] = 128
                                    mem[_922 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_922 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_922 + 582] = 0
                                    mem[_922 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _757 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_757] == mem[_757 + 12 len 20]
                if mem[_757 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _797 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _804 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_797] == bool(mem[_797])
                mem[_804] = mem[_797]
                require mem[_797 + 32] == mem[_797 + 63 len 1]
                mem[_804 + 32] = mem[_797 + 32]
                require mem[_797 + 64] == mem[_797 + 95 len 1]
                mem[_804 + 64] = mem[_797 + 64]
                require mem[_797 + 96] == mem[_797 + 127 len 1]
                mem[_804 + 96] = mem[_797 + 96]
                require mem[_797 + 128] == mem[_797 + 159 len 1]
                mem[_804 + 128] = mem[_797 + 128]
                require mem[_797 + 160] == mem[_797 + 191 len 1]
                mem[_804 + 160] = mem[_797 + 160]
                require mem[_797 + 192] == mem[_797 + 223 len 1]
                mem[_804 + 192] = mem[_797 + 192]
                require mem[_797 + 224] == mem[_797 + 255 len 1]
                mem[_804 + 224] = mem[_797 + 224]
                require mem[_797 + 256] == mem[_797 + 287 len 1]
                mem[_804 + 256] = mem[_797 + 256]
                require mem[_797 + 288] == mem[_797 + 319 len 1]
                mem[_804 + 288] = mem[_797 + 288]
                _1231 = mem[_804 + 288]
                if 8 < mem[_804 + 319 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_804 + 319 len 1] + 8)
                _1270 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1283 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1283] = uint16(stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0)
                mem[_1283 + 32] = Mask(80, 0, stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16)
                mem[_1283 + 64] = address(stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96)
                if address(stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(woolPerAlpha) < Mask(80, 0, stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1231) + 8) and uint256(woolPerAlpha) - Mask(80, 0, stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1231) + 8):
                    revert with 0, 17
                if not arg2:
                    _1351 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1351] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_1351 + 32] = Mask(80, 0, stor8)
                    mem[_1351 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1231) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1231) + 8 << 248, 4)
                    uint16(pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                    Mask(80, 0, pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1231) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1231) + 8)
                    mem[32] = 4
                    if uint256(pack[-uint8(_1231) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1231) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1231) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1231) + 8 << 248, 4)
                    _1392 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1392] = uint16(pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0)
                    mem[_1392 + 32] = Mask(80, 0, pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0)
                    mem[_1392 + 64] = address(pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1231) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1231) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = address(pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1231) + 8 << 248][uint256(stor4[-uint8(_1231) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not uint256(pack[-uint8(_1231) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1231) + 8 << 248][uint256(pack[-uint8(_1231) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1231) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = (uint256(woolPerAlpha) * uint8(-uint8(_1231) + 8)) - (Mask(80, 0, stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1231) + 8))
                mem[mem[64] + 64] = arg2
                emit WolfClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (uint256(woolPerAlpha) * uint8(-uint8(_1231) + 8)) - (Mask(80, 0, stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1231) + 8)), arg2);
                if 0 > !((uint256(woolPerAlpha) * uint8(-uint8(_1231) + 8)) - (Mask(80, 0, stor[sha3(_1270) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1231) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
