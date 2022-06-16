contract main {




// =====================  Runtime code  =====================


#
#  - sub_b40b03d2(?)
#
const sub_8b6a036d(?) = 2400000000 * 10^18

const sub_9af69f2f(?) = 20

const MAX_ALPHA = 8


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
mapping of address sub_94edf9d4;
mapping of struct sub_771f2476;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor9;
uint256 sub_7bde72dc;
uint256 sub_000d07ce;
uint256 MINIMUM_TO_EXIT;
uint256 sub_1e1d8cf8;
uint256 sub_457e5789;
uint256 lastClaimTimestamp;
uint128 stor15;
uint256 gameStartTimestamp;
uint8 stor16;
uint8 stor16; offset 8
uint8 stor16; offset 16
address stor16; offset 24
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
    return bool(uint8(stor16.field_0))
}

function sub_457e5789(?) payable {
    return sub_457e5789
}

function gameStartTimestamp() payable {
    return uint256(gameStartTimestamp)
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function canClaim() payable {
    return bool(uint8(stor16.field_16))
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

function sub_94edf9d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_94edf9d4[arg1]
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
    uint8(stor16.field_0) = uint8(arg1)
}

function sub_aaaa19c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor16.field_24) = address(arg1)
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

function levelOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall address(stor16.field_24).0x6d5e3032 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
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
    staticcall stor1.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 384 <= test266151307()):
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
    return bool(ext_call.return_data[0])
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
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 288
        if not bool(ceil32(return_data.size) + 384 <= test266151307()):
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
        if 8 < ext_call.return_data[287 len 1]:
            revert with 'NH{q', 17
        if totalAlphaStaked > -uint8(-ext_call.return_data[287 len 1] + 8) - 1:
            revert with 'NH{q', 17
        totalAlphaStaked += uint8(-ext_call.return_data[287 len 1] + 8)
        packIndices[arg1] = uint256(pack[uint8(-ext_call.return_data[287 len 1] + 8)].field_0)
        uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)++
        uint16(pack[-ext_call.return_data[287 len 1] + 8 << 248][uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)].field_0) = uint16(arg1)
        Mask(80, 0, pack[-ext_call.return_data[287 len 1] + 8 << 248][uint256(pack[-ext_call.return_data[287 len 1] + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
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
    if not uint8(stor16.field_0):
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
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _47 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _48 = mem[64]
        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 288
        require mem[_47] == bool(mem[_47])
        mem[_48] = mem[_47]
        require mem[_47 + 32] == mem[_47 + 63 len 1]
        mem[_48 + 32] = mem[_47 + 32]
        require mem[_47 + 64] == mem[_47 + 95 len 1]
        mem[_48 + 64] = mem[_47 + 64]
        require mem[_47 + 96] == mem[_47 + 127 len 1]
        mem[_48 + 96] = mem[_47 + 96]
        require mem[_47 + 128] == mem[_47 + 159 len 1]
        mem[_48 + 128] = mem[_47 + 128]
        require mem[_47 + 160] == mem[_47 + 191 len 1]
        mem[_48 + 160] = mem[_47 + 160]
        require mem[_47 + 192] == mem[_47 + 223 len 1]
        mem[_48 + 192] = mem[_47 + 192]
        require mem[_47 + 224] == mem[_47 + 255 len 1]
        mem[_48 + 224] = mem[_47 + 224]
        require mem[_47 + 256] == mem[_47 + 287 len 1]
        mem[_48 + 256] = mem[_47 + 256]
        if mem[_48]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 4
            _60 = mem[64]
            mem[64] = mem[64] + 96
            mem[_60] = uint16(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_60 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_60 + 64] = address(sub_771f2476[cd[((32 * idx) + arg1 + 36)]].field_96)
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
            mem[32] = 4
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
            s = _60
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _68 = mem[64]
        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 288
        require mem[_66] == bool(mem[_66])
        mem[_68] = mem[_66]
        require mem[_66 + 32] == mem[_66 + 63 len 1]
        mem[_68 + 32] = mem[_66 + 32]
        require mem[_66 + 64] == mem[_66 + 95 len 1]
        mem[_68 + 64] = mem[_66 + 64]
        require mem[_66 + 96] == mem[_66 + 127 len 1]
        mem[_68 + 96] = mem[_66 + 96]
        require mem[_66 + 128] == mem[_66 + 159 len 1]
        mem[_68 + 128] = mem[_66 + 128]
        require mem[_66 + 160] == mem[_66 + 191 len 1]
        mem[_68 + 160] = mem[_66 + 160]
        require mem[_66 + 192] == mem[_66 + 223 len 1]
        mem[_68 + 192] = mem[_66 + 192]
        require mem[_66 + 224] == mem[_66 + 255 len 1]
        mem[_68 + 224] = mem[_66 + 224]
        require mem[_66 + 256] == mem[_66 + 287 len 1]
        mem[_68 + 256] = mem[_66 + 256]
        _82 = mem[_68 + 256]
        if 8 < mem[_68 + 287 len 1]:
            revert with 'NH{q', 17
        mem[0] = uint8(-mem[_68 + 287 len 1] + 8)
        _83 = sha3(mem[0], 5)
        mem[32] = 6
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 'NH{q', 50
        mem[0] = sha3(mem[0], 5)
        _86 = mem[64]
        mem[64] = mem[64] + 96
        mem[_86] = uint16(stor[sha3(_83) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_0)
        mem[_86 + 32] = Mask(80, 0, stor[sha3(_83) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_16)
        mem[_86 + 64] = address(stor[sha3(_83) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_96)
        if address(stor[sha3(_83) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_96) != msg.sender:
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
        mem[32] = 5
        if uint256(pack[-uint8(_82) + 8 << 248].field_0) < 1:
            revert with 'NH{q', 17
        if uint256(pack[-uint8(_82) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_82) + 8 << 248].field_0):
            revert with 'NH{q', 50
        mem[0] = sha3(-uint8(_82) + 8 << 248, 5)
        _95 = mem[64]
        mem[64] = mem[64] + 96
        mem[_95] = uint16(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        mem[_95 + 32] = Mask(80, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        mem[_95 + 64] = address(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_82) + 8 << 248].field_0):
            revert with 'NH{q', 50
        uint16(pack[-uint8(_82) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_82) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_82) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor5[-uint8(_82) + 8 << 248][uint256(stor5[-uint8(_82) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_82) + 8 << 248].field_0):
            revert with 'NH{q', 49
        uint16(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0) = 0
        Mask(80, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0) = Mask(96, 0, pack[-uint8(_82) + 8 << 248][uint256(pack[-uint8(_82) + 8 << 248].field_0)].field_0)
        uint256(pack[-uint8(_82) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 6
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

function sub_9b05e6b2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if uint8(stor16.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor16.field_8) = 1
    if sub_1e1d8cf8 >= 2400000000 * 10^18:
        if address(stor16.field_24) != msg.sender:
            revert with 0, 'Only EOA'
        if not uint8(stor16.field_16):
            revert with 0, 'Claim deactive'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 3
            if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _82 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_80] == bool(mem[_80])
                mem[_82] = mem[_80]
                require mem[_80 + 32] == mem[_80 + 63 len 1]
                mem[_82 + 32] = mem[_80 + 32]
                require mem[_80 + 64] == mem[_80 + 95 len 1]
                mem[_82 + 64] = mem[_80 + 64]
                require mem[_80 + 96] == mem[_80 + 127 len 1]
                mem[_82 + 96] = mem[_80 + 96]
                require mem[_80 + 128] == mem[_80 + 159 len 1]
                mem[_82 + 128] = mem[_80 + 128]
                require mem[_80 + 160] == mem[_80 + 191 len 1]
                mem[_82 + 160] = mem[_80 + 160]
                require mem[_80 + 192] == mem[_80 + 223 len 1]
                mem[_82 + 192] = mem[_80 + 192]
                require mem[_80 + 224] == mem[_80 + 255 len 1]
                mem[_82 + 224] = mem[_80 + 224]
                require mem[_80 + 256] == mem[_80 + 287 len 1]
                mem[_82 + 256] = mem[_80 + 256]
                if mem[_82]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    _105 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_105] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                    mem[_105 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                    mem[_105 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                    if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) == msg.sender:
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _142 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_142] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_142 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_142 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _170 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_170] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_170 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_170 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, 0
                            else:
                                if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _202 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_202] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_202 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_202 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
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
                                    _234 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_234] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_234 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_234 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, 0
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor16.field_24).0x6d5e3032 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _126 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _132 = mem[_126]
                            require mem[_126] == mem[_126 + 31 len 1]
                            if mem[_126 + 31 len 1] > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c86:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-25 * 10^16 * mem[_126 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce + (25 * 10^16 * mem[_126 + 31 len 1]) > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _268 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_268] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_268 + 32] = Mask(80, 0, block.timestamp)
                                mem[_268 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_126 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_126 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _298 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_298] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_298 + 32] = Mask(80, 0, block.timestamp)
                                mem[_298 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_132) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_132) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_132) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_132) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_132) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_132) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                    else:
                        if address(stor16.field_24) != msg.sender:
                            revert with 0, 'SWIPER, NO SWIPING'
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _156 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_156] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_156 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_156 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _186 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_186] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_186 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_186 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, 0
                            else:
                                if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _216 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_216] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_216 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_216 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
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
                                    _250 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_250] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_250 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_250 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, 0
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor16.field_24).0x6d5e3032 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _133 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _136 = mem[_133]
                            require mem[_133] == mem[_133 + 31 len 1]
                            if mem[_133 + 31 len 1] > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c86:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-25 * 10^16 * mem[_133 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce + (25 * 10^16 * mem[_133 + 31 len 1]) > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _284 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_284] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_284 + 32] = Mask(80, 0, block.timestamp)
                                mem[_284 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_133 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_133 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _314 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_314] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_314 + 32] = Mask(80, 0, block.timestamp)
                                mem[_314 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_136) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_136) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_136) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_136) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_136) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_136) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
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
        if address(stor16.field_24) != msg.sender:
            revert with 0, 'Only EOA'
        if not uint8(stor16.field_16):
            revert with 0, 'Claim deactive'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 3
            if sub_94edf9d4[cd[((32 * idx) + cd[4] + 36)] << 240]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall stor1.getTokenTraits(uint256 arg1) with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _83 = mem[64]
                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 288
                require mem[_81] == bool(mem[_81])
                mem[_83] = mem[_81]
                require mem[_81 + 32] == mem[_81 + 63 len 1]
                mem[_83 + 32] = mem[_81 + 32]
                require mem[_81 + 64] == mem[_81 + 95 len 1]
                mem[_83 + 64] = mem[_81 + 64]
                require mem[_81 + 96] == mem[_81 + 127 len 1]
                mem[_83 + 96] = mem[_81 + 96]
                require mem[_81 + 128] == mem[_81 + 159 len 1]
                mem[_83 + 128] = mem[_81 + 128]
                require mem[_81 + 160] == mem[_81 + 191 len 1]
                mem[_83 + 160] = mem[_81 + 160]
                require mem[_81 + 192] == mem[_81 + 223 len 1]
                mem[_83 + 192] = mem[_81 + 192]
                require mem[_81 + 224] == mem[_81 + 255 len 1]
                mem[_83 + 224] = mem[_81 + 224]
                require mem[_81 + 256] == mem[_81 + 287 len 1]
                mem[_83 + 256] = mem[_81 + 256]
                if mem[_83]:
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    _107 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_107] = uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0)
                    mem[_107 + 32] = Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)
                    mem[_107 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                    if address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) == msg.sender:
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _148 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_148] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_148 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_148 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _176 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_176] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_176 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_176 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, 0
                            else:
                                if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _208 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_208] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_208 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_208 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
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
                                    _240 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_240] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_240 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_240 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, 0
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor16.field_24).0x6d5e3032 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _127 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _134 = mem[_127]
                            require mem[_127] == mem[_127 + 31 len 1]
                            if mem[_127 + 31 len 1] > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c86:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-25 * 10^16 * mem[_127 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce + (25 * 10^16 * mem[_127 + 31 len 1]) > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _274 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_274] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_274 + 32] = Mask(80, 0, block.timestamp)
                                mem[_274 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_127 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_127 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _304 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_304] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_304 + 32] = Mask(80, 0, block.timestamp)
                                mem[_304 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_134) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_134) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_134) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_134) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_134) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_134) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
                    else:
                        if address(stor16.field_24) != msg.sender:
                            revert with 0, 'SWIPER, NO SWIPING'
                        if sub_1e1d8cf8 >= 2400000000 * 10^18:
                            if Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) > lastClaimTimestamp:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 'NH{q', 17
                                    _162 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_162] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_162 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_162 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                else:
                                    if 0 > -unaccountedRewards - 1:
                                        revert with 'NH{q', 17
                                    if not totalAlphaStaked:
                                        revert with 'NH{q', 18
                                    if uint256(sub_7bde72dc) > -(unaccountedRewards / totalAlphaStaked) - 1:
                                        revert with 'NH{q', 17
                                    uint256(sub_7bde72dc) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _192 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_192] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_192 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_192 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 0, 0
                            else:
                                if lastClaimTimestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce > -1 / lastClaimTimestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                    revert with 'NH{q', 17
                                if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -(20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                        revert with 'NH{q', 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600:
                                        revert with 'NH{q', 17
                                    _222 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_222] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_222 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_222 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
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
                                    _256 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_256] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_256 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_256 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 4
                                uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                                Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100
                                mem[mem[64] + 64] = 0
                                emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100, 0
                                if 0 > -(80 * (lastClaimTimestamp * sub_000d07ce) - (Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) * sub_000d07ce) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                        else:
                            mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            staticcall address(stor16.field_24).0x6d5e3032 with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _135 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _137 = mem[_135]
                            require mem[_135] == mem[_135 + 31 len 1]
                            if mem[_135 + 31 len 1] > 0x49c97747490eae839d7f99173121cfe7996bf9a2324a387c86:
                                revert with 'NH{q', 17
                            if sub_000d07ce > (-25 * 10^16 * mem[_135 + 31 len 1]) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) and sub_000d07ce + (25 * 10^16 * mem[_135 + 31 len 1]) > -1 / block.timestamp - Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                                revert with 'NH{q', 17
                            if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 20 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                revert with 'NH{q', 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > -(20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                    revert with 'NH{q', 17
                                unaccountedRewards += 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _290 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_290] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_290 + 32] = Mask(80, 0, block.timestamp)
                                mem[_290 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            else:
                                if 20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100 > -unaccountedRewards - 1:
                                    revert with 'NH{q', 17
                                if not totalAlphaStaked:
                                    revert with 'NH{q', 18
                                if uint256(sub_7bde72dc) > -((20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked) - 1:
                                    revert with 'NH{q', 17
                                uint256(sub_7bde72dc) += (20 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 and 80 > -1 / (sub_000d07ce * block.timestamp) + (25 * 10^16 * mem[_135 + 31 len 1] * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * mem[_135 + 31 len 1] * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600:
                                    revert with 'NH{q', 17
                                _320 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_320] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_320 + 32] = Mask(80, 0, block.timestamp)
                                mem[_320 + 64] = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 4
                            uint16(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
                            Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96) = address(sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_96)
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_137) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_137) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = 0
                            emit 0x77eeecee: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_137) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_137) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100, 0
                            if 0 > -(80 * (sub_000d07ce * block.timestamp) + (25 * 10^16 * uint8(_137) * block.timestamp) - (sub_000d07ce * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) - (25 * 10^16 * uint8(_137) * Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[4] + 36)] << 240].field_16)) / 24 * 3600 / 100) - 1:
                                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
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
    if uint8(stor16.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor16.field_8) = 1
    if address(cd[4]) != msg.sender:
        if swapperAddress != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        if not uint8(stor0.field_160):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == swapperAddress:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _369 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_363] == bool(mem[_363])
                        mem[_369] = mem[_363]
                        require mem[_363 + 32] == mem[_363 + 63 len 1]
                        mem[_369 + 32] = mem[_363 + 32]
                        require mem[_363 + 64] == mem[_363 + 95 len 1]
                        mem[_369 + 64] = mem[_363 + 64]
                        require mem[_363 + 96] == mem[_363 + 127 len 1]
                        mem[_369 + 96] = mem[_363 + 96]
                        require mem[_363 + 128] == mem[_363 + 159 len 1]
                        mem[_369 + 128] = mem[_363 + 128]
                        require mem[_363 + 160] == mem[_363 + 191 len 1]
                        mem[_369 + 160] = mem[_363 + 160]
                        require mem[_363 + 192] == mem[_363 + 223 len 1]
                        mem[_369 + 192] = mem[_363 + 192]
                        require mem[_363 + 224] == mem[_363 + 255 len 1]
                        mem[_369 + 224] = mem[_363 + 224]
                        require mem[_363 + 256] == mem[_363 + 287 len 1]
                        mem[_369 + 256] = mem[_363 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_369]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _502 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_502] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_502 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_502 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_502 + 32] = Mask(80, 0, stor15)
                                    mem[_502 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _657 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_657] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_657 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_657 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_657 + 32] = Mask(80, 0, stor15)
                                    mem[_657 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _573 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _597 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_573] == bool(mem[_573])
                            mem[_597] = mem[_573]
                            require mem[_573 + 32] == mem[_573 + 63 len 1]
                            mem[_597 + 32] = mem[_573 + 32]
                            require mem[_573 + 64] == mem[_573 + 95 len 1]
                            mem[_597 + 64] = mem[_573 + 64]
                            require mem[_573 + 96] == mem[_573 + 127 len 1]
                            mem[_597 + 96] = mem[_573 + 96]
                            require mem[_573 + 128] == mem[_573 + 159 len 1]
                            mem[_597 + 128] = mem[_573 + 128]
                            require mem[_573 + 160] == mem[_573 + 191 len 1]
                            mem[_597 + 160] = mem[_573 + 160]
                            require mem[_573 + 192] == mem[_573 + 223 len 1]
                            mem[_597 + 192] = mem[_573 + 192]
                            require mem[_573 + 224] == mem[_573 + 255 len 1]
                            mem[_597 + 224] = mem[_573 + 224]
                            require mem[_573 + 256] == mem[_573 + 287 len 1]
                            mem[_597 + 256] = mem[_573 + 256]
                            _879 = mem[_597 + 256]
                            if 8 < mem[_597 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_597 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_597 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_597 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_879) + 8)
                            mem[32] = 5
                            _918 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_918] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_918 + 32] = Mask(80, 0, stor9)
                            mem[_918 + 64] = address(cd[4])
                            uint256(pack[-uint8(_879) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_879) + 8 << 248][uint256(pack[-uint8(_879) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_879) + 8 << 248][uint256(pack[-uint8(_879) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_879) + 8 << 248][uint256(pack[-uint8(_879) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_879) + 8 << 248][uint256(pack[-uint8(_879) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _381 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_381] == mem[_381 + 12 len 20]
                        if mem[_381 + 12 len 20] != msg.sender:
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
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _489 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _495 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_489] == bool(mem[_489])
                        mem[_495] = mem[_489]
                        require mem[_489 + 32] == mem[_489 + 63 len 1]
                        mem[_495 + 32] = mem[_489 + 32]
                        require mem[_489 + 64] == mem[_489 + 95 len 1]
                        mem[_495 + 64] = mem[_489 + 64]
                        require mem[_489 + 96] == mem[_489 + 127 len 1]
                        mem[_495 + 96] = mem[_489 + 96]
                        require mem[_489 + 128] == mem[_489 + 159 len 1]
                        mem[_495 + 128] = mem[_489 + 128]
                        require mem[_489 + 160] == mem[_489 + 191 len 1]
                        mem[_495 + 160] = mem[_489 + 160]
                        require mem[_489 + 192] == mem[_489 + 223 len 1]
                        mem[_495 + 192] = mem[_489 + 192]
                        require mem[_489 + 224] == mem[_489 + 255 len 1]
                        mem[_495 + 224] = mem[_489 + 224]
                        require mem[_489 + 256] == mem[_489 + 287 len 1]
                        mem[_495 + 256] = mem[_489 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_495]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _820 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_820] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_820 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_820 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_820 + 32] = Mask(80, 0, stor15)
                                    mem[_820 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _999 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_999] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_999 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_999 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_999 + 32] = Mask(80, 0, stor15)
                                    mem[_999 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _891 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _909 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_891] == bool(mem[_891])
                            mem[_909] = mem[_891]
                            require mem[_891 + 32] == mem[_891 + 63 len 1]
                            mem[_909 + 32] = mem[_891 + 32]
                            require mem[_891 + 64] == mem[_891 + 95 len 1]
                            mem[_909 + 64] = mem[_891 + 64]
                            require mem[_891 + 96] == mem[_891 + 127 len 1]
                            mem[_909 + 96] = mem[_891 + 96]
                            require mem[_891 + 128] == mem[_891 + 159 len 1]
                            mem[_909 + 128] = mem[_891 + 128]
                            require mem[_891 + 160] == mem[_891 + 191 len 1]
                            mem[_909 + 160] = mem[_891 + 160]
                            require mem[_891 + 192] == mem[_891 + 223 len 1]
                            mem[_909 + 192] = mem[_891 + 192]
                            require mem[_891 + 224] == mem[_891 + 255 len 1]
                            mem[_909 + 224] = mem[_891 + 224]
                            require mem[_891 + 256] == mem[_891 + 287 len 1]
                            mem[_909 + 256] = mem[_891 + 256]
                            _1149 = mem[_909 + 256]
                            if 8 < mem[_909 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_909 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_909 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_909 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_1149) + 8)
                            mem[32] = 5
                            _1158 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1158] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_1158 + 32] = Mask(80, 0, stor9)
                            mem[_1158 + 64] = address(cd[4])
                            uint256(pack[-uint8(_1149) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_1149) + 8 << 248][uint256(pack[-uint8(_1149) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_1149) + 8 << 248][uint256(pack[-uint8(_1149) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_1149) + 8 << 248][uint256(pack[-uint8(_1149) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_1149) + 8 << 248][uint256(pack[-uint8(_1149) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'Paused'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == swapperAddress:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _364 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _371 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_364] == bool(mem[_364])
                        mem[_371] = mem[_364]
                        require mem[_364 + 32] == mem[_364 + 63 len 1]
                        mem[_371 + 32] = mem[_364 + 32]
                        require mem[_364 + 64] == mem[_364 + 95 len 1]
                        mem[_371 + 64] = mem[_364 + 64]
                        require mem[_364 + 96] == mem[_364 + 127 len 1]
                        mem[_371 + 96] = mem[_364 + 96]
                        require mem[_364 + 128] == mem[_364 + 159 len 1]
                        mem[_371 + 128] = mem[_364 + 128]
                        require mem[_364 + 160] == mem[_364 + 191 len 1]
                        mem[_371 + 160] = mem[_364 + 160]
                        require mem[_364 + 192] == mem[_364 + 223 len 1]
                        mem[_371 + 192] = mem[_364 + 192]
                        require mem[_364 + 224] == mem[_364 + 255 len 1]
                        mem[_371 + 224] = mem[_364 + 224]
                        require mem[_364 + 256] == mem[_364 + 287 len 1]
                        mem[_371 + 256] = mem[_364 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_371]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _505 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_505] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_505 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_505 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_505 + 32] = Mask(80, 0, stor15)
                                    mem[_505 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _658 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_658] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_658 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_658 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_658 + 32] = Mask(80, 0, stor15)
                                    mem[_658 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _575 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _598 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_575] == bool(mem[_575])
                            mem[_598] = mem[_575]
                            require mem[_575 + 32] == mem[_575 + 63 len 1]
                            mem[_598 + 32] = mem[_575 + 32]
                            require mem[_575 + 64] == mem[_575 + 95 len 1]
                            mem[_598 + 64] = mem[_575 + 64]
                            require mem[_575 + 96] == mem[_575 + 127 len 1]
                            mem[_598 + 96] = mem[_575 + 96]
                            require mem[_575 + 128] == mem[_575 + 159 len 1]
                            mem[_598 + 128] = mem[_575 + 128]
                            require mem[_575 + 160] == mem[_575 + 191 len 1]
                            mem[_598 + 160] = mem[_575 + 160]
                            require mem[_575 + 192] == mem[_575 + 223 len 1]
                            mem[_598 + 192] = mem[_575 + 192]
                            require mem[_575 + 224] == mem[_575 + 255 len 1]
                            mem[_598 + 224] = mem[_575 + 224]
                            require mem[_575 + 256] == mem[_575 + 287 len 1]
                            mem[_598 + 256] = mem[_575 + 256]
                            _881 = mem[_598 + 256]
                            if 8 < mem[_598 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_598 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_598 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_598 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_881) + 8)
                            mem[32] = 5
                            _928 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_928] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_928 + 32] = Mask(80, 0, stor9)
                            mem[_928 + 64] = address(cd[4])
                            uint256(pack[-uint8(_881) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_881) + 8 << 248][uint256(pack[-uint8(_881) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_881) + 8 << 248][uint256(pack[-uint8(_881) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_881) + 8 << 248][uint256(pack[-uint8(_881) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_881) + 8 << 248][uint256(pack[-uint8(_881) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _382 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_382] == mem[_382 + 12 len 20]
                        if mem[_382 + 12 len 20] != msg.sender:
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
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _490 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _496 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_490] == bool(mem[_490])
                        mem[_496] = mem[_490]
                        require mem[_490 + 32] == mem[_490 + 63 len 1]
                        mem[_496 + 32] = mem[_490 + 32]
                        require mem[_490 + 64] == mem[_490 + 95 len 1]
                        mem[_496 + 64] = mem[_490 + 64]
                        require mem[_490 + 96] == mem[_490 + 127 len 1]
                        mem[_496 + 96] = mem[_490 + 96]
                        require mem[_490 + 128] == mem[_490 + 159 len 1]
                        mem[_496 + 128] = mem[_490 + 128]
                        require mem[_490 + 160] == mem[_490 + 191 len 1]
                        mem[_496 + 160] = mem[_490 + 160]
                        require mem[_490 + 192] == mem[_490 + 223 len 1]
                        mem[_496 + 192] = mem[_490 + 192]
                        require mem[_490 + 224] == mem[_490 + 255 len 1]
                        mem[_496 + 224] = mem[_490 + 224]
                        require mem[_490 + 256] == mem[_490 + 287 len 1]
                        mem[_496 + 256] = mem[_490 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_496]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _822 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_822] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_822 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_822 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_822 + 32] = Mask(80, 0, stor15)
                                    mem[_822 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _1000 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1000] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_1000 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1000 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_1000 + 32] = Mask(80, 0, stor15)
                                    mem[_1000 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _892 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _910 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_892] == bool(mem[_892])
                            mem[_910] = mem[_892]
                            require mem[_892 + 32] == mem[_892 + 63 len 1]
                            mem[_910 + 32] = mem[_892 + 32]
                            require mem[_892 + 64] == mem[_892 + 95 len 1]
                            mem[_910 + 64] = mem[_892 + 64]
                            require mem[_892 + 96] == mem[_892 + 127 len 1]
                            mem[_910 + 96] = mem[_892 + 96]
                            require mem[_892 + 128] == mem[_892 + 159 len 1]
                            mem[_910 + 128] = mem[_892 + 128]
                            require mem[_892 + 160] == mem[_892 + 191 len 1]
                            mem[_910 + 160] = mem[_892 + 160]
                            require mem[_892 + 192] == mem[_892 + 223 len 1]
                            mem[_910 + 192] = mem[_892 + 192]
                            require mem[_892 + 224] == mem[_892 + 255 len 1]
                            mem[_910 + 224] = mem[_892 + 224]
                            require mem[_892 + 256] == mem[_892 + 287 len 1]
                            mem[_910 + 256] = mem[_892 + 256]
                            _1150 = mem[_910 + 256]
                            if 8 < mem[_910 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_910 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_910 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_910 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_1150) + 8)
                            mem[32] = 5
                            _1167 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1167] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_1167 + 32] = Mask(80, 0, stor9)
                            mem[_1167 + 64] = address(cd[4])
                            uint256(pack[-uint8(_1150) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_1150) + 8 << 248][uint256(pack[-uint8(_1150) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_1150) + 8 << 248][uint256(pack[-uint8(_1150) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_1150) + 8 << 248][uint256(pack[-uint8(_1150) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_1150) + 8 << 248][uint256(pack[-uint8(_1150) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if address(cd[4]) == tx.origin:
            if not uint8(stor0.field_160):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _373 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_365] == bool(mem[_365])
                            mem[_373] = mem[_365]
                            require mem[_365 + 32] == mem[_365 + 63 len 1]
                            mem[_373 + 32] = mem[_365 + 32]
                            require mem[_365 + 64] == mem[_365 + 95 len 1]
                            mem[_373 + 64] = mem[_365 + 64]
                            require mem[_365 + 96] == mem[_365 + 127 len 1]
                            mem[_373 + 96] = mem[_365 + 96]
                            require mem[_365 + 128] == mem[_365 + 159 len 1]
                            mem[_373 + 128] = mem[_365 + 128]
                            require mem[_365 + 160] == mem[_365 + 191 len 1]
                            mem[_373 + 160] = mem[_365 + 160]
                            require mem[_365 + 192] == mem[_365 + 223 len 1]
                            mem[_373 + 192] = mem[_365 + 192]
                            require mem[_365 + 224] == mem[_365 + 255 len 1]
                            mem[_373 + 224] = mem[_365 + 224]
                            require mem[_365 + 256] == mem[_365 + 287 len 1]
                            mem[_373 + 256] = mem[_365 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_373]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _508 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_508] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_508 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_508 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_508 + 32] = Mask(80, 0, stor15)
                                        mem[_508 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _659 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_659] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_659 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_659 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_659 + 32] = Mask(80, 0, stor15)
                                        mem[_659 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _599 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_577] == bool(mem[_577])
                                mem[_599] = mem[_577]
                                require mem[_577 + 32] == mem[_577 + 63 len 1]
                                mem[_599 + 32] = mem[_577 + 32]
                                require mem[_577 + 64] == mem[_577 + 95 len 1]
                                mem[_599 + 64] = mem[_577 + 64]
                                require mem[_577 + 96] == mem[_577 + 127 len 1]
                                mem[_599 + 96] = mem[_577 + 96]
                                require mem[_577 + 128] == mem[_577 + 159 len 1]
                                mem[_599 + 128] = mem[_577 + 128]
                                require mem[_577 + 160] == mem[_577 + 191 len 1]
                                mem[_599 + 160] = mem[_577 + 160]
                                require mem[_577 + 192] == mem[_577 + 223 len 1]
                                mem[_599 + 192] = mem[_577 + 192]
                                require mem[_577 + 224] == mem[_577 + 255 len 1]
                                mem[_599 + 224] = mem[_577 + 224]
                                require mem[_577 + 256] == mem[_577 + 287 len 1]
                                mem[_599 + 256] = mem[_577 + 256]
                                _883 = mem[_599 + 256]
                                if 8 < mem[_599 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_599 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_599 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_599 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_883) + 8)
                                mem[32] = 5
                                _938 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_938] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_938 + 32] = Mask(80, 0, stor9)
                                mem[_938 + 64] = address(cd[4])
                                uint256(pack[-uint8(_883) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_883) + 8 << 248][uint256(pack[-uint8(_883) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_883) + 8 << 248][uint256(pack[-uint8(_883) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_883) + 8 << 248][uint256(pack[-uint8(_883) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_883) + 8 << 248][uint256(pack[-uint8(_883) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_383] == mem[_383 + 12 len 20]
                            if mem[_383 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _491 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _497 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_491] == bool(mem[_491])
                            mem[_497] = mem[_491]
                            require mem[_491 + 32] == mem[_491 + 63 len 1]
                            mem[_497 + 32] = mem[_491 + 32]
                            require mem[_491 + 64] == mem[_491 + 95 len 1]
                            mem[_497 + 64] = mem[_491 + 64]
                            require mem[_491 + 96] == mem[_491 + 127 len 1]
                            mem[_497 + 96] = mem[_491 + 96]
                            require mem[_491 + 128] == mem[_491 + 159 len 1]
                            mem[_497 + 128] = mem[_491 + 128]
                            require mem[_491 + 160] == mem[_491 + 191 len 1]
                            mem[_497 + 160] = mem[_491 + 160]
                            require mem[_491 + 192] == mem[_491 + 223 len 1]
                            mem[_497 + 192] = mem[_491 + 192]
                            require mem[_491 + 224] == mem[_491 + 255 len 1]
                            mem[_497 + 224] = mem[_491 + 224]
                            require mem[_491 + 256] == mem[_491 + 287 len 1]
                            mem[_497 + 256] = mem[_491 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_497]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _824 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_824] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_824 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_824 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_824 + 32] = Mask(80, 0, stor15)
                                        mem[_824 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _1001 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1001] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_1001 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_1001 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_1001 + 32] = Mask(80, 0, stor15)
                                        mem[_1001 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _893 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _911 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_893] == bool(mem[_893])
                                mem[_911] = mem[_893]
                                require mem[_893 + 32] == mem[_893 + 63 len 1]
                                mem[_911 + 32] = mem[_893 + 32]
                                require mem[_893 + 64] == mem[_893 + 95 len 1]
                                mem[_911 + 64] = mem[_893 + 64]
                                require mem[_893 + 96] == mem[_893 + 127 len 1]
                                mem[_911 + 96] = mem[_893 + 96]
                                require mem[_893 + 128] == mem[_893 + 159 len 1]
                                mem[_911 + 128] = mem[_893 + 128]
                                require mem[_893 + 160] == mem[_893 + 191 len 1]
                                mem[_911 + 160] = mem[_893 + 160]
                                require mem[_893 + 192] == mem[_893 + 223 len 1]
                                mem[_911 + 192] = mem[_893 + 192]
                                require mem[_893 + 224] == mem[_893 + 255 len 1]
                                mem[_911 + 224] = mem[_893 + 224]
                                require mem[_893 + 256] == mem[_893 + 287 len 1]
                                mem[_911 + 256] = mem[_893 + 256]
                                _1151 = mem[_911 + 256]
                                if 8 < mem[_911 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_911 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_911 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_911 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1151) + 8)
                                mem[32] = 5
                                _1176 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1176] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1176 + 32] = Mask(80, 0, stor9)
                                mem[_1176 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1151) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1151) + 8 << 248][uint256(pack[-uint8(_1151) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1151) + 8 << 248][uint256(pack[-uint8(_1151) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1151) + 8 << 248][uint256(pack[-uint8(_1151) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1151) + 8 << 248][uint256(pack[-uint8(_1151) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Paused'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _366 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _375 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_366] == bool(mem[_366])
                            mem[_375] = mem[_366]
                            require mem[_366 + 32] == mem[_366 + 63 len 1]
                            mem[_375 + 32] = mem[_366 + 32]
                            require mem[_366 + 64] == mem[_366 + 95 len 1]
                            mem[_375 + 64] = mem[_366 + 64]
                            require mem[_366 + 96] == mem[_366 + 127 len 1]
                            mem[_375 + 96] = mem[_366 + 96]
                            require mem[_366 + 128] == mem[_366 + 159 len 1]
                            mem[_375 + 128] = mem[_366 + 128]
                            require mem[_366 + 160] == mem[_366 + 191 len 1]
                            mem[_375 + 160] = mem[_366 + 160]
                            require mem[_366 + 192] == mem[_366 + 223 len 1]
                            mem[_375 + 192] = mem[_366 + 192]
                            require mem[_366 + 224] == mem[_366 + 255 len 1]
                            mem[_375 + 224] = mem[_366 + 224]
                            require mem[_366 + 256] == mem[_366 + 287 len 1]
                            mem[_375 + 256] = mem[_366 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_375]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _511 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_511] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_511 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_511 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_511 + 32] = Mask(80, 0, stor15)
                                        mem[_511 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _660 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_660] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_660 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_660 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_660 + 32] = Mask(80, 0, stor15)
                                        mem[_660 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _600 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_579] == bool(mem[_579])
                                mem[_600] = mem[_579]
                                require mem[_579 + 32] == mem[_579 + 63 len 1]
                                mem[_600 + 32] = mem[_579 + 32]
                                require mem[_579 + 64] == mem[_579 + 95 len 1]
                                mem[_600 + 64] = mem[_579 + 64]
                                require mem[_579 + 96] == mem[_579 + 127 len 1]
                                mem[_600 + 96] = mem[_579 + 96]
                                require mem[_579 + 128] == mem[_579 + 159 len 1]
                                mem[_600 + 128] = mem[_579 + 128]
                                require mem[_579 + 160] == mem[_579 + 191 len 1]
                                mem[_600 + 160] = mem[_579 + 160]
                                require mem[_579 + 192] == mem[_579 + 223 len 1]
                                mem[_600 + 192] = mem[_579 + 192]
                                require mem[_579 + 224] == mem[_579 + 255 len 1]
                                mem[_600 + 224] = mem[_579 + 224]
                                require mem[_579 + 256] == mem[_579 + 287 len 1]
                                mem[_600 + 256] = mem[_579 + 256]
                                _885 = mem[_600 + 256]
                                if 8 < mem[_600 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_600 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_600 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_600 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_885) + 8)
                                mem[32] = 5
                                _948 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_948] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_948 + 32] = Mask(80, 0, stor9)
                                mem[_948 + 64] = address(cd[4])
                                uint256(pack[-uint8(_885) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_885) + 8 << 248][uint256(pack[-uint8(_885) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_885) + 8 << 248][uint256(pack[-uint8(_885) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_885) + 8 << 248][uint256(pack[-uint8(_885) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_885) + 8 << 248][uint256(pack[-uint8(_885) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _384 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_384] == mem[_384 + 12 len 20]
                            if mem[_384 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _492 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _498 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_492] == bool(mem[_492])
                            mem[_498] = mem[_492]
                            require mem[_492 + 32] == mem[_492 + 63 len 1]
                            mem[_498 + 32] = mem[_492 + 32]
                            require mem[_492 + 64] == mem[_492 + 95 len 1]
                            mem[_498 + 64] = mem[_492 + 64]
                            require mem[_492 + 96] == mem[_492 + 127 len 1]
                            mem[_498 + 96] = mem[_492 + 96]
                            require mem[_492 + 128] == mem[_492 + 159 len 1]
                            mem[_498 + 128] = mem[_492 + 128]
                            require mem[_492 + 160] == mem[_492 + 191 len 1]
                            mem[_498 + 160] = mem[_492 + 160]
                            require mem[_492 + 192] == mem[_492 + 223 len 1]
                            mem[_498 + 192] = mem[_492 + 192]
                            require mem[_492 + 224] == mem[_492 + 255 len 1]
                            mem[_498 + 224] = mem[_492 + 224]
                            require mem[_492 + 256] == mem[_492 + 287 len 1]
                            mem[_498 + 256] = mem[_492 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_498]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _826 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_826] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_826 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_826 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_826 + 32] = Mask(80, 0, stor15)
                                        mem[_826 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _1002 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1002] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_1002 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_1002 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_1002 + 32] = Mask(80, 0, stor15)
                                        mem[_1002 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _894 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _912 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_894] == bool(mem[_894])
                                mem[_912] = mem[_894]
                                require mem[_894 + 32] == mem[_894 + 63 len 1]
                                mem[_912 + 32] = mem[_894 + 32]
                                require mem[_894 + 64] == mem[_894 + 95 len 1]
                                mem[_912 + 64] = mem[_894 + 64]
                                require mem[_894 + 96] == mem[_894 + 127 len 1]
                                mem[_912 + 96] = mem[_894 + 96]
                                require mem[_894 + 128] == mem[_894 + 159 len 1]
                                mem[_912 + 128] = mem[_894 + 128]
                                require mem[_894 + 160] == mem[_894 + 191 len 1]
                                mem[_912 + 160] = mem[_894 + 160]
                                require mem[_894 + 192] == mem[_894 + 223 len 1]
                                mem[_912 + 192] = mem[_894 + 192]
                                require mem[_894 + 224] == mem[_894 + 255 len 1]
                                mem[_912 + 224] = mem[_894 + 224]
                                require mem[_894 + 256] == mem[_894 + 287 len 1]
                                mem[_912 + 256] = mem[_894 + 256]
                                _1152 = mem[_912 + 256]
                                if 8 < mem[_912 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_912 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_912 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_912 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1152) + 8)
                                mem[32] = 5
                                _1185 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1185] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1185 + 32] = Mask(80, 0, stor9)
                                mem[_1185 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1152) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1152) + 8 << 248][uint256(pack[-uint8(_1152) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1152) + 8 << 248][uint256(pack[-uint8(_1152) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1152) + 8 << 248][uint256(pack[-uint8(_1152) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1152) + 8 << 248][uint256(pack[-uint8(_1152) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if swapperAddress != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            if not uint8(stor0.field_160):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _367 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _377 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_367] == bool(mem[_367])
                            mem[_377] = mem[_367]
                            require mem[_367 + 32] == mem[_367 + 63 len 1]
                            mem[_377 + 32] = mem[_367 + 32]
                            require mem[_367 + 64] == mem[_367 + 95 len 1]
                            mem[_377 + 64] = mem[_367 + 64]
                            require mem[_367 + 96] == mem[_367 + 127 len 1]
                            mem[_377 + 96] = mem[_367 + 96]
                            require mem[_367 + 128] == mem[_367 + 159 len 1]
                            mem[_377 + 128] = mem[_367 + 128]
                            require mem[_367 + 160] == mem[_367 + 191 len 1]
                            mem[_377 + 160] = mem[_367 + 160]
                            require mem[_367 + 192] == mem[_367 + 223 len 1]
                            mem[_377 + 192] = mem[_367 + 192]
                            require mem[_367 + 224] == mem[_367 + 255 len 1]
                            mem[_377 + 224] = mem[_367 + 224]
                            require mem[_367 + 256] == mem[_367 + 287 len 1]
                            mem[_377 + 256] = mem[_367 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_377]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _514 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_514] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_514 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_514 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_514 + 32] = Mask(80, 0, stor15)
                                        mem[_514 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _661 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_661] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_661 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_661 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_661 + 32] = Mask(80, 0, stor15)
                                        mem[_661 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _601 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_581] == bool(mem[_581])
                                mem[_601] = mem[_581]
                                require mem[_581 + 32] == mem[_581 + 63 len 1]
                                mem[_601 + 32] = mem[_581 + 32]
                                require mem[_581 + 64] == mem[_581 + 95 len 1]
                                mem[_601 + 64] = mem[_581 + 64]
                                require mem[_581 + 96] == mem[_581 + 127 len 1]
                                mem[_601 + 96] = mem[_581 + 96]
                                require mem[_581 + 128] == mem[_581 + 159 len 1]
                                mem[_601 + 128] = mem[_581 + 128]
                                require mem[_581 + 160] == mem[_581 + 191 len 1]
                                mem[_601 + 160] = mem[_581 + 160]
                                require mem[_581 + 192] == mem[_581 + 223 len 1]
                                mem[_601 + 192] = mem[_581 + 192]
                                require mem[_581 + 224] == mem[_581 + 255 len 1]
                                mem[_601 + 224] = mem[_581 + 224]
                                require mem[_581 + 256] == mem[_581 + 287 len 1]
                                mem[_601 + 256] = mem[_581 + 256]
                                _887 = mem[_601 + 256]
                                if 8 < mem[_601 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_601 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_601 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_601 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_887) + 8)
                                mem[32] = 5
                                _958 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_958] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_958 + 32] = Mask(80, 0, stor9)
                                mem[_958 + 64] = address(cd[4])
                                uint256(pack[-uint8(_887) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_887) + 8 << 248][uint256(pack[-uint8(_887) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_887) + 8 << 248][uint256(pack[-uint8(_887) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_887) + 8 << 248][uint256(pack[-uint8(_887) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_887) + 8 << 248][uint256(pack[-uint8(_887) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_385] == mem[_385 + 12 len 20]
                            if mem[_385 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _499 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_493] == bool(mem[_493])
                            mem[_499] = mem[_493]
                            require mem[_493 + 32] == mem[_493 + 63 len 1]
                            mem[_499 + 32] = mem[_493 + 32]
                            require mem[_493 + 64] == mem[_493 + 95 len 1]
                            mem[_499 + 64] = mem[_493 + 64]
                            require mem[_493 + 96] == mem[_493 + 127 len 1]
                            mem[_499 + 96] = mem[_493 + 96]
                            require mem[_493 + 128] == mem[_493 + 159 len 1]
                            mem[_499 + 128] = mem[_493 + 128]
                            require mem[_493 + 160] == mem[_493 + 191 len 1]
                            mem[_499 + 160] = mem[_493 + 160]
                            require mem[_493 + 192] == mem[_493 + 223 len 1]
                            mem[_499 + 192] = mem[_493 + 192]
                            require mem[_493 + 224] == mem[_493 + 255 len 1]
                            mem[_499 + 224] = mem[_493 + 224]
                            require mem[_493 + 256] == mem[_493 + 287 len 1]
                            mem[_499 + 256] = mem[_493 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_499]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _828 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_828] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_828 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_828 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_828 + 32] = Mask(80, 0, stor15)
                                        mem[_828 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _1003 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1003] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_1003 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_1003 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_1003 + 32] = Mask(80, 0, stor15)
                                        mem[_1003 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _895 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _913 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_895] == bool(mem[_895])
                                mem[_913] = mem[_895]
                                require mem[_895 + 32] == mem[_895 + 63 len 1]
                                mem[_913 + 32] = mem[_895 + 32]
                                require mem[_895 + 64] == mem[_895 + 95 len 1]
                                mem[_913 + 64] = mem[_895 + 64]
                                require mem[_895 + 96] == mem[_895 + 127 len 1]
                                mem[_913 + 96] = mem[_895 + 96]
                                require mem[_895 + 128] == mem[_895 + 159 len 1]
                                mem[_913 + 128] = mem[_895 + 128]
                                require mem[_895 + 160] == mem[_895 + 191 len 1]
                                mem[_913 + 160] = mem[_895 + 160]
                                require mem[_895 + 192] == mem[_895 + 223 len 1]
                                mem[_913 + 192] = mem[_895 + 192]
                                require mem[_895 + 224] == mem[_895 + 255 len 1]
                                mem[_913 + 224] = mem[_895 + 224]
                                require mem[_895 + 256] == mem[_895 + 287 len 1]
                                mem[_913 + 256] = mem[_895 + 256]
                                _1153 = mem[_913 + 256]
                                if 8 < mem[_913 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_913 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_913 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_913 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1153) + 8)
                                mem[32] = 5
                                _1194 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1194] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1194 + 32] = Mask(80, 0, stor9)
                                mem[_1194 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1153) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1153) + 8 << 248][uint256(pack[-uint8(_1153) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1153) + 8 << 248][uint256(pack[-uint8(_1153) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1153) + 8 << 248][uint256(pack[-uint8(_1153) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1153) + 8 << 248][uint256(pack[-uint8(_1153) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Paused'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _368 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _379 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_368] == bool(mem[_368])
                            mem[_379] = mem[_368]
                            require mem[_368 + 32] == mem[_368 + 63 len 1]
                            mem[_379 + 32] = mem[_368 + 32]
                            require mem[_368 + 64] == mem[_368 + 95 len 1]
                            mem[_379 + 64] = mem[_368 + 64]
                            require mem[_368 + 96] == mem[_368 + 127 len 1]
                            mem[_379 + 96] = mem[_368 + 96]
                            require mem[_368 + 128] == mem[_368 + 159 len 1]
                            mem[_379 + 128] = mem[_368 + 128]
                            require mem[_368 + 160] == mem[_368 + 191 len 1]
                            mem[_379 + 160] = mem[_368 + 160]
                            require mem[_368 + 192] == mem[_368 + 223 len 1]
                            mem[_379 + 192] = mem[_368 + 192]
                            require mem[_368 + 224] == mem[_368 + 255 len 1]
                            mem[_379 + 224] = mem[_368 + 224]
                            require mem[_368 + 256] == mem[_368 + 287 len 1]
                            mem[_379 + 256] = mem[_368 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_379]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _517 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_517] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_517 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_517 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_517 + 32] = Mask(80, 0, stor15)
                                        mem[_517 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _662 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_662] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_662 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_662 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_662 + 32] = Mask(80, 0, stor15)
                                        mem[_662 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _583 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _602 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_583] == bool(mem[_583])
                                mem[_602] = mem[_583]
                                require mem[_583 + 32] == mem[_583 + 63 len 1]
                                mem[_602 + 32] = mem[_583 + 32]
                                require mem[_583 + 64] == mem[_583 + 95 len 1]
                                mem[_602 + 64] = mem[_583 + 64]
                                require mem[_583 + 96] == mem[_583 + 127 len 1]
                                mem[_602 + 96] = mem[_583 + 96]
                                require mem[_583 + 128] == mem[_583 + 159 len 1]
                                mem[_602 + 128] = mem[_583 + 128]
                                require mem[_583 + 160] == mem[_583 + 191 len 1]
                                mem[_602 + 160] = mem[_583 + 160]
                                require mem[_583 + 192] == mem[_583 + 223 len 1]
                                mem[_602 + 192] = mem[_583 + 192]
                                require mem[_583 + 224] == mem[_583 + 255 len 1]
                                mem[_602 + 224] = mem[_583 + 224]
                                require mem[_583 + 256] == mem[_583 + 287 len 1]
                                mem[_602 + 256] = mem[_583 + 256]
                                _889 = mem[_602 + 256]
                                if 8 < mem[_602 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_602 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_602 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_602 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_889) + 8)
                                mem[32] = 5
                                _968 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_968] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_968 + 32] = Mask(80, 0, stor9)
                                mem[_968 + 64] = address(cd[4])
                                uint256(pack[-uint8(_889) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_889) + 8 << 248][uint256(pack[-uint8(_889) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_889) + 8 << 248][uint256(pack[-uint8(_889) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_889) + 8 << 248][uint256(pack[-uint8(_889) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_889) + 8 << 248][uint256(pack[-uint8(_889) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _386 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_386] == mem[_386 + 12 len 20]
                            if mem[_386 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _494 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _500 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_494] == bool(mem[_494])
                            mem[_500] = mem[_494]
                            require mem[_494 + 32] == mem[_494 + 63 len 1]
                            mem[_500 + 32] = mem[_494 + 32]
                            require mem[_494 + 64] == mem[_494 + 95 len 1]
                            mem[_500 + 64] = mem[_494 + 64]
                            require mem[_494 + 96] == mem[_494 + 127 len 1]
                            mem[_500 + 96] = mem[_494 + 96]
                            require mem[_494 + 128] == mem[_494 + 159 len 1]
                            mem[_500 + 128] = mem[_494 + 128]
                            require mem[_494 + 160] == mem[_494 + 191 len 1]
                            mem[_500 + 160] = mem[_494 + 160]
                            require mem[_494 + 192] == mem[_494 + 223 len 1]
                            mem[_500 + 192] = mem[_494 + 192]
                            require mem[_494 + 224] == mem[_494 + 255 len 1]
                            mem[_500 + 224] = mem[_494 + 224]
                            require mem[_494 + 256] == mem[_494 + 287 len 1]
                            mem[_500 + 256] = mem[_494 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_500]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _830 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_830] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_830 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_830 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_830 + 32] = Mask(80, 0, stor15)
                                        mem[_830 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _1004 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1004] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_1004 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_1004 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_1004 + 32] = Mask(80, 0, stor15)
                                        mem[_1004 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _896 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _914 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_896] == bool(mem[_896])
                                mem[_914] = mem[_896]
                                require mem[_896 + 32] == mem[_896 + 63 len 1]
                                mem[_914 + 32] = mem[_896 + 32]
                                require mem[_896 + 64] == mem[_896 + 95 len 1]
                                mem[_914 + 64] = mem[_896 + 64]
                                require mem[_896 + 96] == mem[_896 + 127 len 1]
                                mem[_914 + 96] = mem[_896 + 96]
                                require mem[_896 + 128] == mem[_896 + 159 len 1]
                                mem[_914 + 128] = mem[_896 + 128]
                                require mem[_896 + 160] == mem[_896 + 191 len 1]
                                mem[_914 + 160] = mem[_896 + 160]
                                require mem[_896 + 192] == mem[_896 + 223 len 1]
                                mem[_914 + 192] = mem[_896 + 192]
                                require mem[_896 + 224] == mem[_896 + 255 len 1]
                                mem[_914 + 224] = mem[_896 + 224]
                                require mem[_896 + 256] == mem[_896 + 287 len 1]
                                mem[_914 + 256] = mem[_896 + 256]
                                _1154 = mem[_914 + 256]
                                if 8 < mem[_914 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_914 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_914 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_914 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1154) + 8)
                                mem[32] = 5
                                _1203 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1203] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1203 + 32] = Mask(80, 0, stor9)
                                mem[_1203 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1154) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1154) + 8 << 248][uint256(pack[-uint8(_1154) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1154) + 8 << 248][uint256(pack[-uint8(_1154) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1154) + 8 << 248][uint256(pack[-uint8(_1154) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1154) + 8 << 248][uint256(pack[-uint8(_1154) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    Mask(248, 0, stor16.field_8) = 0
}

function sub_f53a951e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if swapperAddress != msg.sender:
        revert with 0, 'OnlySwapper'
    if uint8(stor16.field_8):
        revert with 0, 'No reentrancy'
    Mask(248, 0, stor16.field_8) = 1
    if address(cd[4]) != msg.sender:
        if swapperAddress != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        if not uint8(stor0.field_160):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == swapperAddress:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _351 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _357 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_351] == bool(mem[_351])
                        mem[_357] = mem[_351]
                        require mem[_351 + 32] == mem[_351 + 63 len 1]
                        mem[_357 + 32] = mem[_351 + 32]
                        require mem[_351 + 64] == mem[_351 + 95 len 1]
                        mem[_357 + 64] = mem[_351 + 64]
                        require mem[_351 + 96] == mem[_351 + 127 len 1]
                        mem[_357 + 96] = mem[_351 + 96]
                        require mem[_351 + 128] == mem[_351 + 159 len 1]
                        mem[_357 + 128] = mem[_351 + 128]
                        require mem[_351 + 160] == mem[_351 + 191 len 1]
                        mem[_357 + 160] = mem[_351 + 160]
                        require mem[_351 + 192] == mem[_351 + 223 len 1]
                        mem[_357 + 192] = mem[_351 + 192]
                        require mem[_351 + 224] == mem[_351 + 255 len 1]
                        mem[_357 + 224] = mem[_351 + 224]
                        require mem[_351 + 256] == mem[_351 + 287 len 1]
                        mem[_357 + 256] = mem[_351 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_357]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _490 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_490] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_490 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_490 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_490 + 32] = Mask(80, 0, stor15)
                                    mem[_490 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _645 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_645] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_645 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_645 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_645 + 32] = Mask(80, 0, stor15)
                                    mem[_645 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _561 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _585 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_561] == bool(mem[_561])
                            mem[_585] = mem[_561]
                            require mem[_561 + 32] == mem[_561 + 63 len 1]
                            mem[_585 + 32] = mem[_561 + 32]
                            require mem[_561 + 64] == mem[_561 + 95 len 1]
                            mem[_585 + 64] = mem[_561 + 64]
                            require mem[_561 + 96] == mem[_561 + 127 len 1]
                            mem[_585 + 96] = mem[_561 + 96]
                            require mem[_561 + 128] == mem[_561 + 159 len 1]
                            mem[_585 + 128] = mem[_561 + 128]
                            require mem[_561 + 160] == mem[_561 + 191 len 1]
                            mem[_585 + 160] = mem[_561 + 160]
                            require mem[_561 + 192] == mem[_561 + 223 len 1]
                            mem[_585 + 192] = mem[_561 + 192]
                            require mem[_561 + 224] == mem[_561 + 255 len 1]
                            mem[_585 + 224] = mem[_561 + 224]
                            require mem[_561 + 256] == mem[_561 + 287 len 1]
                            mem[_585 + 256] = mem[_561 + 256]
                            _867 = mem[_585 + 256]
                            if 8 < mem[_585 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_585 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_585 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_585 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_867) + 8)
                            mem[32] = 5
                            _906 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_906] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_906 + 32] = Mask(80, 0, stor9)
                            mem[_906 + 64] = address(cd[4])
                            uint256(pack[-uint8(_867) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_867) + 8 << 248][uint256(pack[-uint8(_867) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_867) + 8 << 248][uint256(pack[-uint8(_867) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_867) + 8 << 248][uint256(pack[-uint8(_867) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_867) + 8 << 248][uint256(pack[-uint8(_867) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _369 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_369] == mem[_369 + 12 len 20]
                        if mem[_369 + 12 len 20] != msg.sender:
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
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _477 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _483 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_477] == bool(mem[_477])
                        mem[_483] = mem[_477]
                        require mem[_477 + 32] == mem[_477 + 63 len 1]
                        mem[_483 + 32] = mem[_477 + 32]
                        require mem[_477 + 64] == mem[_477 + 95 len 1]
                        mem[_483 + 64] = mem[_477 + 64]
                        require mem[_477 + 96] == mem[_477 + 127 len 1]
                        mem[_483 + 96] = mem[_477 + 96]
                        require mem[_477 + 128] == mem[_477 + 159 len 1]
                        mem[_483 + 128] = mem[_477 + 128]
                        require mem[_477 + 160] == mem[_477 + 191 len 1]
                        mem[_483 + 160] = mem[_477 + 160]
                        require mem[_477 + 192] == mem[_477 + 223 len 1]
                        mem[_483 + 192] = mem[_477 + 192]
                        require mem[_477 + 224] == mem[_477 + 255 len 1]
                        mem[_483 + 224] = mem[_477 + 224]
                        require mem[_477 + 256] == mem[_477 + 287 len 1]
                        mem[_483 + 256] = mem[_477 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_483]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _808 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_808] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_808 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_808 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_808 + 32] = Mask(80, 0, stor15)
                                    mem[_808 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _987 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_987] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_987 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_987 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_987 + 32] = Mask(80, 0, stor15)
                                    mem[_987 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _897 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_879] == bool(mem[_879])
                            mem[_897] = mem[_879]
                            require mem[_879 + 32] == mem[_879 + 63 len 1]
                            mem[_897 + 32] = mem[_879 + 32]
                            require mem[_879 + 64] == mem[_879 + 95 len 1]
                            mem[_897 + 64] = mem[_879 + 64]
                            require mem[_879 + 96] == mem[_879 + 127 len 1]
                            mem[_897 + 96] = mem[_879 + 96]
                            require mem[_879 + 128] == mem[_879 + 159 len 1]
                            mem[_897 + 128] = mem[_879 + 128]
                            require mem[_879 + 160] == mem[_879 + 191 len 1]
                            mem[_897 + 160] = mem[_879 + 160]
                            require mem[_879 + 192] == mem[_879 + 223 len 1]
                            mem[_897 + 192] = mem[_879 + 192]
                            require mem[_879 + 224] == mem[_879 + 255 len 1]
                            mem[_897 + 224] = mem[_879 + 224]
                            require mem[_879 + 256] == mem[_879 + 287 len 1]
                            mem[_897 + 256] = mem[_879 + 256]
                            _1137 = mem[_897 + 256]
                            if 8 < mem[_897 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_897 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_897 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_897 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_1137) + 8)
                            mem[32] = 5
                            _1146 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1146] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_1146 + 32] = Mask(80, 0, stor9)
                            mem[_1146 + 64] = address(cd[4])
                            uint256(pack[-uint8(_1137) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_1137) + 8 << 248][uint256(pack[-uint8(_1137) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_1137) + 8 << 248][uint256(pack[-uint8(_1137) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_1137) + 8 << 248][uint256(pack[-uint8(_1137) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_1137) + 8 << 248][uint256(pack[-uint8(_1137) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            if owner != msg.sender:
                revert with 0, 'Paused'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == swapperAddress:
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _352 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _359 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_352] == bool(mem[_352])
                        mem[_359] = mem[_352]
                        require mem[_352 + 32] == mem[_352 + 63 len 1]
                        mem[_359 + 32] = mem[_352 + 32]
                        require mem[_352 + 64] == mem[_352 + 95 len 1]
                        mem[_359 + 64] = mem[_352 + 64]
                        require mem[_352 + 96] == mem[_352 + 127 len 1]
                        mem[_359 + 96] = mem[_352 + 96]
                        require mem[_352 + 128] == mem[_352 + 159 len 1]
                        mem[_359 + 128] = mem[_352 + 128]
                        require mem[_352 + 160] == mem[_352 + 191 len 1]
                        mem[_359 + 160] = mem[_352 + 160]
                        require mem[_352 + 192] == mem[_352 + 223 len 1]
                        mem[_359 + 192] = mem[_352 + 192]
                        require mem[_352 + 224] == mem[_352 + 255 len 1]
                        mem[_359 + 224] = mem[_352 + 224]
                        require mem[_352 + 256] == mem[_352 + 287 len 1]
                        mem[_359 + 256] = mem[_352 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_359]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _493 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_493] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_493 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_493 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_493 + 32] = Mask(80, 0, stor15)
                                    mem[_493 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _646 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_646] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_646 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_646 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_646 + 32] = Mask(80, 0, stor15)
                                    mem[_646 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _563 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _586 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_563] == bool(mem[_563])
                            mem[_586] = mem[_563]
                            require mem[_563 + 32] == mem[_563 + 63 len 1]
                            mem[_586 + 32] = mem[_563 + 32]
                            require mem[_563 + 64] == mem[_563 + 95 len 1]
                            mem[_586 + 64] = mem[_563 + 64]
                            require mem[_563 + 96] == mem[_563 + 127 len 1]
                            mem[_586 + 96] = mem[_563 + 96]
                            require mem[_563 + 128] == mem[_563 + 159 len 1]
                            mem[_586 + 128] = mem[_563 + 128]
                            require mem[_563 + 160] == mem[_563 + 191 len 1]
                            mem[_586 + 160] = mem[_563 + 160]
                            require mem[_563 + 192] == mem[_563 + 223 len 1]
                            mem[_586 + 192] = mem[_563 + 192]
                            require mem[_563 + 224] == mem[_563 + 255 len 1]
                            mem[_586 + 224] = mem[_563 + 224]
                            require mem[_563 + 256] == mem[_563 + 287 len 1]
                            mem[_586 + 256] = mem[_563 + 256]
                            _869 = mem[_586 + 256]
                            if 8 < mem[_586 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_586 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_586 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_586 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_869) + 8)
                            mem[32] = 5
                            _916 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_916] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_916 + 32] = Mask(80, 0, stor9)
                            mem[_916 + 64] = address(cd[4])
                            uint256(pack[-uint8(_869) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_869) + 8 << 248][uint256(pack[-uint8(_869) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_869) + 8 << 248][uint256(pack[-uint8(_869) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_869) + 8 << 248][uint256(pack[-uint8(_869) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_869) + 8 << 248][uint256(pack[-uint8(_869) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                        _370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_370] == mem[_370 + 12 len 20]
                        if mem[_370 + 12 len 20] != msg.sender:
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
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _484 = mem[64]
                        if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                            revert with 'NH{q', 65
                        mem[64] = mem[64] + 288
                        require mem[_478] == bool(mem[_478])
                        mem[_484] = mem[_478]
                        require mem[_478 + 32] == mem[_478 + 63 len 1]
                        mem[_484 + 32] = mem[_478 + 32]
                        require mem[_478 + 64] == mem[_478 + 95 len 1]
                        mem[_484 + 64] = mem[_478 + 64]
                        require mem[_478 + 96] == mem[_478 + 127 len 1]
                        mem[_484 + 96] = mem[_478 + 96]
                        require mem[_478 + 128] == mem[_478 + 159 len 1]
                        mem[_484 + 128] = mem[_478 + 128]
                        require mem[_478 + 160] == mem[_478 + 191 len 1]
                        mem[_484 + 160] = mem[_478 + 160]
                        require mem[_478 + 192] == mem[_478 + 223 len 1]
                        mem[_484 + 192] = mem[_478 + 192]
                        require mem[_478 + 224] == mem[_478 + 255 len 1]
                        mem[_484 + 224] = mem[_478 + 224]
                        require mem[_478 + 256] == mem[_478 + 287 len 1]
                        mem[_484 + 256] = mem[_478 + 256]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_484]:
                            if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                _810 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_810] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_810 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_810 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_810 + 32] = Mask(80, 0, stor15)
                                    mem[_810 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                _988 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_988] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                    mem[_988 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_988 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                else:
                                    mem[_988 + 32] = Mask(80, 0, stor15)
                                    mem[_988 + 64] = address(cd[4])
                                    mem[32] = 4
                                    uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                    Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                            address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            if sub_457e5789 > -2:
                                revert with 'NH{q', 17
                            sub_457e5789++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _880 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _898 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_880] == bool(mem[_880])
                            mem[_898] = mem[_880]
                            require mem[_880 + 32] == mem[_880 + 63 len 1]
                            mem[_898 + 32] = mem[_880 + 32]
                            require mem[_880 + 64] == mem[_880 + 95 len 1]
                            mem[_898 + 64] = mem[_880 + 64]
                            require mem[_880 + 96] == mem[_880 + 127 len 1]
                            mem[_898 + 96] = mem[_880 + 96]
                            require mem[_880 + 128] == mem[_880 + 159 len 1]
                            mem[_898 + 128] = mem[_880 + 128]
                            require mem[_880 + 160] == mem[_880 + 191 len 1]
                            mem[_898 + 160] = mem[_880 + 160]
                            require mem[_880 + 192] == mem[_880 + 223 len 1]
                            mem[_898 + 192] = mem[_880 + 192]
                            require mem[_880 + 224] == mem[_880 + 255 len 1]
                            mem[_898 + 224] = mem[_880 + 224]
                            require mem[_880 + 256] == mem[_880 + 287 len 1]
                            mem[_898 + 256] = mem[_880 + 256]
                            _1138 = mem[_898 + 256]
                            if 8 < mem[_898 + 287 len 1]:
                                revert with 'NH{q', 17
                            if totalAlphaStaked > -uint8(-mem[_898 + 287 len 1] + 8) - 1:
                                revert with 'NH{q', 17
                            totalAlphaStaked += uint8(-mem[_898 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_898 + 287 len 1] + 8)
                            packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                            mem[0] = uint8(-uint8(_1138) + 8)
                            mem[32] = 5
                            _1155 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1155] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_1155 + 32] = Mask(80, 0, stor9)
                            mem[_1155 + 64] = address(cd[4])
                            uint256(pack[-uint8(_1138) + 8 << 248].field_0)++
                            uint16(pack[-uint8(_1138) + 8 << 248][uint256(pack[-uint8(_1138) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, pack[-uint8(_1138) + 8 << 248][uint256(pack[-uint8(_1138) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                            Mask(80, 0, pack[-uint8(_1138) + 8 << 248][uint256(pack[-uint8(_1138) + 8 << 248].field_0)].field_16) = 0
                            address(pack[-uint8(_1138) + 8 << 248][uint256(pack[-uint8(_1138) + 8 << 248].field_0)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_7bde72dc)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                    if idx >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if address(cd[4]) == tx.origin:
            if not uint8(stor0.field_160):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _353 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _361 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_353] == bool(mem[_353])
                            mem[_361] = mem[_353]
                            require mem[_353 + 32] == mem[_353 + 63 len 1]
                            mem[_361 + 32] = mem[_353 + 32]
                            require mem[_353 + 64] == mem[_353 + 95 len 1]
                            mem[_361 + 64] = mem[_353 + 64]
                            require mem[_353 + 96] == mem[_353 + 127 len 1]
                            mem[_361 + 96] = mem[_353 + 96]
                            require mem[_353 + 128] == mem[_353 + 159 len 1]
                            mem[_361 + 128] = mem[_353 + 128]
                            require mem[_353 + 160] == mem[_353 + 191 len 1]
                            mem[_361 + 160] = mem[_353 + 160]
                            require mem[_353 + 192] == mem[_353 + 223 len 1]
                            mem[_361 + 192] = mem[_353 + 192]
                            require mem[_353 + 224] == mem[_353 + 255 len 1]
                            mem[_361 + 224] = mem[_353 + 224]
                            require mem[_353 + 256] == mem[_353 + 287 len 1]
                            mem[_361 + 256] = mem[_353 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_361]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _496 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_496] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_496 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_496 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_496 + 32] = Mask(80, 0, stor15)
                                        mem[_496 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _647 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_647] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_647 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_647 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_647 + 32] = Mask(80, 0, stor15)
                                        mem[_647 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _565 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _587 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_565] == bool(mem[_565])
                                mem[_587] = mem[_565]
                                require mem[_565 + 32] == mem[_565 + 63 len 1]
                                mem[_587 + 32] = mem[_565 + 32]
                                require mem[_565 + 64] == mem[_565 + 95 len 1]
                                mem[_587 + 64] = mem[_565 + 64]
                                require mem[_565 + 96] == mem[_565 + 127 len 1]
                                mem[_587 + 96] = mem[_565 + 96]
                                require mem[_565 + 128] == mem[_565 + 159 len 1]
                                mem[_587 + 128] = mem[_565 + 128]
                                require mem[_565 + 160] == mem[_565 + 191 len 1]
                                mem[_587 + 160] = mem[_565 + 160]
                                require mem[_565 + 192] == mem[_565 + 223 len 1]
                                mem[_587 + 192] = mem[_565 + 192]
                                require mem[_565 + 224] == mem[_565 + 255 len 1]
                                mem[_587 + 224] = mem[_565 + 224]
                                require mem[_565 + 256] == mem[_565 + 287 len 1]
                                mem[_587 + 256] = mem[_565 + 256]
                                _871 = mem[_587 + 256]
                                if 8 < mem[_587 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_587 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_587 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_587 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_871) + 8)
                                mem[32] = 5
                                _926 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_926] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_926 + 32] = Mask(80, 0, stor9)
                                mem[_926 + 64] = address(cd[4])
                                uint256(pack[-uint8(_871) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_871) + 8 << 248][uint256(pack[-uint8(_871) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_871) + 8 << 248][uint256(pack[-uint8(_871) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_871) + 8 << 248][uint256(pack[-uint8(_871) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_871) + 8 << 248][uint256(pack[-uint8(_871) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _371 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_371] == mem[_371 + 12 len 20]
                            if mem[_371 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _479 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _485 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_479] == bool(mem[_479])
                            mem[_485] = mem[_479]
                            require mem[_479 + 32] == mem[_479 + 63 len 1]
                            mem[_485 + 32] = mem[_479 + 32]
                            require mem[_479 + 64] == mem[_479 + 95 len 1]
                            mem[_485 + 64] = mem[_479 + 64]
                            require mem[_479 + 96] == mem[_479 + 127 len 1]
                            mem[_485 + 96] = mem[_479 + 96]
                            require mem[_479 + 128] == mem[_479 + 159 len 1]
                            mem[_485 + 128] = mem[_479 + 128]
                            require mem[_479 + 160] == mem[_479 + 191 len 1]
                            mem[_485 + 160] = mem[_479 + 160]
                            require mem[_479 + 192] == mem[_479 + 223 len 1]
                            mem[_485 + 192] = mem[_479 + 192]
                            require mem[_479 + 224] == mem[_479 + 255 len 1]
                            mem[_485 + 224] = mem[_479 + 224]
                            require mem[_479 + 256] == mem[_479 + 287 len 1]
                            mem[_485 + 256] = mem[_479 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_485]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _812 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_812] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_812 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_812 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_812 + 32] = Mask(80, 0, stor15)
                                        mem[_812 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _989 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_989] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_989 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_989 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_989 + 32] = Mask(80, 0, stor15)
                                        mem[_989 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _881 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _899 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_881] == bool(mem[_881])
                                mem[_899] = mem[_881]
                                require mem[_881 + 32] == mem[_881 + 63 len 1]
                                mem[_899 + 32] = mem[_881 + 32]
                                require mem[_881 + 64] == mem[_881 + 95 len 1]
                                mem[_899 + 64] = mem[_881 + 64]
                                require mem[_881 + 96] == mem[_881 + 127 len 1]
                                mem[_899 + 96] = mem[_881 + 96]
                                require mem[_881 + 128] == mem[_881 + 159 len 1]
                                mem[_899 + 128] = mem[_881 + 128]
                                require mem[_881 + 160] == mem[_881 + 191 len 1]
                                mem[_899 + 160] = mem[_881 + 160]
                                require mem[_881 + 192] == mem[_881 + 223 len 1]
                                mem[_899 + 192] = mem[_881 + 192]
                                require mem[_881 + 224] == mem[_881 + 255 len 1]
                                mem[_899 + 224] = mem[_881 + 224]
                                require mem[_881 + 256] == mem[_881 + 287 len 1]
                                mem[_899 + 256] = mem[_881 + 256]
                                _1139 = mem[_899 + 256]
                                if 8 < mem[_899 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_899 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_899 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_899 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1139) + 8)
                                mem[32] = 5
                                _1164 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1164] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1164 + 32] = Mask(80, 0, stor9)
                                mem[_1164 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1139) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1139) + 8 << 248][uint256(pack[-uint8(_1139) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1139) + 8 << 248][uint256(pack[-uint8(_1139) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1139) + 8 << 248][uint256(pack[-uint8(_1139) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1139) + 8 << 248][uint256(pack[-uint8(_1139) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Paused'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _354 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _363 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_354] == bool(mem[_354])
                            mem[_363] = mem[_354]
                            require mem[_354 + 32] == mem[_354 + 63 len 1]
                            mem[_363 + 32] = mem[_354 + 32]
                            require mem[_354 + 64] == mem[_354 + 95 len 1]
                            mem[_363 + 64] = mem[_354 + 64]
                            require mem[_354 + 96] == mem[_354 + 127 len 1]
                            mem[_363 + 96] = mem[_354 + 96]
                            require mem[_354 + 128] == mem[_354 + 159 len 1]
                            mem[_363 + 128] = mem[_354 + 128]
                            require mem[_354 + 160] == mem[_354 + 191 len 1]
                            mem[_363 + 160] = mem[_354 + 160]
                            require mem[_354 + 192] == mem[_354 + 223 len 1]
                            mem[_363 + 192] = mem[_354 + 192]
                            require mem[_354 + 224] == mem[_354 + 255 len 1]
                            mem[_363 + 224] = mem[_354 + 224]
                            require mem[_354 + 256] == mem[_354 + 287 len 1]
                            mem[_363 + 256] = mem[_354 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_363]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _499 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_499] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_499 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_499 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_499 + 32] = Mask(80, 0, stor15)
                                        mem[_499 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _648 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_648] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_648 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_648 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_648 + 32] = Mask(80, 0, stor15)
                                        mem[_648 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _567 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _588 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_567] == bool(mem[_567])
                                mem[_588] = mem[_567]
                                require mem[_567 + 32] == mem[_567 + 63 len 1]
                                mem[_588 + 32] = mem[_567 + 32]
                                require mem[_567 + 64] == mem[_567 + 95 len 1]
                                mem[_588 + 64] = mem[_567 + 64]
                                require mem[_567 + 96] == mem[_567 + 127 len 1]
                                mem[_588 + 96] = mem[_567 + 96]
                                require mem[_567 + 128] == mem[_567 + 159 len 1]
                                mem[_588 + 128] = mem[_567 + 128]
                                require mem[_567 + 160] == mem[_567 + 191 len 1]
                                mem[_588 + 160] = mem[_567 + 160]
                                require mem[_567 + 192] == mem[_567 + 223 len 1]
                                mem[_588 + 192] = mem[_567 + 192]
                                require mem[_567 + 224] == mem[_567 + 255 len 1]
                                mem[_588 + 224] = mem[_567 + 224]
                                require mem[_567 + 256] == mem[_567 + 287 len 1]
                                mem[_588 + 256] = mem[_567 + 256]
                                _873 = mem[_588 + 256]
                                if 8 < mem[_588 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_588 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_588 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_588 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_873) + 8)
                                mem[32] = 5
                                _936 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_936] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_936 + 32] = Mask(80, 0, stor9)
                                mem[_936 + 64] = address(cd[4])
                                uint256(pack[-uint8(_873) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_873) + 8 << 248][uint256(pack[-uint8(_873) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_873) + 8 << 248][uint256(pack[-uint8(_873) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_873) + 8 << 248][uint256(pack[-uint8(_873) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_873) + 8 << 248][uint256(pack[-uint8(_873) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _372 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_372] == mem[_372 + 12 len 20]
                            if mem[_372 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _480 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _486 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_480] == bool(mem[_480])
                            mem[_486] = mem[_480]
                            require mem[_480 + 32] == mem[_480 + 63 len 1]
                            mem[_486 + 32] = mem[_480 + 32]
                            require mem[_480 + 64] == mem[_480 + 95 len 1]
                            mem[_486 + 64] = mem[_480 + 64]
                            require mem[_480 + 96] == mem[_480 + 127 len 1]
                            mem[_486 + 96] = mem[_480 + 96]
                            require mem[_480 + 128] == mem[_480 + 159 len 1]
                            mem[_486 + 128] = mem[_480 + 128]
                            require mem[_480 + 160] == mem[_480 + 191 len 1]
                            mem[_486 + 160] = mem[_480 + 160]
                            require mem[_480 + 192] == mem[_480 + 223 len 1]
                            mem[_486 + 192] = mem[_480 + 192]
                            require mem[_480 + 224] == mem[_480 + 255 len 1]
                            mem[_486 + 224] = mem[_480 + 224]
                            require mem[_480 + 256] == mem[_480 + 287 len 1]
                            mem[_486 + 256] = mem[_480 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_486]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _814 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_814] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_814 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_814 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_814 + 32] = Mask(80, 0, stor15)
                                        mem[_814 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _990 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_990] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_990 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_990 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_990 + 32] = Mask(80, 0, stor15)
                                        mem[_990 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _882 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _900 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_882] == bool(mem[_882])
                                mem[_900] = mem[_882]
                                require mem[_882 + 32] == mem[_882 + 63 len 1]
                                mem[_900 + 32] = mem[_882 + 32]
                                require mem[_882 + 64] == mem[_882 + 95 len 1]
                                mem[_900 + 64] = mem[_882 + 64]
                                require mem[_882 + 96] == mem[_882 + 127 len 1]
                                mem[_900 + 96] = mem[_882 + 96]
                                require mem[_882 + 128] == mem[_882 + 159 len 1]
                                mem[_900 + 128] = mem[_882 + 128]
                                require mem[_882 + 160] == mem[_882 + 191 len 1]
                                mem[_900 + 160] = mem[_882 + 160]
                                require mem[_882 + 192] == mem[_882 + 223 len 1]
                                mem[_900 + 192] = mem[_882 + 192]
                                require mem[_882 + 224] == mem[_882 + 255 len 1]
                                mem[_900 + 224] = mem[_882 + 224]
                                require mem[_882 + 256] == mem[_882 + 287 len 1]
                                mem[_900 + 256] = mem[_882 + 256]
                                _1140 = mem[_900 + 256]
                                if 8 < mem[_900 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_900 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_900 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_900 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1140) + 8)
                                mem[32] = 5
                                _1173 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1173] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1173 + 32] = Mask(80, 0, stor9)
                                mem[_1173 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1140) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1140) + 8 << 248][uint256(pack[-uint8(_1140) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1140) + 8 << 248][uint256(pack[-uint8(_1140) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1140) + 8 << 248][uint256(pack[-uint8(_1140) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1140) + 8 << 248][uint256(pack[-uint8(_1140) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
        else:
            if swapperAddress != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            if not uint8(stor0.field_160):
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _355 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _365 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_355] == bool(mem[_355])
                            mem[_365] = mem[_355]
                            require mem[_355 + 32] == mem[_355 + 63 len 1]
                            mem[_365 + 32] = mem[_355 + 32]
                            require mem[_355 + 64] == mem[_355 + 95 len 1]
                            mem[_365 + 64] = mem[_355 + 64]
                            require mem[_355 + 96] == mem[_355 + 127 len 1]
                            mem[_365 + 96] = mem[_355 + 96]
                            require mem[_355 + 128] == mem[_355 + 159 len 1]
                            mem[_365 + 128] = mem[_355 + 128]
                            require mem[_355 + 160] == mem[_355 + 191 len 1]
                            mem[_365 + 160] = mem[_355 + 160]
                            require mem[_355 + 192] == mem[_355 + 223 len 1]
                            mem[_365 + 192] = mem[_355 + 192]
                            require mem[_355 + 224] == mem[_355 + 255 len 1]
                            mem[_365 + 224] = mem[_355 + 224]
                            require mem[_355 + 256] == mem[_355 + 287 len 1]
                            mem[_365 + 256] = mem[_355 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_365]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _502 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_502] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_502 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_502 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_502 + 32] = Mask(80, 0, stor15)
                                        mem[_502 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _649 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_649] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_649 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_649 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_649 + 32] = Mask(80, 0, stor15)
                                        mem[_649 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _569 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _589 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_569] == bool(mem[_569])
                                mem[_589] = mem[_569]
                                require mem[_569 + 32] == mem[_569 + 63 len 1]
                                mem[_589 + 32] = mem[_569 + 32]
                                require mem[_569 + 64] == mem[_569 + 95 len 1]
                                mem[_589 + 64] = mem[_569 + 64]
                                require mem[_569 + 96] == mem[_569 + 127 len 1]
                                mem[_589 + 96] = mem[_569 + 96]
                                require mem[_569 + 128] == mem[_569 + 159 len 1]
                                mem[_589 + 128] = mem[_569 + 128]
                                require mem[_569 + 160] == mem[_569 + 191 len 1]
                                mem[_589 + 160] = mem[_569 + 160]
                                require mem[_569 + 192] == mem[_569 + 223 len 1]
                                mem[_589 + 192] = mem[_569 + 192]
                                require mem[_569 + 224] == mem[_569 + 255 len 1]
                                mem[_589 + 224] = mem[_569 + 224]
                                require mem[_569 + 256] == mem[_569 + 287 len 1]
                                mem[_589 + 256] = mem[_569 + 256]
                                _875 = mem[_589 + 256]
                                if 8 < mem[_589 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_589 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_589 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_589 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_875) + 8)
                                mem[32] = 5
                                _946 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_946] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_946 + 32] = Mask(80, 0, stor9)
                                mem[_946 + 64] = address(cd[4])
                                uint256(pack[-uint8(_875) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_875) + 8 << 248][uint256(pack[-uint8(_875) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_875) + 8 << 248][uint256(pack[-uint8(_875) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_875) + 8 << 248][uint256(pack[-uint8(_875) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_875) + 8 << 248][uint256(pack[-uint8(_875) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _373 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_373] == mem[_373 + 12 len 20]
                            if mem[_373 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _487 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_481] == bool(mem[_481])
                            mem[_487] = mem[_481]
                            require mem[_481 + 32] == mem[_481 + 63 len 1]
                            mem[_487 + 32] = mem[_481 + 32]
                            require mem[_481 + 64] == mem[_481 + 95 len 1]
                            mem[_487 + 64] = mem[_481 + 64]
                            require mem[_481 + 96] == mem[_481 + 127 len 1]
                            mem[_487 + 96] = mem[_481 + 96]
                            require mem[_481 + 128] == mem[_481 + 159 len 1]
                            mem[_487 + 128] = mem[_481 + 128]
                            require mem[_481 + 160] == mem[_481 + 191 len 1]
                            mem[_487 + 160] = mem[_481 + 160]
                            require mem[_481 + 192] == mem[_481 + 223 len 1]
                            mem[_487 + 192] = mem[_481 + 192]
                            require mem[_481 + 224] == mem[_481 + 255 len 1]
                            mem[_487 + 224] = mem[_481 + 224]
                            require mem[_481 + 256] == mem[_481 + 287 len 1]
                            mem[_487 + 256] = mem[_481 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_487]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _816 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_816] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_816 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_816 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_816 + 32] = Mask(80, 0, stor15)
                                        mem[_816 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _991 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_991] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_991 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_991 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_991 + 32] = Mask(80, 0, stor15)
                                        mem[_991 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _883 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _901 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_883] == bool(mem[_883])
                                mem[_901] = mem[_883]
                                require mem[_883 + 32] == mem[_883 + 63 len 1]
                                mem[_901 + 32] = mem[_883 + 32]
                                require mem[_883 + 64] == mem[_883 + 95 len 1]
                                mem[_901 + 64] = mem[_883 + 64]
                                require mem[_883 + 96] == mem[_883 + 127 len 1]
                                mem[_901 + 96] = mem[_883 + 96]
                                require mem[_883 + 128] == mem[_883 + 159 len 1]
                                mem[_901 + 128] = mem[_883 + 128]
                                require mem[_883 + 160] == mem[_883 + 191 len 1]
                                mem[_901 + 160] = mem[_883 + 160]
                                require mem[_883 + 192] == mem[_883 + 223 len 1]
                                mem[_901 + 192] = mem[_883 + 192]
                                require mem[_883 + 224] == mem[_883 + 255 len 1]
                                mem[_901 + 224] = mem[_883 + 224]
                                require mem[_883 + 256] == mem[_883 + 287 len 1]
                                mem[_901 + 256] = mem[_883 + 256]
                                _1141 = mem[_901 + 256]
                                if 8 < mem[_901 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_901 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_901 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_901 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1141) + 8)
                                mem[32] = 5
                                _1182 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1182] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1182 + 32] = Mask(80, 0, stor9)
                                mem[_1182 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1141) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1141) + 8 << 248][uint256(pack[-uint8(_1141) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1141) + 8 << 248][uint256(pack[-uint8(_1141) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1141) + 8 << 248][uint256(pack[-uint8(_1141) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1141) + 8 << 248][uint256(pack[-uint8(_1141) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if owner != msg.sender:
                    revert with 0, 'Paused'
                idx = 0
                while idx < ('cd', 36).length:
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if uint16(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if msg.sender == swapperAddress:
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _356 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _367 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_356] == bool(mem[_356])
                            mem[_367] = mem[_356]
                            require mem[_356 + 32] == mem[_356 + 63 len 1]
                            mem[_367 + 32] = mem[_356 + 32]
                            require mem[_356 + 64] == mem[_356 + 95 len 1]
                            mem[_367 + 64] = mem[_356 + 64]
                            require mem[_356 + 96] == mem[_356 + 127 len 1]
                            mem[_367 + 96] = mem[_356 + 96]
                            require mem[_356 + 128] == mem[_356 + 159 len 1]
                            mem[_367 + 128] = mem[_356 + 128]
                            require mem[_356 + 160] == mem[_356 + 191 len 1]
                            mem[_367 + 160] = mem[_356 + 160]
                            require mem[_356 + 192] == mem[_356 + 223 len 1]
                            mem[_367 + 192] = mem[_356 + 192]
                            require mem[_356 + 224] == mem[_356 + 255 len 1]
                            mem[_367 + 224] = mem[_356 + 224]
                            require mem[_356 + 256] == mem[_356 + 287 len 1]
                            mem[_367 + 256] = mem[_356 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_367]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _505 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_505] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_505 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_505 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_505 + 32] = Mask(80, 0, stor15)
                                        mem[_505 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _650 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_650] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_650 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_650 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_650 + 32] = Mask(80, 0, stor15)
                                        mem[_650 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _571 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _590 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_571] == bool(mem[_571])
                                mem[_590] = mem[_571]
                                require mem[_571 + 32] == mem[_571 + 63 len 1]
                                mem[_590 + 32] = mem[_571 + 32]
                                require mem[_571 + 64] == mem[_571 + 95 len 1]
                                mem[_590 + 64] = mem[_571 + 64]
                                require mem[_571 + 96] == mem[_571 + 127 len 1]
                                mem[_590 + 96] = mem[_571 + 96]
                                require mem[_571 + 128] == mem[_571 + 159 len 1]
                                mem[_590 + 128] = mem[_571 + 128]
                                require mem[_571 + 160] == mem[_571 + 191 len 1]
                                mem[_590 + 160] = mem[_571 + 160]
                                require mem[_571 + 192] == mem[_571 + 223 len 1]
                                mem[_590 + 192] = mem[_571 + 192]
                                require mem[_571 + 224] == mem[_571 + 255 len 1]
                                mem[_590 + 224] = mem[_571 + 224]
                                require mem[_571 + 256] == mem[_571 + 287 len 1]
                                mem[_590 + 256] = mem[_571 + 256]
                                _877 = mem[_590 + 256]
                                if 8 < mem[_590 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_590 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_590 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_590 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_877) + 8)
                                mem[32] = 5
                                _956 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_956] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_956 + 32] = Mask(80, 0, stor9)
                                mem[_956 + 64] = address(cd[4])
                                uint256(pack[-uint8(_877) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_877) + 8 << 248][uint256(pack[-uint8(_877) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_877) + 8 << 248][uint256(pack[-uint8(_877) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_877) + 8 << 248][uint256(pack[-uint8(_877) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_877) + 8 << 248][uint256(pack[-uint8(_877) + 8 << 248].field_0)].field_96) = address(cd[4])
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
                            _374 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_374] == mem[_374 + 12 len 20]
                            if mem[_374 + 12 len 20] != msg.sender:
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
                            staticcall stor1.getTokenTraits(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _482 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            _488 = mem[64]
                            if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + 288
                            require mem[_482] == bool(mem[_482])
                            mem[_488] = mem[_482]
                            require mem[_482 + 32] == mem[_482 + 63 len 1]
                            mem[_488 + 32] = mem[_482 + 32]
                            require mem[_482 + 64] == mem[_482 + 95 len 1]
                            mem[_488 + 64] = mem[_482 + 64]
                            require mem[_482 + 96] == mem[_482 + 127 len 1]
                            mem[_488 + 96] = mem[_482 + 96]
                            require mem[_482 + 128] == mem[_482 + 159 len 1]
                            mem[_488 + 128] = mem[_482 + 128]
                            require mem[_482 + 160] == mem[_482 + 191 len 1]
                            mem[_488 + 160] = mem[_482 + 160]
                            require mem[_482 + 192] == mem[_482 + 223 len 1]
                            mem[_488 + 192] = mem[_482 + 192]
                            require mem[_482 + 224] == mem[_482 + 255 len 1]
                            mem[_488 + 224] = mem[_482 + 224]
                            require mem[_482 + 256] == mem[_482 + 287 len 1]
                            mem[_488 + 256] = mem[_482 + 256]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                            if mem[_488]:
                                if sub_1e1d8cf8 >= 2400000000 * 10^18:
                                    _818 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_818] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_818 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_818 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_818 + 32] = Mask(80, 0, stor15)
                                        mem[_818 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
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
                                    _992 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_992] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                    if Mask(80, 0, block.timestamp) > Mask(80, 0, stor15):
                                        mem[_992 + 32] = Mask(80, 0, block.timestamp)
                                        mem[_992 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                    else:
                                        mem[_992 + 32] = Mask(80, 0, stor15)
                                        mem[_992 + 64] = address(cd[4])
                                        mem[32] = 4
                                        uint16(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = Mask(80, 0, stor15)
                                        Mask(80, 0, sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = 0
                                address(sub_771f2476[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                if sub_457e5789 > -2:
                                    revert with 'NH{q', 17
                                sub_457e5789++
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = block.timestamp
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                            else:
                                staticcall stor1.getTokenTraits(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _884 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 288
                                _902 = mem[64]
                                if mem[64] + 288 > test266151307() or mem[64] + 288 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + 288
                                require mem[_884] == bool(mem[_884])
                                mem[_902] = mem[_884]
                                require mem[_884 + 32] == mem[_884 + 63 len 1]
                                mem[_902 + 32] = mem[_884 + 32]
                                require mem[_884 + 64] == mem[_884 + 95 len 1]
                                mem[_902 + 64] = mem[_884 + 64]
                                require mem[_884 + 96] == mem[_884 + 127 len 1]
                                mem[_902 + 96] = mem[_884 + 96]
                                require mem[_884 + 128] == mem[_884 + 159 len 1]
                                mem[_902 + 128] = mem[_884 + 128]
                                require mem[_884 + 160] == mem[_884 + 191 len 1]
                                mem[_902 + 160] = mem[_884 + 160]
                                require mem[_884 + 192] == mem[_884 + 223 len 1]
                                mem[_902 + 192] = mem[_884 + 192]
                                require mem[_884 + 224] == mem[_884 + 255 len 1]
                                mem[_902 + 224] = mem[_884 + 224]
                                require mem[_884 + 256] == mem[_884 + 287 len 1]
                                mem[_902 + 256] = mem[_884 + 256]
                                _1142 = mem[_902 + 256]
                                if 8 < mem[_902 + 287 len 1]:
                                    revert with 'NH{q', 17
                                if totalAlphaStaked > -uint8(-mem[_902 + 287 len 1] + 8) - 1:
                                    revert with 'NH{q', 17
                                totalAlphaStaked += uint8(-mem[_902 + 287 len 1] + 8)
                                mem[0] = uint8(-mem[_902 + 287 len 1] + 8)
                                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(pack[mem[0]].field_0)
                                mem[0] = uint8(-uint8(_1142) + 8)
                                mem[32] = 5
                                _1191 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1191] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_1191 + 32] = Mask(80, 0, stor9)
                                mem[_1191 + 64] = address(cd[4])
                                uint256(pack[-uint8(_1142) + 8 << 248].field_0)++
                                uint16(pack[-uint8(_1142) + 8 << 248][uint256(pack[-uint8(_1142) + 8 << 248].field_0)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, pack[-uint8(_1142) + 8 << 248][uint256(pack[-uint8(_1142) + 8 << 248].field_0)].field_0) = Mask(80, 0, stor9)
                                Mask(80, 0, pack[-uint8(_1142) + 8 << 248][uint256(pack[-uint8(_1142) + 8 << 248].field_0)].field_16) = 0
                                address(pack[-uint8(_1142) + 8 << 248][uint256(pack[-uint8(_1142) + 8 << 248].field_0)].field_96) = address(cd[4])
                                mem[mem[64]] = address(cd[4])
                                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[mem[64] + 64] = uint256(sub_7bde72dc)
                                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_7bde72dc));
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_94edf9d4[cd[((32 * idx) + cd[36] + 36)] << 240] = msg.sender
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
    Mask(248, 0, stor16.field_8) = 0
}



}
