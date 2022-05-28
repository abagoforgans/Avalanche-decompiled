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
uint256 sub_a94945bb;
uint256 sub_40a8058a;
uint256 sub_1e1d8cf8;
uint256 sub_457e5789;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
uint8 stor16; offset 8
uint8 canClaim; offset 16
address sub_b1494df2Address; offset 24
uint256 stor16; offset 16
uint256 stor16; offset 8
address swapperAddress;

function sub_000d07ce(?) payable {
    return sub_000d07ce
}

function sub_1e1d8cf8(?) payable {
    return sub_1e1d8cf8
}

function swapper() payable {
    return swapperAddress
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function sub_40a8058a(?) payable {
    return sub_40a8058a
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

function canClaim() payable {
    return bool(canClaim)
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

function sub_a94945bb(?) payable {
    return sub_a94945bb
}

function sub_b1494df2(?) payable {
    return sub_b1494df2Address
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

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function setSwapper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapperAddress = arg1
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function sub_9d34b691(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor16.field_16) = Mask(240, 0, bool(arg1))
}

function sub_3ef27ae4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    lastClaimTimestamp = arg1
    sub_1e1d8cf8 = arg2
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

function sub_d5128535(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if swapperAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only swpr || owner'
    if arg2:
        if arg4 < lastClaimTimestamp:
            revert with 'NH{q', 17
        if arg4 - lastClaimTimestamp and sub_457e5789 > -1 / arg4 - lastClaimTimestamp:
            revert with 'NH{q', 17
        if (arg4 * sub_457e5789) - (lastClaimTimestamp * sub_457e5789) and sub_000d07ce > -1 / (arg4 * sub_457e5789) - (lastClaimTimestamp * sub_457e5789):
            revert with 'NH{q', 17
        if sub_1e1d8cf8 > -((arg4 * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600) - 1:
            revert with 'NH{q', 17
        sub_1e1d8cf8 += (arg4 * sub_457e5789 * sub_000d07ce) - (lastClaimTimestamp * sub_457e5789 * sub_000d07ce) / 24 * 3600
        uint16(sub_771f2476[arg1].field_0) = uint16(arg1)
        Mask(80, 0, sub_771f2476[arg1].field_16) = Mask(80, 0, arg4)
        address(sub_771f2476[arg1].field_96) = address(arg3)
        if sub_457e5789 > -2:
            revert with 'NH{q', 17
        sub_457e5789++
        emit TokenStaked(address(arg3), arg1, arg4);
    else:
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
        if 8 < ext_call.return_data[287 len 1]:
            revert with 'NH{q', 17
        if totalAlphaStaked > -uint8(-ext_call.return_data[287 len 1] + 8) - 1:
            revert with 'NH{q', 17
        totalAlphaStaked += uint8(-ext_call.return_data[287 len 1] + 8)
        packIndices[arg1] = uint256(pack[uint8(-ext_call.return_data[287 len 1] + 8)].field_0)
        uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)++
        uint16(pack[-ext_call.return_data[287 len 1] + 8 << 248][uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)].field_0) = uint16(arg1)
        Mask(80, 0, pack[-ext_call.return_data[287 len 1] + 8 << 248][uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
        Mask(80, 0, pack[-ext_call.return_data[287 len 1] + 8 << 248][uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)].field_16) = 0
        address(pack[-ext_call.return_data[287 len 1] + 8 << 248][uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)].field_96) = address(arg3)
        emit TokenStaked(address(arg3), arg1, uint256(sub_7bde72dc));
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if uint8(stor16.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor16.field_8) = 1
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
    Mask(248, 0, stor16.field_8) = 0
}

function sub_5b519142(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if uint8(stor0.field_160):
        revert with 0, 'Pauseable: paused'
    if uint8(stor16.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor16.field_8) = 1
    if address(cd[4]) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
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
                    _184 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_184] == bool(mem[_184])
                    require mem[_184 + 32] == mem[_184 + 63 len 1]
                    require mem[_184 + 64] == mem[_184 + 95 len 1]
                    require mem[_184 + 96] == mem[_184 + 127 len 1]
                    require mem[_184 + 128] == mem[_184 + 159 len 1]
                    require mem[_184 + 160] == mem[_184 + 191 len 1]
                    require mem[_184 + 192] == mem[_184 + 223 len 1]
                    require mem[_184 + 224] == mem[_184 + 255 len 1]
                    require mem[_184 + 256] == mem[_184 + 287 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_184]:
                        if uint8(stor0.field_160):
                            revert with 0, 'Pauseable: paused'
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            _253 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_253] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_253 + 32] = Mask(80, 0, block.timestamp)
                            mem[_253 + 64] = address(cd[4])
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
                            _313 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_313] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_313 + 32] = Mask(80, 0, block.timestamp)
                            mem[_313 + 64] = address(cd[4])
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
                        _271 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_271] == bool(mem[_271])
                        require mem[_271 + 32] == mem[_271 + 63 len 1]
                        require mem[_271 + 64] == mem[_271 + 95 len 1]
                        require mem[_271 + 96] == mem[_271 + 127 len 1]
                        require mem[_271 + 128] == mem[_271 + 159 len 1]
                        require mem[_271 + 160] == mem[_271 + 191 len 1]
                        require mem[_271 + 192] == mem[_271 + 223 len 1]
                        require mem[_271 + 224] == mem[_271 + 255 len 1]
                        _352 = mem[_271 + 256]
                        require mem[_271 + 256] == mem[_271 + 287 len 1]
                        if 8 < mem[_271 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_271 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_271 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_271 + 287 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                        mem[0] = uint8(-uint8(_352) + 8)
                        mem[32] = 4
                        _385 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_385] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_385 + 32] = Mask(80, 0, stor8)
                        mem[_385 + 64] = address(cd[4])
                        uint256(pack[-uint8(_352) + 8 << 248].field_0)++
                        mem[0] = sha3(-uint8(_352) + 8 << 248, 4)
                        uint16(pack[-uint8(_352) + 8 << 248][uint256(pack[-uint8(_352) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, pack[-uint8(_352) + 8 << 248][uint256(pack[-uint8(_352) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, pack[-uint8(_352) + 8 << 248][uint256(pack[-uint8(_352) + 8 << 248].field_0)].field_16) = 0
                        address(pack[-uint8(_352) + 8 << 248][uint256(pack[-uint8(_352) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                    _193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_193] == mem[_193 + 12 len 20]
                    if mem[_193 + 12 len 20] != msg.sender:
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
                    _241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_241] == bool(mem[_241])
                    require mem[_241 + 32] == mem[_241 + 63 len 1]
                    require mem[_241 + 64] == mem[_241 + 95 len 1]
                    require mem[_241 + 96] == mem[_241 + 127 len 1]
                    require mem[_241 + 128] == mem[_241 + 159 len 1]
                    require mem[_241 + 160] == mem[_241 + 191 len 1]
                    require mem[_241 + 192] == mem[_241 + 223 len 1]
                    require mem[_241 + 224] == mem[_241 + 255 len 1]
                    require mem[_241 + 256] == mem[_241 + 287 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_241]:
                        if uint8(stor0.field_160):
                            revert with 0, 'Pauseable: paused'
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            _361 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_361] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_361 + 32] = Mask(80, 0, block.timestamp)
                            mem[_361 + 64] = address(cd[4])
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
                            _436 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_436] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_436 + 32] = Mask(80, 0, block.timestamp)
                            mem[_436 + 64] = address(cd[4])
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
                        _379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_379] == bool(mem[_379])
                        require mem[_379 + 32] == mem[_379 + 63 len 1]
                        require mem[_379 + 64] == mem[_379 + 95 len 1]
                        require mem[_379 + 96] == mem[_379 + 127 len 1]
                        require mem[_379 + 128] == mem[_379 + 159 len 1]
                        require mem[_379 + 160] == mem[_379 + 191 len 1]
                        require mem[_379 + 192] == mem[_379 + 223 len 1]
                        require mem[_379 + 224] == mem[_379 + 255 len 1]
                        _466 = mem[_379 + 256]
                        require mem[_379 + 256] == mem[_379 + 287 len 1]
                        if 8 < mem[_379 + 287 len 1]:
                            revert with 'NH{q', 17
                        if totalAlphaStaked > -uint8(-mem[_379 + 287 len 1] + 8) - 1:
                            revert with 'NH{q', 17
                        totalAlphaStaked += uint8(-mem[_379 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_379 + 287 len 1] + 8)
                        packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                        mem[0] = uint8(-uint8(_466) + 8)
                        mem[32] = 4
                        _472 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_472] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_472 + 32] = Mask(80, 0, stor8)
                        mem[_472 + 64] = address(cd[4])
                        uint256(pack[-uint8(_466) + 8 << 248].field_0)++
                        mem[0] = sha3(-uint8(_466) + 8 << 248, 4)
                        uint16(pack[-uint8(_466) + 8 << 248][uint256(pack[-uint8(_466) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, pack[-uint8(_466) + 8 << 248][uint256(pack[-uint8(_466) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                        Mask(80, 0, pack[-uint8(_466) + 8 << 248][uint256(pack[-uint8(_466) + 8 << 248].field_0)].field_16) = 0
                        address(pack[-uint8(_466) + 8 << 248][uint256(pack[-uint8(_466) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_185] == bool(mem[_185])
                        require mem[_185 + 32] == mem[_185 + 63 len 1]
                        require mem[_185 + 64] == mem[_185 + 95 len 1]
                        require mem[_185 + 96] == mem[_185 + 127 len 1]
                        require mem[_185 + 128] == mem[_185 + 159 len 1]
                        require mem[_185 + 160] == mem[_185 + 191 len 1]
                        require mem[_185 + 192] == mem[_185 + 223 len 1]
                        require mem[_185 + 224] == mem[_185 + 255 len 1]
                        require mem[_185 + 256] == mem[_185 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_185]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _258 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_258] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_258 + 32] = Mask(80, 0, block.timestamp)
                                mem[_258 + 64] = address(cd[4])
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
                                _318 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_318] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_318 + 32] = Mask(80, 0, block.timestamp)
                                mem[_318 + 64] = address(cd[4])
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
                            _272 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_272] == bool(mem[_272])
                            require mem[_272 + 32] == mem[_272 + 63 len 1]
                            require mem[_272 + 64] == mem[_272 + 95 len 1]
                            require mem[_272 + 96] == mem[_272 + 127 len 1]
                            require mem[_272 + 128] == mem[_272 + 159 len 1]
                            require mem[_272 + 160] == mem[_272 + 191 len 1]
                            require mem[_272 + 192] == mem[_272 + 223 len 1]
                            require mem[_272 + 224] == mem[_272 + 255 len 1]
                            _353 = mem[_272 + 256]
                            require mem[_272 + 256] == mem[_272 + 287 len 1]
                            if 8 < mem[_272 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_272 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_272 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_272 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_353) + 8)
                            mem[32] = 4
                            _394 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_394] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_394 + 32] = Mask(80, 0, stor8)
                            mem[_394 + 64] = address(cd[4])
                            uint256(pack[-uint8(_353) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_353) + 8 << 248, 4)
                            uint16(pack[-uint8(_353) + 8 << 248][uint256(pack[-uint8(_353) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_353) + 8 << 248][uint256(pack[-uint8(_353) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_353) + 8 << 248][uint256(pack[-uint8(_353) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_353) + 8 << 248][uint256(pack[-uint8(_353) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_194] == mem[_194 + 12 len 20]
                        if mem[_194 + 12 len 20] != msg.sender:
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
                        _242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_242] == bool(mem[_242])
                        require mem[_242 + 32] == mem[_242 + 63 len 1]
                        require mem[_242 + 64] == mem[_242 + 95 len 1]
                        require mem[_242 + 96] == mem[_242 + 127 len 1]
                        require mem[_242 + 128] == mem[_242 + 159 len 1]
                        require mem[_242 + 160] == mem[_242 + 191 len 1]
                        require mem[_242 + 192] == mem[_242 + 223 len 1]
                        require mem[_242 + 224] == mem[_242 + 255 len 1]
                        require mem[_242 + 256] == mem[_242 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_242]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _366 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_366] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_366 + 32] = Mask(80, 0, block.timestamp)
                                mem[_366 + 64] = address(cd[4])
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
                                _441 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_441] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_441 + 32] = Mask(80, 0, block.timestamp)
                                mem[_441 + 64] = address(cd[4])
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
                            _380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_380] == bool(mem[_380])
                            require mem[_380 + 32] == mem[_380 + 63 len 1]
                            require mem[_380 + 64] == mem[_380 + 95 len 1]
                            require mem[_380 + 96] == mem[_380 + 127 len 1]
                            require mem[_380 + 128] == mem[_380 + 159 len 1]
                            require mem[_380 + 160] == mem[_380 + 191 len 1]
                            require mem[_380 + 192] == mem[_380 + 223 len 1]
                            require mem[_380 + 224] == mem[_380 + 255 len 1]
                            _467 = mem[_380 + 256]
                            require mem[_380 + 256] == mem[_380 + 287 len 1]
                            if 8 < mem[_380 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_380 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_380 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_380 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_467) + 8)
                            mem[32] = 4
                            _481 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_481] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_481 + 32] = Mask(80, 0, stor8)
                            mem[_481 + 64] = address(cd[4])
                            uint256(pack[-uint8(_467) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_467) + 8 << 248, 4)
                            uint16(pack[-uint8(_467) + 8 << 248][uint256(pack[-uint8(_467) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_467) + 8 << 248][uint256(pack[-uint8(_467) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_467) + 8 << 248][uint256(pack[-uint8(_467) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_467) + 8 << 248][uint256(pack[-uint8(_467) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _186 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_186] == bool(mem[_186])
                        require mem[_186 + 32] == mem[_186 + 63 len 1]
                        require mem[_186 + 64] == mem[_186 + 95 len 1]
                        require mem[_186 + 96] == mem[_186 + 127 len 1]
                        require mem[_186 + 128] == mem[_186 + 159 len 1]
                        require mem[_186 + 160] == mem[_186 + 191 len 1]
                        require mem[_186 + 192] == mem[_186 + 223 len 1]
                        require mem[_186 + 224] == mem[_186 + 255 len 1]
                        require mem[_186 + 256] == mem[_186 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_186]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _263 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_263] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_263 + 32] = Mask(80, 0, block.timestamp)
                                mem[_263 + 64] = address(cd[4])
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
                                _323 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_323] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_323 + 32] = Mask(80, 0, block.timestamp)
                                mem[_323 + 64] = address(cd[4])
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
                            _273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_273] == bool(mem[_273])
                            require mem[_273 + 32] == mem[_273 + 63 len 1]
                            require mem[_273 + 64] == mem[_273 + 95 len 1]
                            require mem[_273 + 96] == mem[_273 + 127 len 1]
                            require mem[_273 + 128] == mem[_273 + 159 len 1]
                            require mem[_273 + 160] == mem[_273 + 191 len 1]
                            require mem[_273 + 192] == mem[_273 + 223 len 1]
                            require mem[_273 + 224] == mem[_273 + 255 len 1]
                            _354 = mem[_273 + 256]
                            require mem[_273 + 256] == mem[_273 + 287 len 1]
                            if 8 < mem[_273 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_273 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_273 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_273 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_354) + 8)
                            mem[32] = 4
                            _403 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_403] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_403 + 32] = Mask(80, 0, stor8)
                            mem[_403 + 64] = address(cd[4])
                            uint256(pack[-uint8(_354) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_354) + 8 << 248, 4)
                            uint16(pack[-uint8(_354) + 8 << 248][uint256(pack[-uint8(_354) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_354) + 8 << 248][uint256(pack[-uint8(_354) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_354) + 8 << 248][uint256(pack[-uint8(_354) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_354) + 8 << 248][uint256(pack[-uint8(_354) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _195 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_195] == mem[_195 + 12 len 20]
                        if mem[_195 + 12 len 20] != msg.sender:
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
                        _243 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_243] == bool(mem[_243])
                        require mem[_243 + 32] == mem[_243 + 63 len 1]
                        require mem[_243 + 64] == mem[_243 + 95 len 1]
                        require mem[_243 + 96] == mem[_243 + 127 len 1]
                        require mem[_243 + 128] == mem[_243 + 159 len 1]
                        require mem[_243 + 160] == mem[_243 + 191 len 1]
                        require mem[_243 + 192] == mem[_243 + 223 len 1]
                        require mem[_243 + 224] == mem[_243 + 255 len 1]
                        require mem[_243 + 256] == mem[_243 + 287 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_243]:
                            if uint8(stor0.field_160):
                                revert with 0, 'Pauseable: paused'
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _371 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_371] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_371 + 32] = Mask(80, 0, block.timestamp)
                                mem[_371 + 64] = address(cd[4])
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
                                _446 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_446] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_446 + 32] = Mask(80, 0, block.timestamp)
                                mem[_446 + 64] = address(cd[4])
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
                            _381 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_381] == bool(mem[_381])
                            require mem[_381 + 32] == mem[_381 + 63 len 1]
                            require mem[_381 + 64] == mem[_381 + 95 len 1]
                            require mem[_381 + 96] == mem[_381 + 127 len 1]
                            require mem[_381 + 128] == mem[_381 + 159 len 1]
                            require mem[_381 + 160] == mem[_381 + 191 len 1]
                            require mem[_381 + 192] == mem[_381 + 223 len 1]
                            require mem[_381 + 224] == mem[_381 + 255 len 1]
                            _468 = mem[_381 + 256]
                            require mem[_381 + 256] == mem[_381 + 287 len 1]
                            if 8 < mem[_381 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_381 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_381 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_381 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_468) + 8)
                            mem[32] = 4
                            _490 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_490] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_490 + 32] = Mask(80, 0, stor8)
                            mem[_490 + 64] = address(cd[4])
                            uint256(pack[-uint8(_468) + 8 << 248].field_0)++
                            mem[0] = sha3(-uint8(_468) + 8 << 248, 4)
                            uint16(pack[-uint8(_468) + 8 << 248][uint256(pack[-uint8(_468) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_468) + 8 << 248][uint256(pack[-uint8(_468) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor8)
                            Mask(80, 0, pack[-uint8(_468) + 8 << 248][uint256(pack[-uint8(_468) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_468) + 8 << 248][uint256(pack[-uint8(_468) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    Mask(248, 0, stor16.field_8) = 0
}

function sub_b40b03d2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if uint8(stor16.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor16.field_8) = 1
    if sub_1e1d8cf8 >= 2400000000 * 10^18:
        if tx.origin != msg.sender:
            revert with 0, 'Only EOA'
        if not canClaim:
            revert with 0, 'Claim deactive'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_669] == bool(mem[_669])
            require mem[_669 + 32] == mem[_669 + 63 len 1]
            require mem[_669 + 64] == mem[_669 + 95 len 1]
            require mem[_669 + 96] == mem[_669 + 127 len 1]
            require mem[_669 + 128] == mem[_669 + 159 len 1]
            require mem[_669 + 160] == mem[_669 + 191 len 1]
            require mem[_669 + 192] == mem[_669 + 223 len 1]
            require mem[_669 + 224] == mem[_669 + 255 len 1]
            require mem[_669 + 256] == mem[_669 + 287 len 1]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_669]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _691 = mem[64]
                mem[64] = mem[64] + 96
                mem[_691] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_691 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_691 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
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
                                _895 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_895] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_895 + 32] = Mask(80, 0, block.timestamp)
                                mem[_895 + 64] = msg.sender
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
                            staticcall mem[_764 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _811 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _819 = mem[_811]
                            require mem[_811] == mem[_811]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _857 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1057 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1057 + 32 len mem[_1057]]) xor _819) != 1:
                                mem[_857 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_857 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_857 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_857 + 308] = bool(cd[36])
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
                                mem[_857 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_857 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_857 + 276] = 0
                                mem[_857 + 308] = bool(cd[36])
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
                                    _875 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_875] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_875 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_875 + 64] = msg.sender
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
                                _719 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_719] == mem[_719 + 12 len 20]
                                staticcall mem[_719 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _750 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _757 = mem[_750]
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
                                _989 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_989 + 32 len mem[_989]]) xor _757) == 1:
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
                                    _897 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_897] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_897 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_897 + 64] = msg.sender
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
                                    _965 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_965] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_965 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_965 + 64] = msg.sender
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
                                _771 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_771] == mem[_771 + 12 len 20]
                                staticcall mem[_771 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _817 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _821 = mem[_817]
                                require mem[_817] == mem[_817]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _861 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1067 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1067 + 32 len mem[_1067]]) xor _821) != 1:
                                    mem[_861 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_861 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_861 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_861 + 308] = bool(cd[36])
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
                                    mem[_861 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_861 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_861 + 276] = 0
                                    mem[_861 + 308] = bool(cd[36])
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
                                _935 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_935] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_935 + 32] = Mask(80, 0, block.timestamp)
                                mem[_935 + 64] = msg.sender
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
                            _791 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_791] == mem[_791 + 12 len 20]
                            staticcall mem[_791 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _831 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _841 = mem[_831]
                            require mem[_831] == mem[_831]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _877 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1086 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1086 + 32 len mem[_1086]]) xor _841) != 1:
                                mem[_877 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_877 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_877 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_877 + 308] = bool(cd[36])
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
                                mem[_877 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_877 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_877 + 276] = 0
                                mem[_877 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _859 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_859] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_859 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_859 + 64] = msg.sender
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
                                staticcall mem[_736 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _779 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _784 = mem[_779]
                                require mem[_779] == mem[_779]
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
                                _1029 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1029 + 32 len mem[_1029]]) xor _784) == 1:
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
                                    _937 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_937] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_937 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_937 + 64] = msg.sender
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
                                    _1003 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1003] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1003 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1003 + 64] = msg.sender
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
                                _797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_797] == mem[_797 + 12 len 20]
                                staticcall mem[_797 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _838 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _853 = mem[_838]
                                require mem[_838] == mem[_838]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _890 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1095 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1095 + 32 len mem[_1095]]) xor _853) != 1:
                                    mem[_890 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_890 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_890 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_890 + 308] = bool(cd[36])
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
                                    mem[_890 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_890 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_890 + 276] = 0
                                    mem[_890 + 308] = bool(cd[36])
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
                _949 = mem[_753 + 256]
                require mem[_753 + 256] == mem[_753 + 287 len 1]
                if 8 < mem[_753 + 287 len 1]:
                    revert with 'NH{q', 17
                mem[0] = uint8(-mem[_753 + 287 len 1] + 8)
                _1025 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 'NH{q', 50
                mem[0] = sha3(mem[0], 4)
                _1040 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1040] = uint16(stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
                mem[_1040 + 32] = Mask(80, 0, stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
                mem[_1040 + 64] = address(stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
                if address(stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_7bde72dc) < Mask(80, 0, stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
                    revert with 'NH{q', 17
                if uint8(-uint8(_949) + 8) and uint256(sub_7bde72dc) - Mask(80, 0, stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_949) + 8):
                    revert with 'NH{q', 17
                if not cd[36]:
                    _1085 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1085] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1085 + 32] = Mask(80, 0, stor8)
                    mem[_1085 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_949) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_949) + 8 << 248, 4)
                    uint16(pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    Mask(80, 0, pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = 0
                    address(pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_949) + 8):
                        revert with 'NH{q', 17
                    totalAlphaStaked -= uint8(-uint8(_949) + 8)
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_949) + 8 << 248].field_0) < 1:
                        revert with 'NH{q', 17
                    if uint256(pack[-uint8(_949) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_949) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_949) + 8 << 248, 4)
                    _1224 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1224] = uint16(pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    mem[_1224 + 32] = Mask(80, 0, pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    mem[_1224 + 64] = address(pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_949) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    uint16(pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_949) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_949) + 8 << 248][uint256(stor4[-uint8(_949) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_949) + 8 << 248].field_0):
                        revert with 'NH{q', 49
                    uint16(pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0) = 0
                    Mask(80, 0, pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0) = Mask(96, 0, pack[-uint8(_949) + 8 << 248][uint256(pack[-uint8(_949) + 8 << 248].field_0)].field_0)
                    uint256(pack[-uint8(_949) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_7bde72dc) * uint8(-uint8(_949) + 8)) - (Mask(80, 0, stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_949) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x34478fbe: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_7bde72dc) * uint8(-uint8(_949) + 8)) - (Mask(80, 0, stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_949) + 8)), bool(cd[36])
                if 0 > (-1 * uint256(sub_7bde72dc) * uint8(-uint8(_949) + 8)) + (Mask(80, 0, stor[sha3(_1025) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_949) + 8)) - 1:
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
        if not canClaim:
            revert with 0, 'Claim deactive'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _670 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_670] == bool(mem[_670])
            require mem[_670 + 32] == mem[_670 + 63 len 1]
            require mem[_670 + 64] == mem[_670 + 95 len 1]
            require mem[_670 + 96] == mem[_670 + 127 len 1]
            require mem[_670 + 128] == mem[_670 + 159 len 1]
            require mem[_670 + 160] == mem[_670 + 191 len 1]
            require mem[_670 + 192] == mem[_670 + 223 len 1]
            require mem[_670 + 224] == mem[_670 + 255 len 1]
            require mem[_670 + 256] == mem[_670 + 287 len 1]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if mem[_670]:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _694 = mem[64]
                mem[64] = mem[64] + 96
                mem[_694] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                mem[_694 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                mem[_694 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
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
                                _896 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_896] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_896 + 32] = Mask(80, 0, block.timestamp)
                                mem[_896 + 64] = msg.sender
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
                                _964 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_964] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_964 + 32] = Mask(80, 0, block.timestamp)
                                mem[_964 + 64] = msg.sender
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
                            _766 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_766] == mem[_766 + 12 len 20]
                            staticcall mem[_766 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _820 = mem[_812]
                            require mem[_812] == mem[_812]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _858 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1060 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1060 + 32 len mem[_1060]]) xor _820) != 1:
                                mem[_858 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_858 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_858 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_858 + 308] = bool(cd[36])
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
                                mem[_858 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_858 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_858 + 276] = 0
                                mem[_858 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _839 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_839] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_839 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_839 + 64] = msg.sender
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _876 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_876] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_876 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_876 + 64] = msg.sender
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
                                _720 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_720] == mem[_720 + 12 len 20]
                                staticcall mem[_720 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _752 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _760 = mem[_752]
                                require mem[_752] == mem[_752]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _803 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _994 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_994 + 32 len mem[_994]]) xor _760) == 1:
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
                                mem[_803 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_803 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_803 + 276] = 0
                                mem[_803 + 308] = bool(cd[36])
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
                                    _902 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_902] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_902 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_902 + 64] = msg.sender
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
                                    _970 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_970] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_970 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_970 + 64] = msg.sender
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
                                _772 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_772] == mem[_772 + 12 len 20]
                                staticcall mem[_772 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _822 = mem[_818]
                                require mem[_818] == mem[_818]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _862 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1070 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1070 + 32 len mem[_1070]]) xor _822) != 1:
                                    mem[_862 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_862 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_862 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_862 + 308] = bool(cd[36])
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
                                    mem[_862 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_862 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_862 + 276] = 0
                                    mem[_862 + 308] = bool(cd[36])
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
                                _936 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_936] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_936 + 32] = Mask(80, 0, block.timestamp)
                                mem[_936 + 64] = msg.sender
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
                                _1000 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1000] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1000 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1000 + 64] = msg.sender
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
                            _792 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_792] == mem[_792 + 12 len 20]
                            staticcall mem[_792 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _832 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _842 = mem[_832]
                            require mem[_832] == mem[_832]
                            if block.number < 1:
                                revert with 'NH{q', 17
                            _878 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_457e5789
                            mem[mem[64] + 180] = totalAlphaStaked
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _1090 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_1090 + 32 len mem[_1090]]) xor _842) != 1:
                                mem[_878 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_878 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_878 + 276] = (block.timestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                mem[_878 + 308] = bool(cd[36])
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
                                mem[_878 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_878 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_878 + 276] = 0
                                mem[_878 + 308] = bool(cd[36])
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                            if not cd[36]:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _860 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_860] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_860 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_860 + 64] = msg.sender
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _910 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_910] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_910 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_910 + 64] = msg.sender
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
                                _738 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_738] == mem[_738 + 12 len 20]
                                staticcall mem[_738 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _780 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _788 = mem[_780]
                                require mem[_780] == mem[_780]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _826 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1036 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1036 + 32 len mem[_1036]]) xor _788) == 1:
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
                                mem[_826 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                mem[_826 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_826 + 276] = 0
                                mem[_826 + 308] = bool(cd[36])
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
                                    _942 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_942] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_942 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_942 + 64] = msg.sender
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
                                _798 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_798] == mem[_798 + 12 len 20]
                                staticcall mem[_798 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _840 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _856 = mem[_840]
                                require mem[_840] == mem[_840]
                                if block.number < 1:
                                    revert with 'NH{q', 17
                                _894 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_457e5789
                                mem[mem[64] + 180] = totalAlphaStaked
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _1100 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_1100 + 32 len mem[_1100]]) xor _856) != 1:
                                    mem[_894 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_894 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_894 + 276] = (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600
                                    mem[_894 + 308] = bool(cd[36])
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
                                    mem[_894 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
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
                                    mem[_894 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_894 + 276] = 0
                                    mem[_894 + 308] = bool(cd[36])
                                    emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_709] == mem[_709 + 12 len 20]
                if mem[_709 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                staticcall stor1.tokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_755] == bool(mem[_755])
                require mem[_755 + 32] == mem[_755 + 63 len 1]
                require mem[_755 + 64] == mem[_755 + 95 len 1]
                require mem[_755 + 96] == mem[_755 + 127 len 1]
                require mem[_755 + 128] == mem[_755 + 159 len 1]
                require mem[_755 + 160] == mem[_755 + 191 len 1]
                require mem[_755 + 192] == mem[_755 + 223 len 1]
                require mem[_755 + 224] == mem[_755 + 255 len 1]
                _955 = mem[_755 + 256]
                require mem[_755 + 256] == mem[_755 + 287 len 1]
                if 8 < mem[_755 + 287 len 1]:
                    revert with 'NH{q', 17
                mem[0] = uint8(-mem[_755 + 287 len 1] + 8)
                _1032 = sha3(mem[0], 4)
                mem[32] = 5
                if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 'NH{q', 50
                mem[0] = sha3(mem[0], 4)
                _1042 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1042] = uint16(stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
                mem[_1042 + 32] = Mask(80, 0, stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
                mem[_1042 + 64] = address(stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
                if address(stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_7bde72dc) < Mask(80, 0, stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
                    revert with 'NH{q', 17
                if uint8(-uint8(_955) + 8) and uint256(sub_7bde72dc) - Mask(80, 0, stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_955) + 8):
                    revert with 'NH{q', 17
                if not cd[36]:
                    _1089 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1089] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_1089 + 32] = Mask(80, 0, stor8)
                    mem[_1089 + 64] = msg.sender
                    mem[32] = 5
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_955) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_955) + 8 << 248, 4)
                    uint16(pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                    Mask(80, 0, pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor8)
                    Mask(80, 0, pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = 0
                    address(pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_955) + 8):
                        revert with 'NH{q', 17
                    totalAlphaStaked -= uint8(-uint8(_955) + 8)
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 4
                    if uint256(pack[-uint8(_955) + 8 << 248].field_0) < 1:
                        revert with 'NH{q', 17
                    if uint256(pack[-uint8(_955) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_955) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    mem[0] = sha3(-uint8(_955) + 8 << 248, 4)
                    _1228 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1228] = uint16(pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    mem[_1228 + 32] = Mask(80, 0, pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    mem[_1228 + 64] = address(pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_955) + 8 << 248].field_0):
                        revert with 'NH{q', 50
                    uint16(pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_955) + 8 << 248][stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor4[-uint8(_955) + 8 << 248][uint256(stor4[-uint8(_955) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
                    if not uint256(pack[-uint8(_955) + 8 << 248].field_0):
                        revert with 'NH{q', 49
                    uint16(pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0) = 0
                    Mask(80, 0, pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0) = Mask(96, 0, pack[-uint8(_955) + 8 << 248][uint256(pack[-uint8(_955) + 8 << 248].field_0)].field_0)
                    uint256(pack[-uint8(_955) + 8 << 248].field_0)--
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 5
                    packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (uint256(sub_7bde72dc) * uint8(-uint8(_955) + 8)) - (Mask(80, 0, stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_955) + 8))
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x34478fbe: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_7bde72dc) * uint8(-uint8(_955) + 8)) - (Mask(80, 0, stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_955) + 8)), bool(cd[36])
                if 0 > (-1 * uint256(sub_7bde72dc) * uint8(-uint8(_955) + 8)) + (Mask(80, 0, stor[sha3(_1032) + stor5[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_955) + 8)) - 1:
                    revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    Mask(248, 0, stor16.field_8) = 0
}



}
