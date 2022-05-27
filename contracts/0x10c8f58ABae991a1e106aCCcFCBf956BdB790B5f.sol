contract main {




// =====================  Runtime code  =====================


const sub_8b6a036d(?) = 2400000000 * 10^18

const sub_9af69f2f(?) = 20

const MAX_ALPHA = 8


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
mapping of struct sub_771f2476;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor8;
uint256 sub_7bde72dc;
uint256 sub_000d07ce;
uint256 MINIMUM_TO_EXIT;
uint256 sub_1e1d8cf8;
uint256 sub_457e5789;
uint256 lastClaimTimestamp;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8

function sub_000d07ce(?) payable {
    return sub_000d07ce
}

function sub_1e1d8cf8(?) payable {
    return sub_1e1d8cf8
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(uint8(stor14.field_0))
}

function sub_457e5789(?) payable {
    return sub_457e5789
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function sub_771f2476(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint16(sub_771f2476[arg1].field_0), Mask(80, 0, sub_771f2476[arg1].field_0), address(sub_771f2476[arg1].field_96)
}

function sub_7bde72dc(?) payable {
    return uint256(sub_7bde72dc)
}

function owner() payable {
    return owner
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    uint8(stor14.field_0) = uint8(arg1)
}

function setSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg2
    sub_000d07ce = arg1
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Barn directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_0db7af53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stor1.tokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    return bool(ext_call.return_data[0])
}

function sub_9e6dee4a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAlphaStaked:
        if not totalAlphaStaked:
            revert with 'NH{q', 18
        idx = 5
        s = 0
        while idx <= 8:
            mem[0] = idx
            mem[32] = 4
            if uint256(pack[idx].field_0) and idx > -1 / uint256(pack[idx].field_0):
                revert with 'NH{q', 17
            if s > (-1 * uint256(pack[idx].field_0) * idx) - 1:
                revert with 'NH{q', 17
            if uint32(arg1) % totalAlphaStaked >= s + (uint256(pack[idx].field_0) * idx):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (uint256(pack[idx].field_0) * idx)
                continue 
            if not uint256(pack[idx].field_0):
                revert with 'NH{q', 18
            if Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0) >= uint256(pack[idx].field_0):
                revert with 'NH{q', 50
            return address(pack[idx][Mask(224, 0, arg1) >> 32 % uint256(pack[idx].field_0)].field_96)
        return 0
    else:
        return 0
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if uint8(stor14.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor14.field_8) = 1
    if not uint8(stor14.field_0):
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
        staticcall stor1.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_51] == bool(mem[_51])
        require mem[_51 + 32] == mem[_51 + 63 len 1]
        require mem[_51 + 64] == mem[_51 + 95 len 1]
        require mem[_51 + 96] == mem[_51 + 127 len 1]
        require mem[_51 + 128] == mem[_51 + 159 len 1]
        require mem[_51 + 160] == mem[_51 + 191 len 1]
        require mem[_51 + 192] == mem[_51 + 223 len 1]
        require mem[_51 + 224] == mem[_51 + 255 len 1]
        require mem[_51 + 256] == mem[_51 + 287 len 1]
        if mem[_51]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            _62 = mem[64]
            mem[64] = mem[64] + 96
            mem[_62] = uint16(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_62 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_62 + 64] = address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96)
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
            uint16(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            Mask(80, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_16) = 0
            uint256(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0)
            if sub_457e5789 < 1:
                revert with 'NH{q', 17
            sub_457e5789--
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0x77eeecee: cd[((32 * idx) + arg1 + 36)], 0, 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _62
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        staticcall stor1.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_68] == bool(mem[_68])
        require mem[_68 + 32] == mem[_68 + 63 len 1]
        require mem[_68 + 64] == mem[_68 + 95 len 1]
        require mem[_68 + 96] == mem[_68 + 127 len 1]
        require mem[_68 + 128] == mem[_68 + 159 len 1]
        require mem[_68 + 160] == mem[_68 + 191 len 1]
        require mem[_68 + 192] == mem[_68 + 223 len 1]
        require mem[_68 + 224] == mem[_68 + 255 len 1]
        _82 = mem[_68 + 256]
        require mem[_68 + 256] == mem[_68 + 287 len 1]
        if 8 < mem[_68 + 287 len 1]:
            revert with 'NH{q', 17
        mem[0] = uint8(-mem[_68 + 287 len 1] + 8)
        _83 = sha3(mem[0], 4)
        mem[32] = 5
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 'NH{q', 50
        mem[0] = sha3(mem[0], 4)
        _86 = mem[64]
        mem[64] = mem[64] + 96
        mem[_86] = uint16(stor[sha3(_83) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_0)
        mem[_86 + 32] = Mask(80, 0, stor[sha3(_83) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_16)
        mem[_86 + 64] = address(stor[sha3(_83) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_96)
        if address(stor[sha3(_83) + stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_82) + 8):
            revert with 'NH{q', 17
        totalAlphaStaked -= uint8(-uint8(_82) + 8)
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 4
        if uint256(pack[-uint8(_82) + 8 << 248].field_0) < 1:
            revert with 'NH{q', 17
        if uint256(pack[-uint8(_82) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_82) + 8 << 248].field_0):
            revert with 'NH{q', 50
        mem[0] = sha3(-uint8(_82) + 8 << 248, 4)
        _95 = mem[64]
        mem[64] = mem[64] + 96
        mem[_95] = uint16(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        mem[_95 + 32] = Mask(80, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        mem[_95 + 64] = address(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_82) + 8 << 248].field_0):
            revert with 'NH{q', 50
        uint16(pack[-uint8(_82) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_82) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_82) + 8 << 248][stor5[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor4[-uint8(_82) + 8 << 248][uint256(stor4[-uint8(_82) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_82) + 8 << 248].field_0):
            revert with 'NH{q', 49
        uint16(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0) = 0
        Mask(80, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0) = Mask(96, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        uint256(pack[-uint8(_82) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 5
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0x34478fbe: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _86
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
    Mask(248, 0, stor14.field_8) = 0
}

function sub_5b519142(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if uint8(stor14.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor14.field_8) = 1
    if address(cd[4]) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        staticcall stor1.isStakingActive() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Staking is not activated'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]):
                if idx >= ('cd', 36).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if msg.sender == stor1:
                    staticcall stor1.tokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_188] == bool(mem[_188])
                    require mem[_188 + 32] == mem[_188 + 63 len 1]
                    require mem[_188 + 64] == mem[_188 + 95 len 1]
                    require mem[_188 + 96] == mem[_188 + 127 len 1]
                    require mem[_188 + 128] == mem[_188 + 159 len 1]
                    require mem[_188 + 160] == mem[_188 + 191 len 1]
                    require mem[_188 + 192] == mem[_188 + 223 len 1]
                    require mem[_188 + 224] == mem[_188 + 255 len 1]
                    require mem[_188 + 256] == mem[_188 + 287 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_188]:
                        if uint8(stor0.field_160):
                            revert with 0, 'Pauseable: paused'
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            _257 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_257] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_257 + 32] = Mask(80, 0, block.timestamp)
                            mem[_257 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 'NH{q', 17
                            if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 'NH{q', 17
                            if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
                                revert with 'NH{q', 17
                            if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                            sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _317 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_317] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_317 + 32] = Mask(80, 0, block.timestamp)
                            mem[_317 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        if sub_457e5789 > -2:
                            revert with 'NH{q', 17
                        sub_457e5789++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_275] == bool(mem[_275])
                        require mem[_275 + 32] == mem[_275 + 63 len 1]
                        require mem[_275 + 64] == mem[_275 + 95 len 1]
                        require mem[_275 + 96] == mem[_275 + 127 len 1]
                        require mem[_275 + 128] == mem[_275 + 159 len 1]
                        require mem[_275 + 160] == mem[_275 + 191 len 1]
                        require mem[_275 + 192] == mem[_275 + 223 len 1]
                        require mem[_275 + 224] == mem[_275 + 255 len 1]
                        _356 = mem[_275 + 256]
                        require mem[_275 + 256] == mem[_275 + 287 len 1]
                        if 8 < mem[_275 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_275 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_275 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_275 + 287 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                        mem[0] = uint8(-uint8(_356) + 8)
                        mem[32] = 4
                        _389 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_389] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_389 + 32] = Mask(80, 0, stor8)
                        mem[_389 + 64] = address(cd[4])
                        uint256(pack[-uint8(_356) + 8 << 248].field_0)++
                        mem[0] = sha3(-uint8(_356) + 8 << 248, 4)
                        uint16(pack[-uint8(_356) + 8 << 248][uint256(pack[-uint8(_356) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, pack[-uint8(_356) + 8 << 248][uint256(pack[-uint8(_356) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, pack[-uint8(_356) + 8 << 248][uint256(pack[-uint8(_356) + 8 << 248].field_0)].field_16) = 0
                        address(pack[-uint8(_356) + 8 << 248][uint256(pack[-uint8(_356) + 8 << 248].field_0)].field_96) = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_7bde72dc)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall stor1.0x6352211e with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_197] == mem[_197 + 12 len 20]
                    if mem[_197 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall stor1.tokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_245] == bool(mem[_245])
                    require mem[_245 + 32] == mem[_245 + 63 len 1]
                    require mem[_245 + 64] == mem[_245 + 95 len 1]
                    require mem[_245 + 96] == mem[_245 + 127 len 1]
                    require mem[_245 + 128] == mem[_245 + 159 len 1]
                    require mem[_245 + 160] == mem[_245 + 191 len 1]
                    require mem[_245 + 192] == mem[_245 + 223 len 1]
                    require mem[_245 + 224] == mem[_245 + 255 len 1]
                    require mem[_245 + 256] == mem[_245 + 287 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_245]:
                        if uint8(stor0.field_160):
                            revert with 0, 'Pauseable: paused'
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            _365 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_365] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_365 + 32] = Mask(80, 0, block.timestamp)
                            mem[_365 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 'NH{q', 17
                            if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 'NH{q', 17
                            if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
                                revert with 'NH{q', 17
                            if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
                                revert with 'NH{q', 17
                            sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _440 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_440] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_440 + 32] = Mask(80, 0, block.timestamp)
                            mem[_440 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        if sub_457e5789 > -2:
                            revert with 'NH{q', 17
                        sub_457e5789++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _383 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_383] == bool(mem[_383])
                        require mem[_383 + 32] == mem[_383 + 63 len 1]
                        require mem[_383 + 64] == mem[_383 + 95 len 1]
                        require mem[_383 + 96] == mem[_383 + 127 len 1]
                        require mem[_383 + 128] == mem[_383 + 159 len 1]
                        require mem[_383 + 160] == mem[_383 + 191 len 1]
                        require mem[_383 + 192] == mem[_383 + 223 len 1]
                        require mem[_383 + 224] == mem[_383 + 255 len 1]
                        _470 = mem[_383 + 256]
                        require mem[_383 + 256] == mem[_383 + 287 len 1]
                        if 8 < mem[_383 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_383 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_383 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_383 + 287 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                        mem[0] = uint8(-uint8(_470) + 8)
                        mem[32] = 4
                        _476 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_476] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_476 + 32] = Mask(80, 0, stor8)
                        mem[_476 + 64] = address(cd[4])
                        uint256(pack[-uint8(_470) + 8 << 248].field_0)++
                        mem[0] = sha3(-uint8(_470) + 8 << 248, 4)
                        uint16(pack[-uint8(_470) + 8 << 248][uint256(pack[-uint8(_470) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, pack[-uint8(_470) + 8 << 248][uint256(pack[-uint8(_470) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, pack[-uint8(_470) + 8 << 248][uint256(pack[-uint8(_470) + 8 << 248].field_0)].field_16) = 0
                        address(pack[-uint8(_470) + 8 << 248][uint256(pack[-uint8(_470) + 8 << 248].field_0)].field_96) = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_7bde72dc)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if address(cd[4]) == tx.origin:
            staticcall stor1.isStakingActive() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Staking is not activated'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_189] == bool(mem[_189])
                        require mem[_189 + 32] == mem[_189 + 63 len 1]
                        require mem[_189 + 64] == mem[_189 + 95 len 1]
                        require mem[_189 + 96] == mem[_189 + 127 len 1]
                        require mem[_189 + 128] == mem[_189 + 159 len 1]
                        require mem[_189 + 160] == mem[_189 + 191 len 1]
                        require mem[_189 + 192] == mem[_189 + 223 len 1]
                        require mem[_189 + 224] == mem[_189 + 255 len 1]
                        require mem[_189 + 256] == mem[_189 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_189]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _262 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_262] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_262 + 32] = Mask(80, 0, block.timestamp)
                                mem[_262 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
                                    revert with 'NH{q', 17
                                if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _322 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_322] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_322 + 32] = Mask(80, 0, block.timestamp)
                                mem[_322 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_276] == bool(mem[_276])
                            require mem[_276 + 32] == mem[_276 + 63 len 1]
                            require mem[_276 + 64] == mem[_276 + 95 len 1]
                            require mem[_276 + 96] == mem[_276 + 127 len 1]
                            require mem[_276 + 128] == mem[_276 + 159 len 1]
                            require mem[_276 + 160] == mem[_276 + 191 len 1]
                            require mem[_276 + 192] == mem[_276 + 223 len 1]
                            require mem[_276 + 224] == mem[_276 + 255 len 1]
                            _357 = mem[_276 + 256]
                            require mem[_276 + 256] == mem[_276 + 287 len 1]
                            if 8 < mem[_276 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_276 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_276 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_276 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_357) + 8)
                            mem[32] = 4
                            _398 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_398] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_398 + 32] = Mask(80, 0, stor8)
                            mem[_398 + 64] = address(cd[4])
                            uint256(pack[-uint8(_357) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_357) + 8 << 248, 4)
                            uint16(pack[-uint8(_357) + 8 << 248][uint256(pack[-uint8(_357) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_357) + 8 << 248][uint256(pack[-uint8(_357) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_357) + 8 << 248][uint256(pack[-uint8(_357) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_357) + 8 << 248][uint256(pack[-uint8(_357) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _198 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_198] == mem[_198 + 12 len 20]
                        if mem[_198 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_246] == bool(mem[_246])
                        require mem[_246 + 32] == mem[_246 + 63 len 1]
                        require mem[_246 + 64] == mem[_246 + 95 len 1]
                        require mem[_246 + 96] == mem[_246 + 127 len 1]
                        require mem[_246 + 128] == mem[_246 + 159 len 1]
                        require mem[_246 + 160] == mem[_246 + 191 len 1]
                        require mem[_246 + 192] == mem[_246 + 223 len 1]
                        require mem[_246 + 224] == mem[_246 + 255 len 1]
                        require mem[_246 + 256] == mem[_246 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_246]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _370 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_370] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_370 + 32] = Mask(80, 0, block.timestamp)
                                mem[_370 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
                                    revert with 'NH{q', 17
                                if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _445 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_445] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_445 + 32] = Mask(80, 0, block.timestamp)
                                mem[_445 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _384 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_384] == bool(mem[_384])
                            require mem[_384 + 32] == mem[_384 + 63 len 1]
                            require mem[_384 + 64] == mem[_384 + 95 len 1]
                            require mem[_384 + 96] == mem[_384 + 127 len 1]
                            require mem[_384 + 128] == mem[_384 + 159 len 1]
                            require mem[_384 + 160] == mem[_384 + 191 len 1]
                            require mem[_384 + 192] == mem[_384 + 223 len 1]
                            require mem[_384 + 224] == mem[_384 + 255 len 1]
                            _471 = mem[_384 + 256]
                            require mem[_384 + 256] == mem[_384 + 287 len 1]
                            if 8 < mem[_384 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_384 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_384 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_384 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_471) + 8)
                            mem[32] = 4
                            _485 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_485] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_485 + 32] = Mask(80, 0, stor8)
                            mem[_485 + 64] = address(cd[4])
                            uint256(pack[-uint8(_471) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_471) + 8 << 248, 4)
                            uint16(pack[-uint8(_471) + 8 << 248][uint256(pack[-uint8(_471) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_471) + 8 << 248][uint256(pack[-uint8(_471) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_471) + 8 << 248][uint256(pack[-uint8(_471) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_471) + 8 << 248][uint256(pack[-uint8(_471) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if stor1 != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            staticcall stor1.isStakingActive() with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Staking is not activated'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _190 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_190] == bool(mem[_190])
                        require mem[_190 + 32] == mem[_190 + 63 len 1]
                        require mem[_190 + 64] == mem[_190 + 95 len 1]
                        require mem[_190 + 96] == mem[_190 + 127 len 1]
                        require mem[_190 + 128] == mem[_190 + 159 len 1]
                        require mem[_190 + 160] == mem[_190 + 191 len 1]
                        require mem[_190 + 192] == mem[_190 + 223 len 1]
                        require mem[_190 + 224] == mem[_190 + 255 len 1]
                        require mem[_190 + 256] == mem[_190 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_190]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _267 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_267] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_267 + 32] = Mask(80, 0, block.timestamp)
                                mem[_267 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
                                    revert with 'NH{q', 17
                                if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _327 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_327] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_327 + 32] = Mask(80, 0, block.timestamp)
                                mem[_327 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _277 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_277] == bool(mem[_277])
                            require mem[_277 + 32] == mem[_277 + 63 len 1]
                            require mem[_277 + 64] == mem[_277 + 95 len 1]
                            require mem[_277 + 96] == mem[_277 + 127 len 1]
                            require mem[_277 + 128] == mem[_277 + 159 len 1]
                            require mem[_277 + 160] == mem[_277 + 191 len 1]
                            require mem[_277 + 192] == mem[_277 + 223 len 1]
                            require mem[_277 + 224] == mem[_277 + 255 len 1]
                            _358 = mem[_277 + 256]
                            require mem[_277 + 256] == mem[_277 + 287 len 1]
                            if 8 < mem[_277 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_277 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_277 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_277 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_358) + 8)
                            mem[32] = 4
                            _407 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_407] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_407 + 32] = Mask(80, 0, stor8)
                            mem[_407 + 64] = address(cd[4])
                            uint256(pack[-uint8(_358) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_358) + 8 << 248, 4)
                            uint16(pack[-uint8(_358) + 8 << 248][uint256(pack[-uint8(_358) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_358) + 8 << 248][uint256(pack[-uint8(_358) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_358) + 8 << 248][uint256(pack[-uint8(_358) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_358) + 8 << 248][uint256(pack[-uint8(_358) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _199 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_199] == mem[_199 + 12 len 20]
                        if mem[_199 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_247] == bool(mem[_247])
                        require mem[_247 + 32] == mem[_247 + 63 len 1]
                        require mem[_247 + 64] == mem[_247 + 95 len 1]
                        require mem[_247 + 96] == mem[_247 + 127 len 1]
                        require mem[_247 + 128] == mem[_247 + 159 len 1]
                        require mem[_247 + 160] == mem[_247 + 191 len 1]
                        require mem[_247 + 192] == mem[_247 + 223 len 1]
                        require mem[_247 + 224] == mem[_247 + 255 len 1]
                        require mem[_247 + 256] == mem[_247 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_247]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _375 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_375] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_375 + 32] = Mask(80, 0, block.timestamp)
                                mem[_375 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
                                    revert with 'NH{q', 17
                                if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                                sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _450 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_450] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_450 + 32] = Mask(80, 0, block.timestamp)
                                mem[_450 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.tokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_385] == bool(mem[_385])
                            require mem[_385 + 32] == mem[_385 + 63 len 1]
                            require mem[_385 + 64] == mem[_385 + 95 len 1]
                            require mem[_385 + 96] == mem[_385 + 127 len 1]
                            require mem[_385 + 128] == mem[_385 + 159 len 1]
                            require mem[_385 + 160] == mem[_385 + 191 len 1]
                            require mem[_385 + 192] == mem[_385 + 223 len 1]
                            require mem[_385 + 224] == mem[_385 + 255 len 1]
                            _472 = mem[_385 + 256]
                            require mem[_385 + 256] == mem[_385 + 287 len 1]
                            if 8 < mem[_385 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_385 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_385 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_385 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_472) + 8)
                            mem[32] = 4
                            _494 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_494] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_494 + 32] = Mask(80, 0, stor8)
                            mem[_494 + 64] = address(cd[4])
                            uint256(pack[-uint8(_472) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_472) + 8 << 248, 4)
                            uint16(pack[-uint8(_472) + 8 << 248][uint256(pack[-uint8(_472) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_472) + 8 << 248][uint256(pack[-uint8(_472) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_472) + 8 << 248][uint256(pack[-uint8(_472) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_472) + 8 << 248][uint256(pack[-uint8(_472) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    Mask(248, 0, stor14.field_8) = 0
}

function sub_b40b03d2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if uint8(stor14.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor14.field_8) = 1
    if uint8(stor0.field_160):
        revert with 0, 'Pauseable: paused'
    if sub_1e1d8cf8 >= 2400000000 * 10^18:
        if tx.origin != msg.sender:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_667] == bool(mem[_667])
            require mem[_667 + 32] == mem[_667 + 63 len 1]
            require mem[_667 + 64] == mem[_667 + 95 len 1]
            require mem[_667 + 96] == mem[_667 + 127 len 1]
            require mem[_667 + 128] == mem[_667 + 159 len 1]
            require mem[_667 + 160] == mem[_667 + 191 len 1]
            require mem[_667 + 192] == mem[_667 + 223 len 1]
            require mem[_667 + 224] == mem[_667 + 255 len 1]
            require mem[_667 + 256] == mem[_667 + 287 len 1]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_667]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _689 = mem[64]
                mem[64] = mem[64] + 96
                mem[_689] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_689 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_689 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_1e1d8cf8 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if not cd[36]:
                            if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _893 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_893] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_893 + 32] = Mask(80, 0, block.timestamp)
                                mem[_893 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _961 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_961] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_961 + 32] = Mask(80, 0, block.timestamp)
                                mem[_961 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > -(80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_762] == mem[_762 + 12 len 20]
                            staticcall mem[_762 + 12 len 20].0x7d94792a with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _809 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _817 = mem[_809]
                            require mem[_809] == mem[_809]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _855 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1055 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1055 + 32 len mem[_1055]]) xor _817) != 1:
                                mem[_855 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_855 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_855 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_855 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                if 0 > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += ((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_855 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_855 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_855 + 276] = 0
                                mem[_855 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _835 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_835] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_835 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_835 + 64] = msg.sender
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _873 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_873] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_873 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_873 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _717 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_717] == mem[_717 + 12 len 20]
                                staticcall mem[_717 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _748 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _755 = mem[_748]
                                require mem[_748] == mem[_748]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _799 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _987 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_987 + 32 len mem[_987]]) xor _755) == 1:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 'NH{q', 17
                                    else:
                                        if 0 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_799 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_799 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_799 + 276] = 0
                                mem[_799 + 308] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _895 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_895] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_895 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_895 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -((20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += (20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _963 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_963] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_963 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_963 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _769 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_769] == mem[_769 + 12 len 20]
                                staticcall mem[_769 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _815 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _819 = mem[_815]
                                require mem[_815] == mem[_815]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _859 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1065 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1065 + 32 len mem[_1065]]) xor _819) != 1:
                                    mem[_859 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_859 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_859 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_859 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                    if 0 > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += ((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_859 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_859 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_859 + 276] = 0
                                    mem[_859 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                else:
                    if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                        revert with 'NH{q', 17
                    if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S LOOT'
                    if sub_1e1d8cf8 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if not cd[36]:
                            if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _933 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_933] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_933 + 32] = Mask(80, 0, block.timestamp)
                                mem[_933 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _997 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_997] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_997 + 32] = Mask(80, 0, block.timestamp)
                                mem[_997 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > -(80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _789 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_789] == mem[_789 + 12 len 20]
                            staticcall mem[_789 + 12 len 20].0x7d94792a with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _829 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _839 = mem[_829]
                            require mem[_829] == mem[_829]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _875 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1084 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1084 + 32 len mem[_1084]]) xor _839) != 1:
                                mem[_875 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_875 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_875 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_875 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                if 0 > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += ((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_875 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_875 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_875 + 276] = 0
                                mem[_875 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _857 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_857] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_857 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_857 + 64] = msg.sender
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _906 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_906] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_906 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_906 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _734 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_734] == mem[_734 + 12 len 20]
                                staticcall mem[_734 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _777 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _782 = mem[_777]
                                require mem[_777] == mem[_777]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _822 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1027 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1027 + 32 len mem[_1027]]) xor _782) == 1:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 'NH{q', 17
                                    else:
                                        if 0 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_822 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_822 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_822 + 276] = 0
                                mem[_822 + 308] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _935 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_935] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_935 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_935 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -((20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += (20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _1001 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1001] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1001 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1001 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _795 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_795] == mem[_795 + 12 len 20]
                                staticcall mem[_795 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _836 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _851 = mem[_836]
                                require mem[_836] == mem[_836]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _888 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1093 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1093 + 32 len mem[_1093]]) xor _851) != 1:
                                    mem[_888 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_888 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_888 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_888 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                    if 0 > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += ((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_888 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_888 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_888 + 276] = 0
                                    mem[_888 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _705 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_705] == mem[_705 + 12 len 20]
                if mem[_705 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                staticcall stor1.tokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_751] == bool(mem[_751])
                require mem[_751 + 32] == mem[_751 + 63 len 1]
                require mem[_751 + 64] == mem[_751 + 95 len 1]
                require mem[_751 + 96] == mem[_751 + 127 len 1]
                require mem[_751 + 128] == mem[_751 + 159 len 1]
                require mem[_751 + 160] == mem[_751 + 191 len 1]
                require mem[_751 + 192] == mem[_751 + 223 len 1]
                require mem[_751 + 224] == mem[_751 + 255 len 1]
                _947 = mem[_751 + 256]
                require mem[_751 + 256] == mem[_751 + 287 len 1]
                if 8 < mem[_751 + 287 len 1]:
                    revert with 'NH{q', 17
                mem[0] = uint8(-mem[_751 + 287 len 1] + 8)
                _1023 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 'NH{q', 50
                mem[0] = sha3(mem[0], 4)
                _1038 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1038] = uint16(stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
                mem[_1038 + 32] = Mask(80, 0, stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
                mem[_1038 + 64] = address(stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
                if address(stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_7bde72dc) < Mask(80, 0, stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
                    revert with 'NH{q', 17
                if uint8(-uint8(_947) + 8) and uint256(sub_7bde72dc) - Mask(80, 0, stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_947) + 8):
                    revert with 'NH{q', 17
                if not cd[36]:
                    _1083 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1083] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1083 + 32] = Mask(80, 0, stor8)
                    mem[_1083 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_947) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_947) + 8 << 248, 4)
                    uint16(pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    Mask(80, 0, pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = 0
                    address(pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_947) + 8):
                        revert with 'NH{q', 17
                    totalAlphaStaked -= uint8(-uint8(_947) + 8)
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_947) + 8 << 248].field_0) < 1:
                        revert with 'NH{q', 17
                    if uint256(pack[-uint8(_947) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_947) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_947) + 8 << 248, 4)
                    _1222 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1222] = uint16(pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    mem[_1222 + 32] = Mask(80, 0, pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    mem[_1222 + 64] = address(pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_947) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    uint16(pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_947) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_947) + 8 << 248][uint256(stor4[-uint8(_947) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_947) + 8 << 248].field_0):
                        revert with 'NH{q', 49
                    uint16(pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0) = 0
                    Mask(80, 0, pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0) = Mask(96, 0, pack[-uint8(_947) + 8 << 248][uint256(pack[-uint8(_947) + 8 << 248].field_0)].field_0)
                    uint256(pack[-uint8(_947) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_7bde72dc) * uint8(-uint8(_947) + 8)) - (Mask(80, 0, stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_947) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x34478fbe: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_7bde72dc) * uint8(-uint8(_947) + 8)) - (Mask(80, 0, stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_947) + 8)), bool(cd[36])
                if 0 > (-1 * uint256(sub_7bde72dc) * uint8(-uint8(_947) + 8)) + (Mask(80, 0, stor[sha3(_1023) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_947) + 8)) - 1:
                    revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 'NH{q', 17
        if block.timestamp - lastClaimTimestamp and sub_457e5789 > -1 / block.timestamp - lastClaimTimestamp:
            revert with 'NH{q', 17
        if (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (block.timestamp * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
            revert with 'NH{q', 17
        if sub_1e1d8cf8 > -((block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_1e1d8cf8 += (block.timestamp * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        if tx.origin != msg.sender:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_668] == bool(mem[_668])
            require mem[_668 + 32] == mem[_668 + 63 len 1]
            require mem[_668 + 64] == mem[_668 + 95 len 1]
            require mem[_668 + 96] == mem[_668 + 127 len 1]
            require mem[_668 + 128] == mem[_668 + 159 len 1]
            require mem[_668 + 160] == mem[_668 + 191 len 1]
            require mem[_668 + 192] == mem[_668 + 223 len 1]
            require mem[_668 + 224] == mem[_668 + 255 len 1]
            require mem[_668 + 256] == mem[_668 + 287 len 1]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_668]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _692 = mem[64]
                mem[64] = mem[64] + 96
                mem[_692] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_692 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_692 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_1e1d8cf8 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if not cd[36]:
                            if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _894 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_894] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_894 + 32] = Mask(80, 0, block.timestamp)
                                mem[_894 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _962 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_962] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_962 + 32] = Mask(80, 0, block.timestamp)
                                mem[_962 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > -(80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_764] == mem[_764 + 12 len 20]
                            staticcall mem[_764 + 12 len 20].0x7d94792a with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _810 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _818 = mem[_810]
                            require mem[_810] == mem[_810]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _856 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1058 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1058 + 32 len mem[_1058]]) xor _818) != 1:
                                mem[_856 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_856 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_856 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_856 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                if 0 > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += ((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_856 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_856 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_856 + 276] = 0
                                mem[_856 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _837 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_837] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_837 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_837 + 64] = msg.sender
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _874 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_874] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_874 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_874 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_718] == mem[_718 + 12 len 20]
                                staticcall mem[_718 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _750 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _758 = mem[_750]
                                require mem[_750] == mem[_750]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _801 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _992 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_992 + 32 len mem[_992]]) xor _758) == 1:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 'NH{q', 17
                                    else:
                                        if 0 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_801 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_801 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_801 + 276] = 0
                                mem[_801 + 308] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _900 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_900] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_900 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_900 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -((20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += (20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _968 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_968] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_968 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_968 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _770 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_770] == mem[_770 + 12 len 20]
                                staticcall mem[_770 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _820 = mem[_816]
                                require mem[_816] == mem[_816]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _860 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1068 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1068 + 32 len mem[_1068]]) xor _820) != 1:
                                    mem[_860 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_860 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_860 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_860 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                    if 0 > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += ((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_860 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_860 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_860 + 276] = 0
                                    mem[_860 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                else:
                    if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                        revert with 'NH{q', 17
                    if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S LOOT'
                    if sub_1e1d8cf8 < 2400000000 * 10^18:
                        if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                            revert with 'NH{q', 17
                        if not cd[36]:
                            if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _934 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_934] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_934 + 32] = Mask(80, 0, block.timestamp)
                                mem[_934 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _998 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_998] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_998 + 32] = Mask(80, 0, block.timestamp)
                                mem[_998 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > -(80 * (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                        else:
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_790] == mem[_790 + 12 len 20]
                            staticcall mem[_790 + 12 len 20].0x7d94792a with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _840 = mem[_830]
                            require mem[_830] == mem[_830]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _876 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1088 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1088 + 32 len mem[_1088]]) xor _840) != 1:
                                mem[_876 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_876 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_876 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_876 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                if 0 > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                    revert with 'NH{q', 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += ((block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_876 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_876 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_876 + 276] = 0
                                mem[_876 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _858 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_858] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_858 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_858 + 64] = msg.sender
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _908 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_908] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_908 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_908 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _736 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_736] == mem[_736 + 12 len 20]
                                staticcall mem[_736 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _778 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _786 = mem[_778]
                                require mem[_778] == mem[_778]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _824 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1034 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1034 + 32 len mem[_1034]]) xor _786) == 1:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -1:
                                            revert with 'NH{q', 17
                                    else:
                                        if 0 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                mem[_824 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                if sub_457e5789 < 1:
                                    revert with 'NH{q', 17
                                sub_457e5789--
                                mem[_824 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_824 + 276] = 0
                                mem[_824 + 308] = bool(cd[36])
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _940 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_940] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_940 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_940 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -((20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += (20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _1006 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1006] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1006 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1006 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                            else:
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _796 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_796] == mem[_796 + 12 len 20]
                                staticcall mem[_796 + 12 len 20].0x7d94792a with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _838 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _854 = mem[_838]
                                require mem[_838] == mem[_838]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _892 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1098 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1098 + 32 len mem[_1098]]) xor _854) != 1:
                                    mem[_892 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_892 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_892 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_892 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600, bool(cd[36])
                                    if 0 > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                        revert with 'NH{q', 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > -((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) - 1:
                                            revert with 'NH{q', 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 > -unaccountedRewards - 1:
                                            revert with 'NH{q', 17
                                        if not totalAlphaStaked:
                                            revert with 'NH{q', 18
                                        if uint256(sub_7bde72dc) > -(((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked) - 1:
                                            revert with 'NH{q', 17
                                        uint256(sub_7bde72dc) += ((lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
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
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = 0
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = 0
                                    uint256(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = Mask(96, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                                    if sub_457e5789 < 1:
                                        revert with 'NH{q', 17
                                    sub_457e5789--
                                    mem[_892 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_892 + 276] = 0
                                    mem[_892 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_707] == mem[_707 + 12 len 20]
                if mem[_707 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                staticcall stor1.tokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _753 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_753] == bool(mem[_753])
                require mem[_753 + 32] == mem[_753 + 63 len 1]
                require mem[_753 + 64] == mem[_753 + 95 len 1]
                require mem[_753 + 96] == mem[_753 + 127 len 1]
                require mem[_753 + 128] == mem[_753 + 159 len 1]
                require mem[_753 + 160] == mem[_753 + 191 len 1]
                require mem[_753 + 192] == mem[_753 + 223 len 1]
                require mem[_753 + 224] == mem[_753 + 255 len 1]
                _953 = mem[_753 + 256]
                require mem[_753 + 256] == mem[_753 + 287 len 1]
                if 8 < mem[_753 + 287 len 1]:
                    revert with 'NH{q', 17
                mem[0] = uint8(-mem[_753 + 287 len 1] + 8)
                _1030 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 'NH{q', 50
                mem[0] = sha3(mem[0], 4)
                _1040 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1040] = uint16(stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
                mem[_1040 + 32] = Mask(80, 0, stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
                mem[_1040 + 64] = address(stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
                if address(stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_7bde72dc) < Mask(80, 0, stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
                    revert with 'NH{q', 17
                if uint8(-uint8(_953) + 8) and uint256(sub_7bde72dc) - Mask(80, 0, stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_953) + 8):
                    revert with 'NH{q', 17
                if not cd[36]:
                    _1087 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1087] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1087 + 32] = Mask(80, 0, stor8)
                    mem[_1087 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_953) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_953) + 8 << 248, 4)
                    uint16(pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    Mask(80, 0, pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = 0
                    address(pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_953) + 8):
                        revert with 'NH{q', 17
                    totalAlphaStaked -= uint8(-uint8(_953) + 8)
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_953) + 8 << 248].field_0) < 1:
                        revert with 'NH{q', 17
                    if uint256(pack[-uint8(_953) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_953) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_953) + 8 << 248, 4)
                    _1226 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1226] = uint16(pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    mem[_1226 + 32] = Mask(80, 0, pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    mem[_1226 + 64] = address(pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_953) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    uint16(pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_953) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_953) + 8 << 248][uint256(stor4[-uint8(_953) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_953) + 8 << 248].field_0):
                        revert with 'NH{q', 49
                    uint16(pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0) = 0
                    Mask(80, 0, pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0) = Mask(96, 0, pack[-uint8(_953) + 8 << 248][uint256(pack[-uint8(_953) + 8 << 248].field_0)].field_0)
                    uint256(pack[-uint8(_953) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_7bde72dc) * uint8(-uint8(_953) + 8)) - (Mask(80, 0, stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_953) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x34478fbe: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_7bde72dc) * uint8(-uint8(_953) + 8)) - (Mask(80, 0, stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_953) + 8)), bool(cd[36])
                if 0 > (-1 * uint256(sub_7bde72dc) * uint8(-uint8(_953) + 8)) + (Mask(80, 0, stor[sha3(_1030) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_953) + 8)) - 1:
                    revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    Mask(248, 0, stor14.field_8) = 0
}



}
