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
address stor3;
mapping of struct barn;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor9;
uint256 woolPerAlpha;
uint256 totalWoolEarned;
uint256 totalSheepStaked;
uint256 lastClaimTimestamp;
uint8 stor13;

function barn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
}

function rescueEnabled() payable {
    return bool(stor13)
}

function totalWoolEarned() payable {
    return totalWoolEarned
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

function setEntropy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = uint8(arg1)
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
            mem[32] = 5
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
    staticcall stor1.getTokenTraits(uint256 arg1) with:
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

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor13:
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
        staticcall stor1.getTokenTraits(uint256 arg1) with:
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
            mem[32] = 4
            _85 = mem[64]
            mem[64] = mem[64] + 96
            mem[_85] = uint16(barn[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_85 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_85 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)]].field_96)
            if address(barn[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 4
            uint256(barn[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            if totalSheepStaked < 1:
                revert with 0, 17
            totalSheepStaked--
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(stor1)
            call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
        staticcall stor1.getTokenTraits(uint256 arg1) with:
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
        _108 = sha3(mem[0], 5)
        mem[32] = 6
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 5)
        _111 = mem[64]
        mem[64] = mem[64] + 96
        mem[_111] = uint16(stor[sha3(_108) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_0)
        mem[_111 + 32] = Mask(80, 0, stor[sha3(_108) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_16)
        mem[_111 + 64] = address(stor[sha3(_108) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_96)
        if address(stor[sha3(_108) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_107) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_107) + 8)
        mem[32] = 5
        if uint256(pack[-uint8(_107) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_107) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_107) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_107) + 8 << 248, 5)
        _116 = mem[64]
        mem[64] = mem[64] + 96
        mem[_116] = uint16(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        mem[_116 + 32] = Mask(80, 0, pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        mem[_116 + 64] = address(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_107) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_107) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_107) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_107) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor5[-uint8(_107) + 8 << 248][uint256(stor5[-uint8(_107) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_107) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_107) + 8 << 248][uint256(pack[-uint8(_107) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_107) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 6
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(stor1)
        call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _289 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_283] == bool(mem[_283])
                    mem[_289] = mem[_283]
                    require mem[_283 + 32] == mem[_283 + 63 len 1]
                    mem[_289 + 32] = mem[_283 + 32]
                    require mem[_283 + 64] == mem[_283 + 95 len 1]
                    mem[_289 + 64] = mem[_283 + 64]
                    require mem[_283 + 96] == mem[_283 + 127 len 1]
                    mem[_289 + 96] = mem[_283 + 96]
                    require mem[_283 + 128] == mem[_283 + 159 len 1]
                    mem[_289 + 128] = mem[_283 + 128]
                    require mem[_283 + 160] == mem[_283 + 191 len 1]
                    mem[_289 + 160] = mem[_283 + 160]
                    require mem[_283 + 192] == mem[_283 + 223 len 1]
                    mem[_289 + 192] = mem[_283 + 192]
                    require mem[_283 + 224] == mem[_283 + 255 len 1]
                    mem[_289 + 224] = mem[_283 + 224]
                    require mem[_283 + 256] == mem[_283 + 287 len 1]
                    mem[_289 + 256] = mem[_283 + 256]
                    require mem[_283 + 288] == mem[_283 + 319 len 1]
                    mem[_289 + 288] = mem[_283 + 288]
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
                            _385 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_385] = uint16(cd[((32 * idx) + arg2 + 36)])
                            mem[_385 + 32] = Mask(80, 0, block.timestamp)
                            mem[_385 + 64] = arg1
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[32] = 4
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
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
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
                        _463 = sha3(mem[0], 5)
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_463].field_0)
                        mem[32] = 5
                        _465 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_465] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_465 + 32] = Mask(80, 0, stor9)
                        mem[_465 + 64] = arg1
                        uint256(stor[_463].field_0)++
                        mem[0] = _463
                        Mask(80, 0, stor[uint256(stor[_463].field_0) + sha3(_463)].field_0) = Mask(80, 0, stor9)
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
                staticcall stor1.ownerOf(uint256 arg1) with:
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
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg2 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _305 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _309 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_305] == bool(mem[_305])
                mem[_309] = mem[_305]
                require mem[_305 + 32] == mem[_305 + 63 len 1]
                mem[_309 + 32] = mem[_305 + 32]
                require mem[_305 + 64] == mem[_305 + 95 len 1]
                mem[_309 + 64] = mem[_305 + 64]
                require mem[_305 + 96] == mem[_305 + 127 len 1]
                mem[_309 + 96] = mem[_305 + 96]
                require mem[_305 + 128] == mem[_305 + 159 len 1]
                mem[_309 + 128] = mem[_305 + 128]
                require mem[_305 + 160] == mem[_305 + 191 len 1]
                mem[_309 + 160] = mem[_305 + 160]
                require mem[_305 + 192] == mem[_305 + 223 len 1]
                mem[_309 + 192] = mem[_305 + 192]
                require mem[_305 + 224] == mem[_305 + 255 len 1]
                mem[_309 + 224] = mem[_305 + 224]
                require mem[_305 + 256] == mem[_305 + 287 len 1]
                mem[_309 + 256] = mem[_305 + 256]
                require mem[_305 + 288] == mem[_305 + 319 len 1]
                mem[_309 + 288] = mem[_305 + 288]
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                if mem[_309]:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if totalWoolEarned >= 24 * 10^17:
                        _390 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_390] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_390 + 32] = Mask(80, 0, block.timestamp)
                        mem[_390 + 64] = arg1
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
                        _435 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_435] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_435 + 32] = Mask(80, 0, block.timestamp)
                        mem[_435 + 64] = arg1
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[32] = 4
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
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _405 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _419 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_405] == bool(mem[_405])
                    mem[_419] = mem[_405]
                    require mem[_405 + 32] == mem[_405 + 63 len 1]
                    mem[_419 + 32] = mem[_405 + 32]
                    require mem[_405 + 64] == mem[_405 + 95 len 1]
                    mem[_419 + 64] = mem[_405 + 64]
                    require mem[_405 + 96] == mem[_405 + 127 len 1]
                    mem[_419 + 96] = mem[_405 + 96]
                    require mem[_405 + 128] == mem[_405 + 159 len 1]
                    mem[_419 + 128] = mem[_405 + 128]
                    require mem[_405 + 160] == mem[_405 + 191 len 1]
                    mem[_419 + 160] = mem[_405 + 160]
                    require mem[_405 + 192] == mem[_405 + 223 len 1]
                    mem[_419 + 192] = mem[_405 + 192]
                    require mem[_405 + 224] == mem[_405 + 255 len 1]
                    mem[_419 + 224] = mem[_405 + 224]
                    require mem[_405 + 256] == mem[_405 + 287 len 1]
                    mem[_419 + 256] = mem[_405 + 256]
                    require mem[_405 + 288] == mem[_405 + 319 len 1]
                    mem[_419 + 288] = mem[_405 + 288]
                    if 8 < mem[_419 + 319 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_419 + 319 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_419 + 319 len 1] + 8)
                    mem[0] = uint8(-mem[_419 + 319 len 1] + 8)
                    _489 = sha3(mem[0], 5)
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_489].field_0)
                    mem[32] = 5
                    _491 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_491] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[_491 + 32] = Mask(80, 0, stor9)
                    mem[_491 + 64] = arg1
                    uint256(stor[_489].field_0)++
                    mem[0] = _489
                    Mask(80, 0, stor[uint256(stor[_489].field_0) + sha3(_489)].field_0) = Mask(80, 0, stor9)
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
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _290 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_285] == bool(mem[_285])
                    mem[_290] = mem[_285]
                    require mem[_285 + 32] == mem[_285 + 63 len 1]
                    mem[_290 + 32] = mem[_285 + 32]
                    require mem[_285 + 64] == mem[_285 + 95 len 1]
                    mem[_290 + 64] = mem[_285 + 64]
                    require mem[_285 + 96] == mem[_285 + 127 len 1]
                    mem[_290 + 96] = mem[_285 + 96]
                    require mem[_285 + 128] == mem[_285 + 159 len 1]
                    mem[_290 + 128] = mem[_285 + 128]
                    require mem[_285 + 160] == mem[_285 + 191 len 1]
                    mem[_290 + 160] = mem[_285 + 160]
                    require mem[_285 + 192] == mem[_285 + 223 len 1]
                    mem[_290 + 192] = mem[_285 + 192]
                    require mem[_285 + 224] == mem[_285 + 255 len 1]
                    mem[_290 + 224] = mem[_285 + 224]
                    require mem[_285 + 256] == mem[_285 + 287 len 1]
                    mem[_290 + 256] = mem[_285 + 256]
                    require mem[_285 + 288] == mem[_285 + 319 len 1]
                    mem[_290 + 288] = mem[_285 + 288]
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
                            _395 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_395] = uint16(cd[((32 * idx) + arg2 + 36)])
                            mem[_395 + 32] = Mask(80, 0, block.timestamp)
                            mem[_395 + 64] = arg1
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[32] = 4
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
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
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
                        _473 = sha3(mem[0], 5)
                        mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                        packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_473].field_0)
                        mem[32] = 5
                        _475 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_475] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_475 + 32] = Mask(80, 0, stor9)
                        mem[_475 + 64] = arg1
                        uint256(stor[_473].field_0)++
                        mem[0] = _473
                        Mask(80, 0, stor[uint256(stor[_473].field_0) + sha3(_473)].field_0) = Mask(80, 0, stor9)
                        uint16(stor[uint256(stor[_473].field_0) + sha3(_473)].field_0) = uint16(cd[((32 * idx) + arg2 + 36)])
                        Mask(80, 0, stor[uint256(stor[_473].field_0) + sha3(_473)].field_16) = 0
                        address(stor[uint256(stor[_473].field_0) + sha3(_473)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[mem[64] + 64] = uint256(woolPerAlpha)
                        emit TokenStaked(address(arg1), cd[((32 * idx) + arg2 + 36)] << 240, uint256(woolPerAlpha));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg2 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.ownerOf(uint256 arg1) with:
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
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg2 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _306 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _310 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_306] == bool(mem[_306])
                mem[_310] = mem[_306]
                require mem[_306 + 32] == mem[_306 + 63 len 1]
                mem[_310 + 32] = mem[_306 + 32]
                require mem[_306 + 64] == mem[_306 + 95 len 1]
                mem[_310 + 64] = mem[_306 + 64]
                require mem[_306 + 96] == mem[_306 + 127 len 1]
                mem[_310 + 96] = mem[_306 + 96]
                require mem[_306 + 128] == mem[_306 + 159 len 1]
                mem[_310 + 128] = mem[_306 + 128]
                require mem[_306 + 160] == mem[_306 + 191 len 1]
                mem[_310 + 160] = mem[_306 + 160]
                require mem[_306 + 192] == mem[_306 + 223 len 1]
                mem[_310 + 192] = mem[_306 + 192]
                require mem[_306 + 224] == mem[_306 + 255 len 1]
                mem[_310 + 224] = mem[_306 + 224]
                require mem[_306 + 256] == mem[_306 + 287 len 1]
                mem[_310 + 256] = mem[_306 + 256]
                require mem[_306 + 288] == mem[_306 + 319 len 1]
                mem[_310 + 288] = mem[_306 + 288]
                if idx >= arg2.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg2 + 36)] == uint16(cd[((32 * idx) + arg2 + 36)])
                if mem[_310]:
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if totalWoolEarned >= 24 * 10^17:
                        _400 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_400] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_400 + 32] = Mask(80, 0, block.timestamp)
                        mem[_400 + 64] = arg1
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
                        _440 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_440] = uint16(cd[((32 * idx) + arg2 + 36)])
                        mem[_440 + 32] = Mask(80, 0, block.timestamp)
                        mem[_440 + 64] = arg1
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[32] = 4
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
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + arg2 + 36)] << 240)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _420 = mem[64]
                    if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 320
                    require mem[_407] == bool(mem[_407])
                    mem[_420] = mem[_407]
                    require mem[_407 + 32] == mem[_407 + 63 len 1]
                    mem[_420 + 32] = mem[_407 + 32]
                    require mem[_407 + 64] == mem[_407 + 95 len 1]
                    mem[_420 + 64] = mem[_407 + 64]
                    require mem[_407 + 96] == mem[_407 + 127 len 1]
                    mem[_420 + 96] = mem[_407 + 96]
                    require mem[_407 + 128] == mem[_407 + 159 len 1]
                    mem[_420 + 128] = mem[_407 + 128]
                    require mem[_407 + 160] == mem[_407 + 191 len 1]
                    mem[_420 + 160] = mem[_407 + 160]
                    require mem[_407 + 192] == mem[_407 + 223 len 1]
                    mem[_420 + 192] = mem[_407 + 192]
                    require mem[_407 + 224] == mem[_407 + 255 len 1]
                    mem[_420 + 224] = mem[_407 + 224]
                    require mem[_407 + 256] == mem[_407 + 287 len 1]
                    mem[_420 + 256] = mem[_407 + 256]
                    require mem[_407 + 288] == mem[_407 + 319 len 1]
                    mem[_420 + 288] = mem[_407 + 288]
                    if 8 < mem[_420 + 319 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_420 + 319 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_420 + 319 len 1] + 8)
                    mem[0] = uint8(-mem[_420 + 319 len 1] + 8)
                    _498 = sha3(mem[0], 5)
                    mem[0] = uint16(cd[((32 * idx) + arg2 + 36)])
                    packIndices[cd[((32 * idx) + arg2 + 36)] << 240] = uint256(stor[_498].field_0)
                    mem[32] = 5
                    _500 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_500] = uint16(cd[((32 * idx) + arg2 + 36)])
                    mem[_500 + 32] = Mask(80, 0, stor9)
                    mem[_500 + 64] = arg1
                    uint256(stor[_498].field_0)++
                    mem[0] = _498
                    Mask(80, 0, stor[uint256(stor[_498].field_0) + sha3(_498)].field_0) = Mask(80, 0, stor9)
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
    if totalWoolEarned >= 24 * 10^17:
        require msg.sender == tx.origin
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + arg1 + 36)] << 240)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _573 = mem[64]
            if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 320
            require mem[_571] == bool(mem[_571])
            mem[_573] = mem[_571]
            require mem[_571 + 32] == mem[_571 + 63 len 1]
            mem[_573 + 32] = mem[_571 + 32]
            require mem[_571 + 64] == mem[_571 + 95 len 1]
            mem[_573 + 64] = mem[_571 + 64]
            require mem[_571 + 96] == mem[_571 + 127 len 1]
            mem[_573 + 96] = mem[_571 + 96]
            require mem[_571 + 128] == mem[_571 + 159 len 1]
            mem[_573 + 128] = mem[_571 + 128]
            require mem[_571 + 160] == mem[_571 + 191 len 1]
            mem[_573 + 160] = mem[_571 + 160]
            require mem[_571 + 192] == mem[_571 + 223 len 1]
            mem[_573 + 192] = mem[_571 + 192]
            require mem[_571 + 224] == mem[_571 + 255 len 1]
            mem[_573 + 224] = mem[_571 + 224]
            require mem[_571 + 256] == mem[_571 + 287 len 1]
            mem[_573 + 256] = mem[_571 + 256]
            require mem[_571 + 288] == mem[_571 + 319 len 1]
            mem[_573 + 288] = mem[_571 + 288]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            if mem[_573]:
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 4
                _600 = mem[64]
                mem[64] = mem[64] + 96
                mem[_600] = uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0)
                mem[_600 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)
                mem[_600 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96)
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
                                _850 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_850] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_850 + 32] = Mask(80, 0, block.timestamp)
                                mem[_850 + 64] = msg.sender
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
                                _956 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_956] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_956 + 32] = Mask(80, 0, block.timestamp)
                                mem[_956 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 4
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
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(stor3)
                            staticcall stor3.random(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + arg1 + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _669 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if bool(mem[_669]) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[mem[64] + 64] = arg2
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _733 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_733] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_733 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_733 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _816 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_816] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_816 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_816 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            else:
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _634 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 1 == bool(mem[_634]):
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = arg2
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
                                    _861 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_861] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_861 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_861 + 64] = msg.sender
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
                                    _977 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_977] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_977 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_977 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
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
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _672 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if bool(mem[_672]) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[mem[64] + 64] = arg2
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
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = arg2
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
                                _925 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_925] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_925 + 32] = Mask(80, 0, block.timestamp)
                                mem[_925 + 64] = msg.sender
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
                                _1020 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1020] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1020 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1020 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 4
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
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(stor3)
                            staticcall stor3.random(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + arg1 + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if bool(mem[_695]) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[mem[64] + 64] = arg2
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _785 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_785] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_785 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_785 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _890 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_890] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_890 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_890 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            else:
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 1 == bool(mem[_653]):
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = arg2
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
                                    _937 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_937] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_937 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_937 + 64] = msg.sender
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
                                    _1028 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1028] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1028 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1028 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
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
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if bool(mem[_699]) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[mem[64] + 64] = arg2
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
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _607 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_607] == mem[_607 + 12 len 20]
                if mem[_607 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _651 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _655 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_651] == bool(mem[_651])
                mem[_655] = mem[_651]
                require mem[_651 + 32] == mem[_651 + 63 len 1]
                mem[_655 + 32] = mem[_651 + 32]
                require mem[_651 + 64] == mem[_651 + 95 len 1]
                mem[_655 + 64] = mem[_651 + 64]
                require mem[_651 + 96] == mem[_651 + 127 len 1]
                mem[_655 + 96] = mem[_651 + 96]
                require mem[_651 + 128] == mem[_651 + 159 len 1]
                mem[_655 + 128] = mem[_651 + 128]
                require mem[_651 + 160] == mem[_651 + 191 len 1]
                mem[_655 + 160] = mem[_651 + 160]
                require mem[_651 + 192] == mem[_651 + 223 len 1]
                mem[_655 + 192] = mem[_651 + 192]
                require mem[_651 + 224] == mem[_651 + 255 len 1]
                mem[_655 + 224] = mem[_651 + 224]
                require mem[_651 + 256] == mem[_651 + 287 len 1]
                mem[_655 + 256] = mem[_651 + 256]
                require mem[_651 + 288] == mem[_651 + 319 len 1]
                mem[_655 + 288] = mem[_651 + 288]
                _1059 = mem[_655 + 288]
                if 8 < mem[_655 + 319 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_655 + 319 len 1] + 8)
                _1061 = sha3(mem[0], 5)
                mem[32] = 6
                if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1066 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1066] = uint16(stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0)
                mem[_1066 + 32] = Mask(80, 0, stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16)
                mem[_1066 + 64] = address(stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96)
                if address(stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(woolPerAlpha) < Mask(80, 0, stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1059) + 8) and uint256(woolPerAlpha) - Mask(80, 0, stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1059) + 8):
                    revert with 0, 17
                if not arg2:
                    _1075 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1075] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_1075 + 32] = Mask(80, 0, stor9)
                    mem[_1075 + 64] = msg.sender
                    mem[32] = 6
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1059) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1059) + 8 << 248, 5)
                    uint16(pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                    Mask(80, 0, pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = Mask(80, 0, stor9)
                    uint16(pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1059) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1059) + 8)
                    mem[32] = 5
                    if uint256(pack[-uint8(_1059) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1059) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1059) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1059) + 8 << 248, 5)
                    _1096 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1096] = uint16(pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0)
                    mem[_1096 + 32] = Mask(80, 0, pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0)
                    mem[_1096 + 64] = address(pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1059) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1059) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = address(pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor5[-uint8(_1059) + 8 << 248][uint256(stor5[-uint8(_1059) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not uint256(pack[-uint8(_1059) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1059) + 8 << 248][uint256(pack[-uint8(_1059) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1059) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 6
                    packIndices[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = (uint256(woolPerAlpha) * uint8(-uint8(_1059) + 8)) - (Mask(80, 0, stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1059) + 8))
                mem[mem[64] + 64] = arg2
                emit WolfClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (uint256(woolPerAlpha) * uint8(-uint8(_1059) + 8)) - (Mask(80, 0, stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1059) + 8)), arg2);
                if 0 > !((uint256(woolPerAlpha) * uint8(-uint8(_1059) + 8)) - (Mask(80, 0, stor[sha3(_1061) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1059) + 8))):
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
        require msg.sender == tx.origin
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(stor1)
            staticcall stor1.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + arg1 + 36)] << 240)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _572 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _574 = mem[64]
            if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 320
            require mem[_572] == bool(mem[_572])
            mem[_574] = mem[_572]
            require mem[_572 + 32] == mem[_572 + 63 len 1]
            mem[_574 + 32] = mem[_572 + 32]
            require mem[_572 + 64] == mem[_572 + 95 len 1]
            mem[_574 + 64] = mem[_572 + 64]
            require mem[_572 + 96] == mem[_572 + 127 len 1]
            mem[_574 + 96] = mem[_572 + 96]
            require mem[_572 + 128] == mem[_572 + 159 len 1]
            mem[_574 + 128] = mem[_572 + 128]
            require mem[_572 + 160] == mem[_572 + 191 len 1]
            mem[_574 + 160] = mem[_572 + 160]
            require mem[_572 + 192] == mem[_572 + 223 len 1]
            mem[_574 + 192] = mem[_572 + 192]
            require mem[_572 + 224] == mem[_572 + 255 len 1]
            mem[_574 + 224] = mem[_572 + 224]
            require mem[_572 + 256] == mem[_572 + 287 len 1]
            mem[_574 + 256] = mem[_572 + 256]
            require mem[_572 + 288] == mem[_572 + 319 len 1]
            mem[_574 + 288] = mem[_572 + 288]
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == uint16(cd[((32 * idx) + arg1 + 36)])
            if mem[_574]:
                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 4
                _604 = mem[64]
                mem[64] = mem[64] + 96
                mem[_604] = uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0)
                mem[_604 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)
                mem[_604 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96)
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
                                _857 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_857] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_857 + 32] = Mask(80, 0, block.timestamp)
                                mem[_857 + 64] = msg.sender
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
                                _967 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_967] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_967 + 32] = Mask(80, 0, block.timestamp)
                                mem[_967 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 4
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
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(stor3)
                            staticcall stor3.random(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + arg1 + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _670 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if bool(mem[_670]) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[mem[64] + 64] = arg2
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _738 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_738] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_738 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_738 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _824 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_824] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_824 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_824 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            else:
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 1 == bool(mem[_637]):
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = arg2
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
                                    _871 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_871] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_871 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_871 + 64] = msg.sender
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
                                    _987 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_987] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_987 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_987 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
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
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if bool(mem[_675]) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[mem[64] + 64] = arg2
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
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = arg2
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
                                _932 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_932] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_932 + 32] = Mask(80, 0, block.timestamp)
                                mem[_932 + 64] = msg.sender
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
                                _1024 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1024] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[_1024 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1024 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[32] = 4
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
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                            require ext_code.size(stor3)
                            staticcall stor3.random(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + arg1 + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _698 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if bool(mem[_698]) != 1:
                                if totalSheepStaked < 1:
                                    revert with 0, 17
                                totalSheepStaked--
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = (10^13 * block.timestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                mem[mem[64] + 64] = arg2
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                                emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
                    else:
                        if Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _791 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_791] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_791 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_791 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(woolPerAlpha) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(woolPerAlpha) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _902 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_902] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_902 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_902 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_96) = msg.sender
                            else:
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if 1 == bool(mem[_654]):
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
                                mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(stor1)
                                call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
                                uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                            mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = 0
                            mem[mem[64] + 64] = arg2
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
                                    _947 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_947] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_947 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_947 + 64] = msg.sender
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
                                    _1036 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1036] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[_1036 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1036 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                mem[32] = 4
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
                                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                                require ext_code.size(stor3)
                                staticcall stor3.random(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _701 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if bool(mem[_701]) != 1:
                                    if totalSheepStaked < 1:
                                        revert with 0, 17
                                    totalSheepStaked--
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = (10^13 * lastClaimTimestamp) - (10^13 * Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)] << 240].field_16)) / 24 * 3600
                                    mem[mem[64] + 64] = arg2
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
                                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 100] = 128
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(stor1)
                                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[32] = 4
                                    uint256(barn[cd[((32 * idx) + arg1 + 36)] << 240].field_0) = 0
                                    mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = arg2
                                    emit SheepClaimed(cd[((32 * idx) + arg1 + 36)] << 240, 0, arg2);
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + arg1 + 36)])
                require ext_code.size(stor1)
                staticcall stor1.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _609 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_609] == mem[_609 + 12 len 20]
                if mem[_609 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor1)
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + arg1 + 36)] << 240)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _659 = mem[64]
                if mem[64] + 320 < mem[64] or mem[64] + 320 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 320
                require mem[_652] == bool(mem[_652])
                mem[_659] = mem[_652]
                require mem[_652 + 32] == mem[_652 + 63 len 1]
                mem[_659 + 32] = mem[_652 + 32]
                require mem[_652 + 64] == mem[_652 + 95 len 1]
                mem[_659 + 64] = mem[_652 + 64]
                require mem[_652 + 96] == mem[_652 + 127 len 1]
                mem[_659 + 96] = mem[_652 + 96]
                require mem[_652 + 128] == mem[_652 + 159 len 1]
                mem[_659 + 128] = mem[_652 + 128]
                require mem[_652 + 160] == mem[_652 + 191 len 1]
                mem[_659 + 160] = mem[_652 + 160]
                require mem[_652 + 192] == mem[_652 + 223 len 1]
                mem[_659 + 192] = mem[_652 + 192]
                require mem[_652 + 224] == mem[_652 + 255 len 1]
                mem[_659 + 224] = mem[_652 + 224]
                require mem[_652 + 256] == mem[_652 + 287 len 1]
                mem[_659 + 256] = mem[_652 + 256]
                require mem[_652 + 288] == mem[_652 + 319 len 1]
                mem[_659 + 288] = mem[_652 + 288]
                _1060 = mem[_659 + 288]
                if 8 < mem[_659 + 319 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_659 + 319 len 1] + 8)
                _1063 = sha3(mem[0], 5)
                mem[32] = 6
                if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1068 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1068] = uint16(stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0)
                mem[_1068 + 32] = Mask(80, 0, stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16)
                mem[_1068 + 64] = address(stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96)
                if address(stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(woolPerAlpha) < Mask(80, 0, stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1060) + 8) and uint256(woolPerAlpha) - Mask(80, 0, stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) > -1 / uint8(-uint8(_1060) + 8):
                    revert with 0, 17
                if not arg2:
                    _1076 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1076] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[_1076 + 32] = Mask(80, 0, stor9)
                    mem[_1076 + 64] = msg.sender
                    mem[32] = 6
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1060) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1060) + 8 << 248, 5)
                    uint16(pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + arg1 + 36)])
                    Mask(80, 0, pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = Mask(80, 0, stor9)
                    uint16(pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_80) = 0
                    address(pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1060) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1060) + 8)
                    mem[32] = 5
                    if uint256(pack[-uint8(_1060) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1060) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1060) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1060) + 8 << 248, 5)
                    _1100 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1100] = uint16(pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0)
                    mem[_1100 + 32] = Mask(80, 0, pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0)
                    mem[_1100 + 64] = address(pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + arg1 + 36)] << 240] >= uint256(pack[-uint8(_1060) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_0) = uint16(pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1060) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_96) = address(pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor5[-uint8(_1060) + 8 << 248][uint256(stor5[-uint8(_1060) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)] << 240]
                    if not uint256(pack[-uint8(_1060) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1060) + 8 << 248][uint256(pack[-uint8(_1060) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1060) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[32] = 6
                    packIndices[cd[((32 * idx) + arg1 + 36)] << 240] = 0
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = uint16(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64] + 32] = (uint256(woolPerAlpha) * uint8(-uint8(_1060) + 8)) - (Mask(80, 0, stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1060) + 8))
                mem[mem[64] + 64] = arg2
                emit WolfClaimed(cd[((32 * idx) + arg1 + 36)] << 240, (uint256(woolPerAlpha) * uint8(-uint8(_1060) + 8)) - (Mask(80, 0, stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1060) + 8)), arg2);
                if 0 > !((uint256(woolPerAlpha) * uint8(-uint8(_1060) + 8)) - (Mask(80, 0, stor[sha3(_1063) + stor6[cd[((32 * idx) + arg1 + 36)] << 240]].field_16) * uint8(-uint8(_1060) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
