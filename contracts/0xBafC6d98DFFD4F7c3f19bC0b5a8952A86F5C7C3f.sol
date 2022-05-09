contract main {




// =====================  Runtime code  =====================


const MAX_ALPHA = 8

const DAILY_WOOL_RATE = 10000 * 10^18

const WOOL_CLAIM_TAX_PERCENTAGE = 20

const MINIMUM_TO_EXIT = (48 * 24 * 3600)

const MAXIMUM_GLOBAL_WOOL = 2400000000 * 10^18


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
uint8 stor12;

function barn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
}

function rescueEnabled() payable {
    return bool(stor12)
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

function setTotalWoolEarned(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalWoolEarned = arg1
}

function setTotalAlphaStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalAlphaStaked = arg1
}

function setTotalSheepStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalSheepStaked = arg1
}

function setLastClaimTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lastClaimTimestamp = arg1
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = uint8(arg1)
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
    if not stor12:
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
                        if totalWoolEarned >= 2400000000 * 10^18:
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
                            if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                                revert with 0, 17
                            if totalWoolEarned > !((10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                                revert with 0, 17
                            totalWoolEarned += (10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
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
                    if totalWoolEarned >= 2400000000 * 10^18:
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
                        if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                            revert with 0, 17
                        if totalWoolEarned > !((10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                            revert with 0, 17
                        totalWoolEarned += (10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
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
                        if totalWoolEarned >= 2400000000 * 10^18:
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
                            if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                                revert with 0, 17
                            if totalWoolEarned > !((10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                                revert with 0, 17
                            totalWoolEarned += (10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
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
                    if totalWoolEarned >= 2400000000 * 10^18:
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
                        if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
                            revert with 0, 17
                        if totalWoolEarned > !((10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
                            revert with 0, 17
                        totalWoolEarned += (10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
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
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if stor0:
        revert with 0, 'Pausable: paused'
    if totalWoolEarned >= 2400000000 * 10^18:
        require msg.sender == tx.origin
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
            _715 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _717 = mem[64]
            if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 320
            require mem[_715] == bool(mem[_715])
            mem[_717] = mem[_715]
            require mem[_715 + 32] == mem[_715 + 63 len 1]
            mem[_717 + 32] = mem[_715 + 32]
            require mem[_715 + 64] == mem[_715 + 95 len 1]
            mem[_717 + 64] = mem[_715 + 64]
            require mem[_715 + 96] == mem[_715 + 127 len 1]
            mem[_717 + 96] = mem[_715 + 96]
            require mem[_715 + 128] == mem[_715 + 159 len 1]
            mem[_717 + 128] = mem[_715 + 128]
            require mem[_715 + 160] == mem[_715 + 191 len 1]
            mem[_717 + 160] = mem[_715 + 160]
            require mem[_715 + 192] == mem[_715 + 223 len 1]
            mem[_717 + 192] = mem[_715 + 192]
            require mem[_715 + 224] == mem[_715 + 255 len 1]
            mem[_717 + 224] = mem[_715 + 224]
            require mem[_715 + 256] == mem[_715 + 287 len 1]
            mem[_717 + 256] = mem[_715 + 256]
            require mem[_715 + 288] == mem[_715 + 319 len 1]
            mem[_717 + 288] = mem[_715 + 288]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            if mem[_717]:
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 3
                _744 = mem[64]
                mem[64] = mem[64] + 96
                mem[_744] = uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0)
                mem[_744 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)
                mem[_744 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96)
                if address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if totalWoolEarned < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _988 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_988] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_988 + 32] = Mask(80, 0, block.timestamp)
                                mem[_988 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1087 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1087] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1087 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1087 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _829 = mem[_820]
                            if block.number < 1:
                                revert with 0, 17
                            _859 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _860 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _862 = sha3(mem[_860 + 32 len mem[_860]])
                            if not _829:
                                revert with 0, 18
                            mem[0] = sha3(mem[_860 + 32 len mem[_860]]) % _829
                            mem[_859 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_859 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_859 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_859 + 276] = block.hash(block.number - 4)
                            mem[_859 + 308] = tx.origin
                            mem[_859 + 328] = _862 % _829
                            mem[_859 + 360] = block.hash(block.number - 2)
                            mem[_859 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_859 + 402] = block.hash(block.number - 3)
                            mem[_859 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_859 + 454] = block.hash(block.number - 1)
                            mem[_859 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_859 + 518] = block.timestamp
                            mem[_859 + 244] = 274
                            mem[64] = _859 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _862 % _829, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_859 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_859 + 650] = 128
                                mem[_859 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_859 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_859 + 582] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_859 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_859 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_859 + 650] = 128
                                mem[_859 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_859 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_859 + 582] = 0
                                mem[_859 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _889 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_889] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_889 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_889 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _960 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_960] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_960 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_960 + 64] = msg.sender
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
                                _784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _790 = mem[_784]
                                if block.number < 1:
                                    revert with 0, 17
                                _801 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _802 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _804 = sha3(mem[_802 + 32 len mem[_802]])
                                if not _790:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_802 + 32 len mem[_802]]) % _790
                                mem[_801 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_801 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_801 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_801 + 276] = block.hash(block.number - 4)
                                mem[_801 + 308] = tx.origin
                                mem[_801 + 328] = _804 % _790
                                mem[_801 + 360] = block.hash(block.number - 2)
                                mem[_801 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_801 + 402] = block.hash(block.number - 3)
                                mem[_801 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_801 + 454] = block.hash(block.number - 1)
                                mem[_801 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_801 + 518] = block.timestamp
                                mem[_801 + 244] = 274
                                mem[64] = _801 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _804 % _790, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
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
                                mem[_801 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_801 + 650] = 128
                                mem[_801 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_801 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_801 + 582] = 0
                                mem[_801 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _995 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_995] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_995 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_995 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1103 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1103] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1103 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1103 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _823 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _843 = mem[_823]
                                if block.number < 1:
                                    revert with 0, 17
                                _869 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _870 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _872 = sha3(mem[_870 + 32 len mem[_870]])
                                if not _843:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_870 + 32 len mem[_870]]) % _843
                                mem[_869 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_869 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_869 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_869 + 276] = block.hash(block.number - 4)
                                mem[_869 + 308] = tx.origin
                                mem[_869 + 328] = _872 % _843
                                mem[_869 + 360] = block.hash(block.number - 2)
                                mem[_869 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_869 + 402] = block.hash(block.number - 3)
                                mem[_869 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_869 + 454] = block.hash(block.number - 1)
                                mem[_869 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_869 + 518] = block.timestamp
                                mem[_869 + 244] = 274
                                mem[64] = _869 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _872 % _843, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_869 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_869 + 650] = 128
                                    mem[_869 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_869 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_869 + 582] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_869 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_869 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_869 + 650] = 128
                                    mem[_869 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_869 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_869 + 582] = 0
                                    mem[_869 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                else:
                    if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S WOOL'
                    if totalWoolEarned < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1057 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1057] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1057 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1057 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1166 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1166] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1166 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1166 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _849 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _863 = mem[_849]
                            if block.number < 1:
                                revert with 0, 17
                            _891 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _892 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _894 = sha3(mem[_892 + 32 len mem[_892]])
                            if not _863:
                                revert with 0, 18
                            mem[0] = sha3(mem[_892 + 32 len mem[_892]]) % _863
                            mem[_891 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_891 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_891 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_891 + 276] = block.hash(block.number - 4)
                            mem[_891 + 308] = tx.origin
                            mem[_891 + 328] = _894 % _863
                            mem[_891 + 360] = block.hash(block.number - 2)
                            mem[_891 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_891 + 402] = block.hash(block.number - 3)
                            mem[_891 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_891 + 454] = block.hash(block.number - 1)
                            mem[_891 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_891 + 518] = block.timestamp
                            mem[_891 + 244] = 274
                            mem[64] = _891 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _894 % _863, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_891 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_891 + 650] = 128
                                mem[_891 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_891 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_891 + 582] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_891 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_891 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_891 + 650] = 128
                                mem[_891 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_891 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_891 + 582] = 0
                                mem[_891 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _942 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_942] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_942 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_942 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1018 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1018] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1018 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1018 + 64] = msg.sender
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
                                _797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _807 = mem[_797]
                                if block.number < 1:
                                    revert with 0, 17
                                _830 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _831 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _833 = sha3(mem[_831 + 32 len mem[_831]])
                                if not _807:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_831 + 32 len mem[_831]]) % _807
                                mem[_830 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_830 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_830 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_830 + 276] = block.hash(block.number - 4)
                                mem[_830 + 308] = tx.origin
                                mem[_830 + 328] = _833 % _807
                                mem[_830 + 360] = block.hash(block.number - 2)
                                mem[_830 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_830 + 402] = block.hash(block.number - 3)
                                mem[_830 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_830 + 454] = block.hash(block.number - 1)
                                mem[_830 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_830 + 518] = block.timestamp
                                mem[_830 + 244] = 274
                                mem[64] = _830 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _833 % _807, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
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
                                mem[_830 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_830 + 650] = 128
                                mem[_830 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_830 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_830 + 582] = 0
                                mem[_830 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1072 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1072] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1072 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1072 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
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
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.0x18160ddd with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _852 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _874 = mem[_852]
                                if block.number < 1:
                                    revert with 0, 17
                                _908 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _909 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _911 = sha3(mem[_909 + 32 len mem[_909]])
                                if not _874:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_909 + 32 len mem[_909]]) % _874
                                mem[_908 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_908 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_908 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_908 + 276] = block.hash(block.number - 4)
                                mem[_908 + 308] = tx.origin
                                mem[_908 + 328] = _911 % _874
                                mem[_908 + 360] = block.hash(block.number - 2)
                                mem[_908 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_908 + 402] = block.hash(block.number - 3)
                                mem[_908 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_908 + 454] = block.hash(block.number - 1)
                                mem[_908 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_908 + 518] = block.timestamp
                                mem[_908 + 244] = 274
                                mem[64] = _908 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _911 % _874, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_908 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_908 + 650] = 128
                                    mem[_908 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_908 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_908 + 582] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_908 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_908 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_908 + 650] = 128
                                    mem[_908 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_908 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_908 + 582] = 0
                                    mem[_908 + 614] = arg2
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
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_751] == mem[_751 + 12 len 20]
                if mem[_751 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _799 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_789] == bool(mem[_789])
                mem[_799] = mem[_789]
                require mem[_789 + 32] == mem[_789 + 63 len 1]
                mem[_799 + 32] = mem[_789 + 32]
                require mem[_789 + 64] == mem[_789 + 95 len 1]
                mem[_799 + 64] = mem[_789 + 64]
                require mem[_789 + 96] == mem[_789 + 127 len 1]
                mem[_799 + 96] = mem[_789 + 96]
                require mem[_789 + 128] == mem[_789 + 159 len 1]
                mem[_799 + 128] = mem[_789 + 128]
                require mem[_789 + 160] == mem[_789 + 191 len 1]
                mem[_799 + 160] = mem[_789 + 160]
                require mem[_789 + 192] == mem[_789 + 223 len 1]
                mem[_799 + 192] = mem[_789 + 192]
                require mem[_789 + 224] == mem[_789 + 255 len 1]
                mem[_799 + 224] = mem[_789 + 224]
                require mem[_789 + 256] == mem[_789 + 287 len 1]
                mem[_799 + 256] = mem[_789 + 256]
                require mem[_789 + 288] == mem[_789 + 319 len 1]
                mem[_799 + 288] = mem[_789 + 288]
                _1223 = mem[_799 + 288]
                if 8 < mem[_799 + 319 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_799 + 319 len 1] + 8)
                _1259 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1274 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1274] = uint16(stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0)
                mem[_1274 + 32] = Mask(80, 0, stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16)
                mem[_1274 + 64] = address(stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96)
                if address(stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(woolPerAlpha) < Mask(80, 0, stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1223) + 8) and uint256(woolPerAlpha) - Mask(80, 0, stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1223) + 8):
                    revert with 0, 17
                if not arg2:
                    _1343 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1343] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_1343 + 32] = Mask(80, 0, stor8)
                    mem[_1343 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1223) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1223) + 8 << 248, 4)
                    uint16(pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                    Mask(80, 0, pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    uint16(pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1223) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1223) + 8)
                    mem[32] = 4
                    if uint256(pack[-uint8(_1223) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1223) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1223) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1223) + 8 << 248, 4)
                    _1384 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1384] = uint16(pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0)
                    mem[_1384 + 32] = Mask(80, 0, pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0)
                    mem[_1384 + 64] = address(pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1223) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1223) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = address(pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_1223) + 8 << 248][uint256(stor4[-uint8(_1223) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not uint256(pack[-uint8(_1223) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1223) + 8 << 248][uint256(pack[-uint8(_1223) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1223) + 8 << 248].field_0)--
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
                mem[mem[64] + 32] = (uint256(woolPerAlpha) * uint8(-uint8(_1223) + 8)) - (Mask(80, 0, stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1223) + 8))
                mem[mem[64] + 64] = arg2
                emit WolfClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (uint256(woolPerAlpha) * uint8(-uint8(_1223) + 8)) - (Mask(80, 0, stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1223) + 8)), arg2);
                if 0 > !((uint256(woolPerAlpha) * uint8(-uint8(_1223) + 8)) - (Mask(80, 0, stor[sha3(_1259) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1223) + 8))):
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
        if (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalSheepStaked) - (lastClaimTimestamp * totalSheepStaked):
            revert with 0, 17
        if totalWoolEarned > !((10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600):
            revert with 0, 17
        totalWoolEarned += (10000 * 10^18 * block.timestamp * totalSheepStaked) - (10000 * 10^18 * lastClaimTimestamp * totalSheepStaked) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        require msg.sender == tx.origin
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
            _716 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _718 = mem[64]
            if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 320
            require mem[_716] == bool(mem[_716])
            mem[_718] = mem[_716]
            require mem[_716 + 32] == mem[_716 + 63 len 1]
            mem[_718 + 32] = mem[_716 + 32]
            require mem[_716 + 64] == mem[_716 + 95 len 1]
            mem[_718 + 64] = mem[_716 + 64]
            require mem[_716 + 96] == mem[_716 + 127 len 1]
            mem[_718 + 96] = mem[_716 + 96]
            require mem[_716 + 128] == mem[_716 + 159 len 1]
            mem[_718 + 128] = mem[_716 + 128]
            require mem[_716 + 160] == mem[_716 + 191 len 1]
            mem[_718 + 160] = mem[_716 + 160]
            require mem[_716 + 192] == mem[_716 + 223 len 1]
            mem[_718 + 192] = mem[_716 + 192]
            require mem[_716 + 224] == mem[_716 + 255 len 1]
            mem[_718 + 224] = mem[_716 + 224]
            require mem[_716 + 256] == mem[_716 + 287 len 1]
            mem[_718 + 256] = mem[_716 + 256]
            require mem[_716 + 288] == mem[_716 + 319 len 1]
            mem[_718 + 288] = mem[_716 + 288]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            if mem[_718]:
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
                    if totalWoolEarned < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _993 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_993] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_993 + 32] = Mask(80, 0, block.timestamp)
                                mem[_993 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1095 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1095] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1095 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1095 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _836 = mem[_822]
                            if block.number < 1:
                                revert with 0, 17
                            _864 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _865 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _867 = sha3(mem[_865 + 32 len mem[_865]])
                            if not _836:
                                revert with 0, 18
                            mem[0] = sha3(mem[_865 + 32 len mem[_865]]) % _836
                            mem[_864 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_864 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_864 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_864 + 276] = block.hash(block.number - 4)
                            mem[_864 + 308] = tx.origin
                            mem[_864 + 328] = _867 % _836
                            mem[_864 + 360] = block.hash(block.number - 2)
                            mem[_864 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_864 + 402] = block.hash(block.number - 3)
                            mem[_864 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_864 + 454] = block.hash(block.number - 1)
                            mem[_864 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_864 + 518] = block.timestamp
                            mem[_864 + 244] = 274
                            mem[64] = _864 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _867 % _836, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_864 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_864 + 650] = 128
                                mem[_864 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_864 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_864 + 582] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_864 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_864 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_864 + 650] = 128
                                mem[_864 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_864 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_864 + 582] = 0
                                mem[_864 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _897 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_897] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_897 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_897 + 64] = msg.sender
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
                                _808 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _809 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _811 = sha3(mem[_809 + 32 len mem[_809]])
                                if not _794:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_809 + 32 len mem[_809]]) % _794
                                mem[_808 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_808 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_808 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_808 + 276] = block.hash(block.number - 4)
                                mem[_808 + 308] = tx.origin
                                mem[_808 + 328] = _811 % _794
                                mem[_808 + 360] = block.hash(block.number - 2)
                                mem[_808 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_808 + 402] = block.hash(block.number - 3)
                                mem[_808 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_808 + 454] = block.hash(block.number - 1)
                                mem[_808 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_808 + 518] = block.timestamp
                                mem[_808 + 244] = 274
                                mem[64] = _808 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _811 % _794, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
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
                                mem[_808 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_808 + 650] = 128
                                mem[_808 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_808 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_808 + 582] = 0
                                mem[_808 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1002 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1002] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1002 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1002 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1115 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1115] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1115 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1115 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
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
                                _846 = mem[_826]
                                if block.number < 1:
                                    revert with 0, 17
                                _875 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _876 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _878 = sha3(mem[_876 + 32 len mem[_876]])
                                if not _846:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_876 + 32 len mem[_876]]) % _846
                                mem[_875 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_875 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_875 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_875 + 276] = block.hash(block.number - 4)
                                mem[_875 + 308] = tx.origin
                                mem[_875 + 328] = _878 % _846
                                mem[_875 + 360] = block.hash(block.number - 2)
                                mem[_875 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_875 + 402] = block.hash(block.number - 3)
                                mem[_875 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_875 + 454] = block.hash(block.number - 1)
                                mem[_875 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_875 + 518] = block.timestamp
                                mem[_875 + 244] = 274
                                mem[64] = _875 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _878 % _846, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_875 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_875 + 650] = 128
                                    mem[_875 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_875 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_875 + 582] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_875 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_875 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_875 + 650] = 128
                                    mem[_875 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_875 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_875 + 582] = 0
                                    mem[_875 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                else:
                    if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) < 48 * 24 * 3600:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S WOOL'
                    if totalWoolEarned < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1067 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1067] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1067 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1067 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(woolPerAlpha) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1168 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1168] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1168 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1168 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 3
                            uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _850 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _868 = mem[_850]
                            if block.number < 1:
                                revert with 0, 17
                            _899 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                            _900 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            _902 = sha3(mem[_900 + 32 len mem[_900]])
                            if not _868:
                                revert with 0, 18
                            mem[0] = sha3(mem[_900 + 32 len mem[_900]]) % _868
                            mem[_899 + 148] = uint16(barn[mem[0]].field_0)
                            mem[_899 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                            mem[_899 + 212] = address(barn[mem[0]].field_96)
                            if block.number < 4:
                                revert with 0, 17
                            if block.number < 2:
                                revert with 0, 17
                            if block.number < 3:
                                revert with 0, 17
                            if block.number < 1:
                                revert with 0, 17
                            mem[_899 + 276] = block.hash(block.number - 4)
                            mem[_899 + 308] = tx.origin
                            mem[_899 + 328] = _902 % _868
                            mem[_899 + 360] = block.hash(block.number - 2)
                            mem[_899 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                            mem[_899 + 402] = block.hash(block.number - 3)
                            mem[_899 + 434] = address(address(barn[mem[0]].field_96))
                            mem[_899 + 454] = block.hash(block.number - 1)
                            mem[_899 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[_899 + 518] = block.timestamp
                            mem[_899 + 244] = 274
                            mem[64] = _899 + 550
                            if bool(sha3(block.hash(block.number - 4), tx.origin, _902 % _868, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_899 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_899 + 650] = 128
                                mem[_899 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_899 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_899 + 582] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[_899 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[_899 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_899 + 650] = 128
                                mem[_899 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_899 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_899 + 582] = 0
                                mem[_899 + 614] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _947 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_947] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_947 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_947 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1028 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1028] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1028 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1028 + 64] = msg.sender
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
                                _798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _814 = mem[_798]
                                if block.number < 1:
                                    revert with 0, 17
                                _837 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _838 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _840 = sha3(mem[_838 + 32 len mem[_838]])
                                if not _814:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_838 + 32 len mem[_838]]) % _814
                                mem[_837 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_837 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_837 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_837 + 276] = block.hash(block.number - 4)
                                mem[_837 + 308] = tx.origin
                                mem[_837 + 328] = _840 % _814
                                mem[_837 + 360] = block.hash(block.number - 2)
                                mem[_837 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_837 + 402] = block.hash(block.number - 3)
                                mem[_837 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_837 + 454] = block.hash(block.number - 1)
                                mem[_837 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_837 + 518] = block.timestamp
                                mem[_837 + 244] = 274
                                mem[64] = _837 + 550
                                if 1 == bool(sha3(block.hash(block.number - 4), tx.origin, _840 % _814, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)):
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
                                mem[_837 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_837 + 650] = 128
                                mem[_837 + 682] = 0
                                require ext_code.size(stor1)
                                call stor1.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[_837 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_837 + 582] = 0
                                mem[_837 + 614] = arg2
                            emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                        else:
                            if lastClaimTimestamp < Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1081 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1081] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1081 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1081 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1181 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1181] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1181 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1181 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 3
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100, arg2);
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 / 100):
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
                                _880 = mem[_856]
                                if block.number < 1:
                                    revert with 0, 17
                                _918 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + arg1 + 36)])
                                _919 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                _921 = sha3(mem[_919 + 32 len mem[_919]])
                                if not _880:
                                    revert with 0, 18
                                mem[0] = sha3(mem[_919 + 32 len mem[_919]]) % _880
                                mem[_918 + 148] = uint16(barn[mem[0]].field_0)
                                mem[_918 + 180] = Mask(80, 0, barn[mem[0]].field_16)
                                mem[_918 + 212] = address(barn[mem[0]].field_96)
                                if block.number < 4:
                                    revert with 0, 17
                                if block.number < 2:
                                    revert with 0, 17
                                if block.number < 3:
                                    revert with 0, 17
                                if block.number < 1:
                                    revert with 0, 17
                                mem[_918 + 276] = block.hash(block.number - 4)
                                mem[_918 + 308] = tx.origin
                                mem[_918 + 328] = _921 % _880
                                mem[_918 + 360] = block.hash(block.number - 2)
                                mem[_918 + 392] = Mask(80, 0, barn[mem[0]].field_16) << 176
                                mem[_918 + 402] = block.hash(block.number - 3)
                                mem[_918 + 434] = address(address(barn[mem[0]].field_96))
                                mem[_918 + 454] = block.hash(block.number - 1)
                                mem[_918 + 486] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_918 + 518] = block.timestamp
                                mem[_918 + 244] = 274
                                mem[64] = _918 + 550
                                if bool(sha3(block.hash(block.number - 4), tx.origin, _921 % _880, block.hash(block.number - 2), Mask(80, 0, barn[mem[0]].field_16), block.hash(block.number - 3), address(barn[mem[0]].field_96), block.hash(block.number - 1), cd[((32 * idx) + arg1 + 36)] << 240, block.timestamp)) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_918 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_918 + 650] = 128
                                    mem[_918 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_918 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_918 + 582] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[_918 + 614] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600, arg2);
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(woolPerAlpha) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(woolPerAlpha) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[_918 + 618] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_918 + 650] = 128
                                    mem[_918 + 682] = 0
                                    require ext_code.size(stor1)
                                    call stor1.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 3
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[_918 + 550] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_918 + 582] = 0
                                    mem[_918 + 614] = arg2
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
                _753 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_753] == mem[_753 + 12 len 20]
                if mem[_753 + 12 len 20] != this.address:
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
                _800 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_793] == bool(mem[_793])
                mem[_800] = mem[_793]
                require mem[_793 + 32] == mem[_793 + 63 len 1]
                mem[_800 + 32] = mem[_793 + 32]
                require mem[_793 + 64] == mem[_793 + 95 len 1]
                mem[_800 + 64] = mem[_793 + 64]
                require mem[_793 + 96] == mem[_793 + 127 len 1]
                mem[_800 + 96] = mem[_793 + 96]
                require mem[_793 + 128] == mem[_793 + 159 len 1]
                mem[_800 + 128] = mem[_793 + 128]
                require mem[_793 + 160] == mem[_793 + 191 len 1]
                mem[_800 + 160] = mem[_793 + 160]
                require mem[_793 + 192] == mem[_793 + 223 len 1]
                mem[_800 + 192] = mem[_793 + 192]
                require mem[_793 + 224] == mem[_793 + 255 len 1]
                mem[_800 + 224] = mem[_793 + 224]
                require mem[_793 + 256] == mem[_793 + 287 len 1]
                mem[_800 + 256] = mem[_793 + 256]
                require mem[_793 + 288] == mem[_793 + 319 len 1]
                mem[_800 + 288] = mem[_793 + 288]
                _1227 = mem[_800 + 288]
                if 8 < mem[_800 + 319 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_800 + 319 len 1] + 8)
                _1266 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 4)
                _1279 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1279] = uint16(stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_0)
                mem[_1279 + 32] = Mask(80, 0, stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16)
                mem[_1279 + 64] = address(stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96)
                if address(stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(woolPerAlpha) < Mask(80, 0, stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1227) + 8) and uint256(woolPerAlpha) - Mask(80, 0, stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1227) + 8):
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
                mem[mem[64] + 32] = (uint256(woolPerAlpha) * uint8(-uint8(_1227) + 8)) - (Mask(80, 0, stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1227) + 8))
                mem[mem[64] + 64] = arg2
                emit WolfClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (uint256(woolPerAlpha) * uint8(-uint8(_1227) + 8)) - (Mask(80, 0, stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1227) + 8)), arg2);
                if 0 > !((uint256(woolPerAlpha) * uint8(-uint8(_1227) + 8)) - (Mask(80, 0, stor[sha3(_1266) + stor5[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1227) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
