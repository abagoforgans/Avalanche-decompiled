contract main {




// =====================  Runtime code  =====================


const sub_40d6872c(?) = 20

const sub_cbc09fc6(?) = 10000 * 10^18

const MAX_ALPHA = 8

const MINIMUM_TO_EXIT = 300


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
mapping of struct barn;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 unaccountedRewards;
uint128 stor9;
uint256 sub_267ed2b0;
uint256 sub_dda4c63d;
uint256 sub_b719ac8c;
uint256 sub_608f4f09;
uint256 sub_788df81b;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;

function sub_267ed2b0(?) {
    return uint256(sub_267ed2b0)
}

function barn(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
}

function rescueEnabled() {
    return bool(rescueEnabled)
}

function paused() {
    return bool(stor0)
}

function lastClaimTimestamp() {
    return lastClaimTimestamp
}

function sub_608f4f09(?) {
    return sub_608f4f09
}

function packIndices(uint256 arg1) {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function totalAlphaStaked() {
    return totalAlphaStaked
}

function sub_788df81b(?) {
    return sub_788df81b
}

function owner() {
    return owner
}

function sub_b719ac8c(?) {
    return sub_b719ac8c
}

function unaccountedRewards() {
    return unaccountedRewards
}

function pack(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(pack[arg1].field_0)
    return uint16(pack[arg1][arg2].field_0), Mask(80, 0, pack[arg1][arg2].field_0), address(pack[arg1][arg2].field_96)
}

function sub_dda4c63d(?) {
    return sub_dda4c63d
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_b8ca407e(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dda4c63d = arg1
}

function setClaimingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b719ac8c = arg1
}

function setRescueEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setPaused(bool arg1) {
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
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

function sub_a487ce17(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0xe05c57bf with:
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

function sub_1aace9b7(?) {
    require calldata.size - 4 >= 32
    if totalAlphaStaked != 0:
        if not totalAlphaStaked:
            revert with 0, 18
        idx = 5
        s = 0
        while idx <= 8:
            mem[0] = idx
            mem[32] = 5
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

function calculateRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x94e56847 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 480 <= test266151307()):
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
    if ext_call.return_data[0]:
        if sub_608f4f09 < sub_dda4c63d:
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
    require ext_code.size(stor2)
    staticcall stor2.0xe05c57bf with:
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
        revert with 0, 17
    if uint256(sub_267ed2b0) < Mask(80, 0, barn[arg1].field_16):
        revert with 0, 17
    if uint8(-ext_call.return_data[287 len 1] + 8) and uint256(sub_267ed2b0) - Mask(80, 0, barn[arg1].field_16) > -1 / uint8(-ext_call.return_data[287 len 1] + 8):
        revert with 0, 17
    return ((uint256(sub_267ed2b0) * uint8(-ext_call.return_data[287 len 1] + 8)) - (Mask(80, 0, barn[arg1].field_16) * uint8(-ext_call.return_data[287 len 1] + 8)))
}

function rescue(uint256[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
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
        require ext_code.size(stor2)
        staticcall stor2.0xe05c57bf with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_65] == bool(mem[_65])
        require mem[_65 + 32] == mem[_65 + 63 len 1]
        require mem[_65 + 64] == mem[_65 + 95 len 1]
        require mem[_65 + 96] == mem[_65 + 127 len 1]
        require mem[_65 + 128] == mem[_65 + 159 len 1]
        require mem[_65 + 160] == mem[_65 + 191 len 1]
        require mem[_65 + 192] == mem[_65 + 223 len 1]
        require mem[_65 + 224] == mem[_65 + 255 len 1]
        require mem[_65 + 256] == mem[_65 + 287 len 1]
        if mem[_65]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 4
            _76 = mem[64]
            mem[64] = mem[64] + 96
            mem[_76] = uint16(barn[cd[((32 * idx) + arg1 + 36)]].field_0)
            mem[_76 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)]].field_16)
            mem[_76 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)]].field_96)
            if address(barn[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(stor2)
            call stor2.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 4
            uint256(barn[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
            if sub_788df81b < 1:
                revert with 0, 17
            sub_788df81b--
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0xbc7f0bcc: cd[((32 * idx) + arg1 + 36)], 0, 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _76
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        require ext_code.size(stor2)
        staticcall stor2.0xe05c57bf with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        require mem[_81] == bool(mem[_81])
        require mem[_81 + 32] == mem[_81 + 63 len 1]
        require mem[_81 + 64] == mem[_81 + 95 len 1]
        require mem[_81 + 96] == mem[_81 + 127 len 1]
        require mem[_81 + 128] == mem[_81 + 159 len 1]
        require mem[_81 + 160] == mem[_81 + 191 len 1]
        require mem[_81 + 192] == mem[_81 + 223 len 1]
        require mem[_81 + 224] == mem[_81 + 255 len 1]
        _95 = mem[_81 + 256]
        require mem[_81 + 256] == mem[_81 + 287 len 1]
        if 8 < mem[_81 + 287 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_81 + 287 len 1] + 8)
        _96 = sha3(mem[0], 5)
        mem[32] = 6
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 5)
        _99 = mem[64]
        mem[64] = mem[64] + 96
        mem[_99] = uint16(stor[sha3(_96) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_0)
        mem[_99 + 32] = Mask(80, 0, stor[sha3(_96) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_16)
        mem[_99 + 64] = address(stor[sha3(_96) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_96)
        if address(stor[sha3(_96) + stor6[cd[((32 * idx) + arg1 + 36)]]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if totalAlphaStaked < uint8(-uint8(_95) + 8):
            revert with 0, 17
        totalAlphaStaked -= uint8(-uint8(_95) + 8)
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(stor2)
        call stor2.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 5
        if uint256(pack[-uint8(_95) + 8 << 248].field_0) < 1:
            revert with 0, 17
        if uint256(pack[-uint8(_95) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_95) + 8 << 248].field_0):
            revert with 0, 50
        mem[0] = sha3(-uint8(_95) + 8 << 248, 5)
        _106 = mem[64]
        mem[64] = mem[64] + 96
        mem[_106] = uint16(pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0)
        mem[_106 + 32] = Mask(80, 0, pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0)
        mem[_106 + 64] = address(pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0)
        if packIndices[cd[((32 * idx) + arg1 + 36)]] >= uint256(pack[-uint8(_95) + 8 << 248].field_0):
            revert with 0, 50
        uint16(pack[-uint8(_95) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_0) = uint16(pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0)
        Mask(80, 0, pack[-uint8(_95) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_16) = Mask(80, 0, pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0)
        address(pack[-uint8(_95) + 8 << 248][stor6[cd[((32 * idx) + arg1 + 36)]]].field_96) = address(pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0)
        packIndices[uint16(stor5[-uint8(_95) + 8 << 248][uint256(stor5[-uint8(_95) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + arg1 + 36)]]
        if not uint256(pack[-uint8(_95) + 8 << 248].field_0):
            revert with 0, 49
        uint256(pack[-uint8(_95) + 8 << 248][uint256(pack[-uint8(_95) + 8 << 248].field_0)].field_0) = 0
        uint256(pack[-uint8(_95) + 8 << 248].field_0)--
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 6
        packIndices[cd[((32 * idx) + arg1 + 36)]] = 0
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0xab26c19b: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _99
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
}

function addManyToBarnAndPack(address arg1, uint16[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
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
    if arg1 != msg.sender:
        if stor2 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        idx = 0
        while idx < arg2.length:
            if idx >= mem[96]:
                revert with 0, 50
            if msg.sender == stor2:
                if mem[(32 * idx) + 158 len 2] != 0:
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(stor2)
                    staticcall stor2.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _796 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_796] == bool(mem[_796])
                    require mem[_796 + 32] == mem[_796 + 63 len 1]
                    require mem[_796 + 64] == mem[_796 + 95 len 1]
                    require mem[_796 + 96] == mem[_796 + 127 len 1]
                    require mem[_796 + 128] == mem[_796 + 159 len 1]
                    require mem[_796 + 160] == mem[_796 + 191 len 1]
                    require mem[_796 + 192] == mem[_796 + 223 len 1]
                    require mem[_796 + 224] == mem[_796 + 255 len 1]
                    require mem[_796 + 256] == mem[_796 + 287 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_796]:
                        _887 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= sub_dda4c63d:
                            _904 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_904] = mem[(32 * idx) + 158 len 2]
                            mem[_904 + 32] = Mask(80, 0, block.timestamp)
                            mem[_904 + 64] = arg1
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
                            _992 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_992] = mem[(32 * idx) + 158 len 2]
                            mem[_992 + 32] = Mask(80, 0, block.timestamp)
                            mem[_992 + 64] = arg1
                        mem[0] = uint16(_887)
                        mem[32] = 4
                        uint16(barn[_887 << 240].field_0) = uint16(_887)
                        Mask(80, 0, barn[_887 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_887 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_887)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _887 << 240, block.timestamp);
                    else:
                        _886 = mem[(32 * idx) + 128]
                        require ext_code.size(stor2)
                        staticcall stor2.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _919 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_919] == bool(mem[_919])
                        require mem[_919 + 32] == mem[_919 + 63 len 1]
                        require mem[_919 + 64] == mem[_919 + 95 len 1]
                        require mem[_919 + 96] == mem[_919 + 127 len 1]
                        require mem[_919 + 128] == mem[_919 + 159 len 1]
                        require mem[_919 + 160] == mem[_919 + 191 len 1]
                        require mem[_919 + 192] == mem[_919 + 223 len 1]
                        require mem[_919 + 224] == mem[_919 + 255 len 1]
                        require mem[_919 + 256] == mem[_919 + 287 len 1]
                        if 8 < mem[_919 + 287 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_919 + 287 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_919 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_919 + 287 len 1] + 8)
                        _1075 = sha3(mem[0], 5)
                        mem[0] = uint16(_886)
                        packIndices[_886 << 240] = uint256(stor[_1075].field_0)
                        mem[32] = 5
                        _1077 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1077] = uint16(_886)
                        mem[_1077 + 32] = Mask(80, 0, stor9)
                        mem[_1077 + 64] = arg1
                        uint256(stor[_1075].field_0)++
                        mem[0] = _1075
                        Mask(80, 0, stor[uint256(stor[_1075].field_0) + sha3(_1075)].field_0) = Mask(80, 0, stor9)
                        uint16(stor[uint256(stor[_1075].field_0) + sha3(_1075)].field_0) = uint16(_886)
                        Mask(80, 0, stor[uint256(stor[_1075].field_0) + sha3(_1075)].field_16) = 0
                        address(stor[uint256(stor[_1075].field_0) + sha3(_1075)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_886)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _886 << 240, uint256(sub_267ed2b0));
            else:
                _770 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor2)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_770 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_789] == mem[_789 + 12 len 20]
                if mem[_789 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= mem[96]:
                    revert with 0, 50
                _812 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(_812)
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(_812)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(stor2)
                staticcall stor2.0xe05c57bf with:
                        gas gas_remaining wei
                       args (mem[(32 * idx) + 128] << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _844 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_844] == bool(mem[_844])
                require mem[_844 + 32] == mem[_844 + 63 len 1]
                require mem[_844 + 64] == mem[_844 + 95 len 1]
                require mem[_844 + 96] == mem[_844 + 127 len 1]
                require mem[_844 + 128] == mem[_844 + 159 len 1]
                require mem[_844 + 160] == mem[_844 + 191 len 1]
                require mem[_844 + 192] == mem[_844 + 223 len 1]
                require mem[_844 + 224] == mem[_844 + 255 len 1]
                require mem[_844 + 256] == mem[_844 + 287 len 1]
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_844]:
                    _951 = mem[(32 * idx) + 128]
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if sub_608f4f09 >= sub_dda4c63d:
                        _968 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_968] = mem[(32 * idx) + 158 len 2]
                        mem[_968 + 32] = Mask(80, 0, block.timestamp)
                        mem[_968 + 64] = arg1
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
                        _1046 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1046] = mem[(32 * idx) + 158 len 2]
                        mem[_1046 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1046 + 64] = arg1
                    mem[0] = uint16(_951)
                    mem[32] = 4
                    uint16(barn[_951 << 240].field_0) = uint16(_951)
                    Mask(80, 0, barn[_951 << 240].field_16) = Mask(80, 0, block.timestamp)
                    address(barn[_951 << 240].field_96) = arg1
                    if sub_788df81b > -2:
                        revert with 0, 17
                    sub_788df81b++
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_951)
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(arg1), _951 << 240, block.timestamp);
                else:
                    _950 = mem[(32 * idx) + 128]
                    require ext_code.size(stor2)
                    staticcall stor2.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_985] == bool(mem[_985])
                    require mem[_985 + 32] == mem[_985 + 63 len 1]
                    require mem[_985 + 64] == mem[_985 + 95 len 1]
                    require mem[_985 + 96] == mem[_985 + 127 len 1]
                    require mem[_985 + 128] == mem[_985 + 159 len 1]
                    require mem[_985 + 160] == mem[_985 + 191 len 1]
                    require mem[_985 + 192] == mem[_985 + 223 len 1]
                    require mem[_985 + 224] == mem[_985 + 255 len 1]
                    require mem[_985 + 256] == mem[_985 + 287 len 1]
                    if 8 < mem[_985 + 287 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_985 + 287 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_985 + 287 len 1] + 8)
                    mem[0] = uint8(-mem[_985 + 287 len 1] + 8)
                    _1108 = sha3(mem[0], 5)
                    mem[0] = uint16(_950)
                    packIndices[_950 << 240] = uint256(stor[_1108].field_0)
                    mem[32] = 5
                    _1110 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1110] = uint16(_950)
                    mem[_1110 + 32] = Mask(80, 0, stor9)
                    mem[_1110 + 64] = arg1
                    uint256(stor[_1108].field_0)++
                    mem[0] = _1108
                    Mask(80, 0, stor[uint256(stor[_1108].field_0) + sha3(_1108)].field_0) = Mask(80, 0, stor9)
                    uint16(stor[uint256(stor[_1108].field_0) + sha3(_1108)].field_0) = uint16(_950)
                    Mask(80, 0, stor[uint256(stor[_1108].field_0) + sha3(_1108)].field_16) = 0
                    address(stor[uint256(stor[_1108].field_0) + sha3(_1108)].field_96) = arg1
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = uint16(_950)
                    mem[mem[64] + 64] = uint256(sub_267ed2b0)
                    emit TokenStaked(address(arg1), _950 << 240, uint256(sub_267ed2b0));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if tx.origin == arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= mem[96]:
                    revert with 0, 50
                if msg.sender == stor2:
                    if mem[(32 * idx) + 158 len 2] != 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(stor2)
                        staticcall stor2.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _798 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_798] == bool(mem[_798])
                        require mem[_798 + 32] == mem[_798 + 63 len 1]
                        require mem[_798 + 64] == mem[_798 + 95 len 1]
                        require mem[_798 + 96] == mem[_798 + 127 len 1]
                        require mem[_798 + 128] == mem[_798 + 159 len 1]
                        require mem[_798 + 160] == mem[_798 + 191 len 1]
                        require mem[_798 + 192] == mem[_798 + 223 len 1]
                        require mem[_798 + 224] == mem[_798 + 255 len 1]
                        require mem[_798 + 256] == mem[_798 + 287 len 1]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[_798]:
                            _889 = mem[(32 * idx) + 128]
                            if stor0:
                                revert with 0, 'Pausable: paused'
                            if sub_608f4f09 >= sub_dda4c63d:
                                _909 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_909] = mem[(32 * idx) + 158 len 2]
                                mem[_909 + 32] = Mask(80, 0, block.timestamp)
                                mem[_909 + 64] = arg1
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
                                _1001 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1001] = mem[(32 * idx) + 158 len 2]
                                mem[_1001 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1001 + 64] = arg1
                            mem[0] = uint16(_889)
                            mem[32] = 4
                            uint16(barn[_889 << 240].field_0) = uint16(_889)
                            Mask(80, 0, barn[_889 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_889 << 240].field_96) = arg1
                            if sub_788df81b > -2:
                                revert with 0, 17
                            sub_788df81b++
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = uint16(_889)
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(arg1), _889 << 240, block.timestamp);
                        else:
                            _888 = mem[(32 * idx) + 128]
                            require ext_code.size(stor2)
                            staticcall stor2.0xe05c57bf with:
                                    gas gas_remaining wei
                                   args (mem[(32 * idx) + 128] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _922 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_922] == bool(mem[_922])
                            require mem[_922 + 32] == mem[_922 + 63 len 1]
                            require mem[_922 + 64] == mem[_922 + 95 len 1]
                            require mem[_922 + 96] == mem[_922 + 127 len 1]
                            require mem[_922 + 128] == mem[_922 + 159 len 1]
                            require mem[_922 + 160] == mem[_922 + 191 len 1]
                            require mem[_922 + 192] == mem[_922 + 223 len 1]
                            require mem[_922 + 224] == mem[_922 + 255 len 1]
                            require mem[_922 + 256] == mem[_922 + 287 len 1]
                            if 8 < mem[_922 + 287 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_922 + 287 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_922 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_922 + 287 len 1] + 8)
                            _1085 = sha3(mem[0], 5)
                            mem[0] = uint16(_888)
                            packIndices[_888 << 240] = uint256(stor[_1085].field_0)
                            mem[32] = 5
                            _1087 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1087] = uint16(_888)
                            mem[_1087 + 32] = Mask(80, 0, stor9)
                            mem[_1087 + 64] = arg1
                            uint256(stor[_1085].field_0)++
                            mem[0] = _1085
                            Mask(80, 0, stor[uint256(stor[_1085].field_0) + sha3(_1085)].field_0) = Mask(80, 0, stor9)
                            uint16(stor[uint256(stor[_1085].field_0) + sha3(_1085)].field_0) = uint16(_888)
                            Mask(80, 0, stor[uint256(stor[_1085].field_0) + sha3(_1085)].field_16) = 0
                            address(stor[uint256(stor[_1085].field_0) + sha3(_1085)].field_96) = arg1
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = uint16(_888)
                            mem[mem[64] + 64] = uint256(sub_267ed2b0)
                            emit TokenStaked(address(arg1), _888 << 240, uint256(sub_267ed2b0));
                else:
                    _773 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                    require ext_code.size(stor2)
                    staticcall stor2.0x6352211e with:
                            gas gas_remaining wei
                           args (_773 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_792] == mem[_792 + 12 len 20]
                    if mem[_792 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= mem[96]:
                        revert with 0, 50
                    _817 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = uint16(_817)
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(_817)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(stor2)
                    staticcall stor2.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_845] == bool(mem[_845])
                    require mem[_845 + 32] == mem[_845 + 63 len 1]
                    require mem[_845 + 64] == mem[_845 + 95 len 1]
                    require mem[_845 + 96] == mem[_845 + 127 len 1]
                    require mem[_845 + 128] == mem[_845 + 159 len 1]
                    require mem[_845 + 160] == mem[_845 + 191 len 1]
                    require mem[_845 + 192] == mem[_845 + 223 len 1]
                    require mem[_845 + 224] == mem[_845 + 255 len 1]
                    require mem[_845 + 256] == mem[_845 + 287 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_845]:
                        _954 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= sub_dda4c63d:
                            _974 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_974] = mem[(32 * idx) + 158 len 2]
                            mem[_974 + 32] = Mask(80, 0, block.timestamp)
                            mem[_974 + 64] = arg1
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
                            _1052 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1052] = mem[(32 * idx) + 158 len 2]
                            mem[_1052 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1052 + 64] = arg1
                        mem[0] = uint16(_954)
                        mem[32] = 4
                        uint16(barn[_954 << 240].field_0) = uint16(_954)
                        Mask(80, 0, barn[_954 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_954 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_954)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _954 << 240, block.timestamp);
                    else:
                        _953 = mem[(32 * idx) + 128]
                        require ext_code.size(stor2)
                        staticcall stor2.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _987 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_987] == bool(mem[_987])
                        require mem[_987 + 32] == mem[_987 + 63 len 1]
                        require mem[_987 + 64] == mem[_987 + 95 len 1]
                        require mem[_987 + 96] == mem[_987 + 127 len 1]
                        require mem[_987 + 128] == mem[_987 + 159 len 1]
                        require mem[_987 + 160] == mem[_987 + 191 len 1]
                        require mem[_987 + 192] == mem[_987 + 223 len 1]
                        require mem[_987 + 224] == mem[_987 + 255 len 1]
                        require mem[_987 + 256] == mem[_987 + 287 len 1]
                        if 8 < mem[_987 + 287 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_987 + 287 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_987 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_987 + 287 len 1] + 8)
                        _1117 = sha3(mem[0], 5)
                        mem[0] = uint16(_953)
                        packIndices[_953 << 240] = uint256(stor[_1117].field_0)
                        mem[32] = 5
                        _1119 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1119] = uint16(_953)
                        mem[_1119 + 32] = Mask(80, 0, stor9)
                        mem[_1119 + 64] = arg1
                        uint256(stor[_1117].field_0)++
                        mem[0] = _1117
                        Mask(80, 0, stor[uint256(stor[_1117].field_0) + sha3(_1117)].field_0) = Mask(80, 0, stor9)
                        uint16(stor[uint256(stor[_1117].field_0) + sha3(_1117)].field_0) = uint16(_953)
                        Mask(80, 0, stor[uint256(stor[_1117].field_0) + sha3(_1117)].field_16) = 0
                        address(stor[uint256(stor[_1117].field_0) + sha3(_1117)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_953)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _953 << 240, uint256(sub_267ed2b0));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if stor2 != msg.sender:
                revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
            idx = 0
            while idx < arg2.length:
                if idx >= mem[96]:
                    revert with 0, 50
                if msg.sender == stor2:
                    if mem[(32 * idx) + 158 len 2] != 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(stor2)
                        staticcall stor2.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _800 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_800] == bool(mem[_800])
                        require mem[_800 + 32] == mem[_800 + 63 len 1]
                        require mem[_800 + 64] == mem[_800 + 95 len 1]
                        require mem[_800 + 96] == mem[_800 + 127 len 1]
                        require mem[_800 + 128] == mem[_800 + 159 len 1]
                        require mem[_800 + 160] == mem[_800 + 191 len 1]
                        require mem[_800 + 192] == mem[_800 + 223 len 1]
                        require mem[_800 + 224] == mem[_800 + 255 len 1]
                        require mem[_800 + 256] == mem[_800 + 287 len 1]
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[_800]:
                            _891 = mem[(32 * idx) + 128]
                            if stor0:
                                revert with 0, 'Pausable: paused'
                            if sub_608f4f09 >= sub_dda4c63d:
                                _914 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_914] = mem[(32 * idx) + 158 len 2]
                                mem[_914 + 32] = Mask(80, 0, block.timestamp)
                                mem[_914 + 64] = arg1
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
                                _1010 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1010] = mem[(32 * idx) + 158 len 2]
                                mem[_1010 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1010 + 64] = arg1
                            mem[0] = uint16(_891)
                            mem[32] = 4
                            uint16(barn[_891 << 240].field_0) = uint16(_891)
                            Mask(80, 0, barn[_891 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_891 << 240].field_96) = arg1
                            if sub_788df81b > -2:
                                revert with 0, 17
                            sub_788df81b++
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = uint16(_891)
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(arg1), _891 << 240, block.timestamp);
                        else:
                            _890 = mem[(32 * idx) + 128]
                            require ext_code.size(stor2)
                            staticcall stor2.0xe05c57bf with:
                                    gas gas_remaining wei
                                   args (mem[(32 * idx) + 128] << 240)
                            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _925 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 288
                            require mem[_925] == bool(mem[_925])
                            require mem[_925 + 32] == mem[_925 + 63 len 1]
                            require mem[_925 + 64] == mem[_925 + 95 len 1]
                            require mem[_925 + 96] == mem[_925 + 127 len 1]
                            require mem[_925 + 128] == mem[_925 + 159 len 1]
                            require mem[_925 + 160] == mem[_925 + 191 len 1]
                            require mem[_925 + 192] == mem[_925 + 223 len 1]
                            require mem[_925 + 224] == mem[_925 + 255 len 1]
                            require mem[_925 + 256] == mem[_925 + 287 len 1]
                            if 8 < mem[_925 + 287 len 1]:
                                revert with 0, 17
                            if totalAlphaStaked > !uint8(-mem[_925 + 287 len 1] + 8):
                                revert with 0, 17
                            totalAlphaStaked += uint8(-mem[_925 + 287 len 1] + 8)
                            mem[0] = uint8(-mem[_925 + 287 len 1] + 8)
                            _1095 = sha3(mem[0], 5)
                            mem[0] = uint16(_890)
                            packIndices[_890 << 240] = uint256(stor[_1095].field_0)
                            mem[32] = 5
                            _1097 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1097] = uint16(_890)
                            mem[_1097 + 32] = Mask(80, 0, stor9)
                            mem[_1097 + 64] = arg1
                            uint256(stor[_1095].field_0)++
                            mem[0] = _1095
                            Mask(80, 0, stor[uint256(stor[_1095].field_0) + sha3(_1095)].field_0) = Mask(80, 0, stor9)
                            uint16(stor[uint256(stor[_1095].field_0) + sha3(_1095)].field_0) = uint16(_890)
                            Mask(80, 0, stor[uint256(stor[_1095].field_0) + sha3(_1095)].field_16) = 0
                            address(stor[uint256(stor[_1095].field_0) + sha3(_1095)].field_96) = arg1
                            mem[mem[64]] = arg1
                            mem[mem[64] + 32] = uint16(_890)
                            mem[mem[64] + 64] = uint256(sub_267ed2b0)
                            emit TokenStaked(address(arg1), _890 << 240, uint256(sub_267ed2b0));
                else:
                    _776 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                    require ext_code.size(stor2)
                    staticcall stor2.0x6352211e with:
                            gas gas_remaining wei
                           args (_776 << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _795 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_795] == mem[_795 + 12 len 20]
                    if mem[_795 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= mem[96]:
                        revert with 0, 50
                    _822 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = uint16(_822)
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(_822)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(stor2)
                    staticcall stor2.0xe05c57bf with:
                            gas gas_remaining wei
                           args (mem[(32 * idx) + 128] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    require mem[_846] == bool(mem[_846])
                    require mem[_846 + 32] == mem[_846 + 63 len 1]
                    require mem[_846 + 64] == mem[_846 + 95 len 1]
                    require mem[_846 + 96] == mem[_846 + 127 len 1]
                    require mem[_846 + 128] == mem[_846 + 159 len 1]
                    require mem[_846 + 160] == mem[_846 + 191 len 1]
                    require mem[_846 + 192] == mem[_846 + 223 len 1]
                    require mem[_846 + 224] == mem[_846 + 255 len 1]
                    require mem[_846 + 256] == mem[_846 + 287 len 1]
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[_846]:
                        _957 = mem[(32 * idx) + 128]
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        if sub_608f4f09 >= sub_dda4c63d:
                            _980 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_980] = mem[(32 * idx) + 158 len 2]
                            mem[_980 + 32] = Mask(80, 0, block.timestamp)
                            mem[_980 + 64] = arg1
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
                            _1058 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1058] = mem[(32 * idx) + 158 len 2]
                            mem[_1058 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1058 + 64] = arg1
                        mem[0] = uint16(_957)
                        mem[32] = 4
                        uint16(barn[_957 << 240].field_0) = uint16(_957)
                        Mask(80, 0, barn[_957 << 240].field_16) = Mask(80, 0, block.timestamp)
                        address(barn[_957 << 240].field_96) = arg1
                        if sub_788df81b > -2:
                            revert with 0, 17
                        sub_788df81b++
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_957)
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(arg1), _957 << 240, block.timestamp);
                    else:
                        _956 = mem[(32 * idx) + 128]
                        require ext_code.size(stor2)
                        staticcall stor2.0xe05c57bf with:
                                gas gas_remaining wei
                               args (mem[(32 * idx) + 128] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        require mem[_989] == bool(mem[_989])
                        require mem[_989 + 32] == mem[_989 + 63 len 1]
                        require mem[_989 + 64] == mem[_989 + 95 len 1]
                        require mem[_989 + 96] == mem[_989 + 127 len 1]
                        require mem[_989 + 128] == mem[_989 + 159 len 1]
                        require mem[_989 + 160] == mem[_989 + 191 len 1]
                        require mem[_989 + 192] == mem[_989 + 223 len 1]
                        require mem[_989 + 224] == mem[_989 + 255 len 1]
                        require mem[_989 + 256] == mem[_989 + 287 len 1]
                        if 8 < mem[_989 + 287 len 1]:
                            revert with 0, 17
                        if totalAlphaStaked > !uint8(-mem[_989 + 287 len 1] + 8):
                            revert with 0, 17
                        totalAlphaStaked += uint8(-mem[_989 + 287 len 1] + 8)
                        mem[0] = uint8(-mem[_989 + 287 len 1] + 8)
                        _1126 = sha3(mem[0], 5)
                        mem[0] = uint16(_956)
                        packIndices[_956 << 240] = uint256(stor[_1126].field_0)
                        mem[32] = 5
                        _1128 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1128] = uint16(_956)
                        mem[_1128 + 32] = Mask(80, 0, stor9)
                        mem[_1128 + 64] = arg1
                        uint256(stor[_1126].field_0)++
                        mem[0] = _1126
                        Mask(80, 0, stor[uint256(stor[_1126].field_0) + sha3(_1126)].field_0) = Mask(80, 0, stor9)
                        uint16(stor[uint256(stor[_1126].field_0) + sha3(_1126)].field_0) = uint16(_956)
                        Mask(80, 0, stor[uint256(stor[_1126].field_0) + sha3(_1126)].field_16) = 0
                        address(stor[uint256(stor[_1126].field_0) + sha3(_1126)].field_96) = arg1
                        mem[mem[64]] = arg1
                        mem[mem[64] + 32] = uint16(_956)
                        mem[mem[64] + 64] = uint256(sub_267ed2b0)
                        emit TokenStaked(address(arg1), _956 << 240, uint256(sub_267ed2b0));
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
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
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
    if sub_608f4f09 >= sub_dda4c63d:
        if arg1.length and sub_b719ac8c > -1 / arg1.length:
            revert with 0, 17
        if msg.value < arg1.length * sub_b719ac8c:
            revert with 0, 'you didnt pay tax'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor2)
            staticcall stor2.0xe05c57bf with:
                    gas gas_remaining wei
                   args (mem[(32 * idx) + 128] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_1166] == bool(mem[_1166])
            require mem[_1166 + 32] == mem[_1166 + 63 len 1]
            require mem[_1166 + 64] == mem[_1166 + 95 len 1]
            require mem[_1166 + 96] == mem[_1166 + 127 len 1]
            require mem[_1166 + 128] == mem[_1166 + 159 len 1]
            require mem[_1166 + 160] == mem[_1166 + 191 len 1]
            require mem[_1166 + 192] == mem[_1166 + 223 len 1]
            require mem[_1166 + 224] == mem[_1166 + 255 len 1]
            require mem[_1166 + 256] == mem[_1166 + 287 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_1166]:
                _1191 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 158 len 2]
                mem[32] = 4
                _1196 = sha3(mem[(32 * idx) + 158 len 2], 4)
                _1197 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1197] = uint16(barn[mem[(32 * idx) + 158 len 2]].field_0)
                mem[_1197 + 32] = Mask(80, 0, stor[_1196].field_16)
                mem[_1197 + 64] = address(stor[_1196].field_96)
                if address(stor[_1196].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if sub_608f4f09 < sub_dda4c63d:
                        if block.timestamp < Mask(80, 0, stor[_1196].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1196].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1196].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1461 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1461] = uint16(_1191)
                                mem[_1461 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1461 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1560 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1560] = uint16(_1191)
                                mem[_1560 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1560 + 64] = msg.sender
                            mem[0] = uint16(_1191)
                            mem[32] = 4
                            uint16(barn[_1191 << 240].field_0) = uint16(_1191)
                            Mask(80, 0, barn[_1191 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1191 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1191)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1191 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1266 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1191)
                            _1267 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1267 + 32 len mem[_1267]])) != 1:
                                mem[_1266 + 216] = uint16(_1191)
                                mem[_1266 + 248] = 128
                                mem[_1266 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1191 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint256(barn[_1191 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1266 + 148] = uint16(_1191)
                                mem[_1266 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                mem[_1266 + 212] = arg2
                                emit 0xbc7f0bcc: _1191 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1266 + 216] = uint16(_1191)
                                mem[_1266 + 248] = 128
                                mem[_1266 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1191 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint256(barn[_1191 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1266 + 148] = uint16(_1191)
                                mem[_1266 + 180] = 0
                                mem[_1266 + 212] = arg2
                                emit 0xbc7f0bcc: _1191 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1196].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1346 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1346] = uint16(_1191)
                                    mem[_1346 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1346 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1426 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1426] = uint16(_1191)
                                    mem[_1426 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1426 + 64] = msg.sender
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint16(barn[_1191 << 240].field_0) = uint16(_1191)
                                Mask(80, 0, barn[_1191 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1191 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1191)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1236 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1191)
                                _1237 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1237 + 32 len mem[_1237]])):
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
                                mem[_1236 + 216] = uint16(_1191)
                                mem[_1236 + 248] = 128
                                mem[_1236 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1191 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint256(barn[_1191 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1236 + 148] = uint16(_1191)
                                mem[_1236 + 180] = 0
                                mem[_1236 + 212] = arg2
                            emit 0xbc7f0bcc: _1191 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1196].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1196].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1196].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1474 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1474] = uint16(_1191)
                                    mem[_1474 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1474 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1580 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1580] = uint16(_1191)
                                    mem[_1580 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1580 + 64] = msg.sender
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint16(barn[_1191 << 240].field_0) = uint16(_1191)
                                Mask(80, 0, barn[_1191 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1191 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1191)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1191 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1276 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1191)
                                _1277 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1277 + 32 len mem[_1277]])) != 1:
                                    mem[_1276 + 216] = uint16(_1191)
                                    mem[_1276 + 248] = 128
                                    mem[_1276 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1191 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1191)
                                    mem[32] = 4
                                    uint256(barn[_1191 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1276 + 148] = uint16(_1191)
                                    mem[_1276 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                    mem[_1276 + 212] = arg2
                                    emit 0xbc7f0bcc: _1191 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1276 + 216] = uint16(_1191)
                                    mem[_1276 + 248] = 128
                                    mem[_1276 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1191 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1191)
                                    mem[32] = 4
                                    uint256(barn[_1191 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1276 + 148] = uint16(_1191)
                                    mem[_1276 + 180] = 0
                                    mem[_1276 + 212] = arg2
                                    emit 0xbc7f0bcc: _1191 << 240, 0, arg2
                else:
                    if block.timestamp < Mask(80, 0, stor[_1196].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, stor[_1196].field_16) < 300:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S GEM'
                    if sub_608f4f09 < sub_dda4c63d:
                        if block.timestamp < Mask(80, 0, stor[_1196].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1196].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1196].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1534 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1534] = uint16(_1191)
                                mem[_1534 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1534 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1618 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1618] = uint16(_1191)
                                mem[_1618 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1618 + 64] = msg.sender
                            mem[0] = uint16(_1191)
                            mem[32] = 4
                            uint16(barn[_1191 << 240].field_0) = uint16(_1191)
                            Mask(80, 0, barn[_1191 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1191 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1191)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1191 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1301 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1191)
                            _1302 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1302 + 32 len mem[_1302]])) != 1:
                                mem[_1301 + 216] = uint16(_1191)
                                mem[_1301 + 248] = 128
                                mem[_1301 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1191 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint256(barn[_1191 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1301 + 148] = uint16(_1191)
                                mem[_1301 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                mem[_1301 + 212] = arg2
                                emit 0xbc7f0bcc: _1191 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1301 + 216] = uint16(_1191)
                                mem[_1301 + 248] = 128
                                mem[_1301 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1191 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint256(barn[_1191 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1301 + 148] = uint16(_1191)
                                mem[_1301 + 180] = 0
                                mem[_1301 + 212] = arg2
                                emit 0xbc7f0bcc: _1191 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1196].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1397 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1397] = uint16(_1191)
                                    mem[_1397 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1397 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1499 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1499] = uint16(_1191)
                                    mem[_1499 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1499 + 64] = msg.sender
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint16(barn[_1191 << 240].field_0) = uint16(_1191)
                                Mask(80, 0, barn[_1191 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1191 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1191)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1251 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1191)
                                _1252 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1252 + 32 len mem[_1252]])):
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
                                mem[_1251 + 216] = uint16(_1191)
                                mem[_1251 + 248] = 128
                                mem[_1251 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1191 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint256(barn[_1191 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1251 + 148] = uint16(_1191)
                                mem[_1251 + 180] = 0
                                mem[_1251 + 212] = arg2
                            emit 0xbc7f0bcc: _1191 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1196].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1196].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1196].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1544 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1544] = uint16(_1191)
                                    mem[_1544 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1544 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1628 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1628] = uint16(_1191)
                                    mem[_1628 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1628 + 64] = msg.sender
                                mem[0] = uint16(_1191)
                                mem[32] = 4
                                uint16(barn[_1191 << 240].field_0) = uint16(_1191)
                                Mask(80, 0, barn[_1191 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1191 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1191)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1191 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1313 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1191)
                                _1314 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1314 + 32 len mem[_1314]])) != 1:
                                    mem[_1313 + 216] = uint16(_1191)
                                    mem[_1313 + 248] = 128
                                    mem[_1313 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1191 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1191)
                                    mem[32] = 4
                                    uint256(barn[_1191 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1313 + 148] = uint16(_1191)
                                    mem[_1313 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                    mem[_1313 + 212] = arg2
                                    emit 0xbc7f0bcc: _1191 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1196].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1313 + 216] = uint16(_1191)
                                    mem[_1313 + 248] = 128
                                    mem[_1313 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1191 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1191)
                                    mem[32] = 4
                                    uint256(barn[_1191 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1313 + 148] = uint16(_1191)
                                    mem[_1313 + 180] = 0
                                    mem[_1313 + 212] = arg2
                                    emit 0xbc7f0bcc: _1191 << 240, 0, arg2
            else:
                _1190 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor2)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_1190 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1204] == mem[_1204 + 12 len 20]
                if mem[_1204 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor2)
                staticcall stor2.0xe05c57bf with:
                        gas gas_remaining wei
                       args (_1190 << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_1244] == bool(mem[_1244])
                require mem[_1244 + 32] == mem[_1244 + 63 len 1]
                require mem[_1244 + 64] == mem[_1244 + 95 len 1]
                require mem[_1244 + 96] == mem[_1244 + 127 len 1]
                require mem[_1244 + 128] == mem[_1244 + 159 len 1]
                require mem[_1244 + 160] == mem[_1244 + 191 len 1]
                require mem[_1244 + 192] == mem[_1244 + 223 len 1]
                require mem[_1244 + 224] == mem[_1244 + 255 len 1]
                _1514 = mem[_1244 + 256]
                require mem[_1244 + 256] == mem[_1244 + 287 len 1]
                if 8 < mem[_1244 + 287 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1244 + 287 len 1] + 8)
                _1616 = sha3(mem[0], 5)
                mem[32] = 6
                if packIndices[_1190 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1627 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1627] = uint16(stor[sha3(_1616) + stor6[_1190 << 240]].field_0)
                mem[_1627 + 32] = Mask(80, 0, stor[sha3(_1616) + stor6[_1190 << 240]].field_16)
                mem[_1627 + 64] = address(stor[sha3(_1616) + stor6[_1190 << 240]].field_96)
                if address(stor[sha3(_1616) + stor6[_1190 << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_267ed2b0) < Mask(80, 0, stor[sha3(_1616) + stor6[_1190 << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1514) + 8) and uint256(sub_267ed2b0) - Mask(80, 0, stor[sha3(_1616) + stor6[_1190 << 240]].field_16) > -1 / uint8(-uint8(_1514) + 8):
                    revert with 0, 17
                if not arg2:
                    _1666 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1666] = uint16(_1190)
                    mem[_1666 + 32] = Mask(80, 0, stor9)
                    mem[_1666 + 64] = msg.sender
                    mem[32] = 6
                    if packIndices[_1190 << 240] >= uint256(pack[-uint8(_1514) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1514) + 8 << 248, 5)
                    uint16(pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_0) = uint16(_1190)
                    Mask(80, 0, pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_0) = Mask(80, 0, stor9)
                    uint16(pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_80) = 0
                    address(pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1514) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1514) + 8)
                    mem[mem[64] + 68] = uint16(_1190)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor2)
                    call stor2.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1190 << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 5
                    if uint256(pack[-uint8(_1514) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1514) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1514) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1514) + 8 << 248, 5)
                    _1691 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1691] = uint16(pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0)
                    mem[_1691 + 32] = Mask(80, 0, pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0)
                    mem[_1691 + 64] = address(pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0)
                    if packIndices[_1190 << 240] >= uint256(pack[-uint8(_1514) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_0) = uint16(pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_16) = Mask(80, 0, pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1514) + 8 << 248][stor6[_1190 << 240]].field_96) = address(pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor5[-uint8(_1514) + 8 << 248][uint256(stor5[-uint8(_1514) + 8 << 248].field_0)].field_0)] = packIndices[_1190 << 240]
                    if not uint256(pack[-uint8(_1514) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1514) + 8 << 248][uint256(pack[-uint8(_1514) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1514) + 8 << 248].field_0)--
                    mem[0] = uint16(_1190)
                    mem[32] = 6
                    packIndices[_1190 << 240] = 0
                mem[mem[64]] = uint16(_1190)
                mem[mem[64] + 32] = (uint256(sub_267ed2b0) * uint8(-uint8(_1514) + 8)) - (Mask(80, 0, stor[sha3(_1616) + stor6[_1190 << 240]].field_16) * uint8(-uint8(_1514) + 8))
                mem[mem[64] + 64] = arg2
                emit 0xab26c19b: _1190 << 240, (uint256(sub_267ed2b0) * uint8(-uint8(_1514) + 8)) - (Mask(80, 0, stor[sha3(_1616) + stor6[_1190 << 240]].field_16) * uint8(-uint8(_1514) + 8)), arg2
                if 0 > !((uint256(sub_267ed2b0) * uint8(-uint8(_1514) + 8)) - (Mask(80, 0, stor[sha3(_1616) + stor6[_1190 << 240]].field_16) * uint8(-uint8(_1514) + 8))):
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
        if arg1.length and sub_b719ac8c > -1 / arg1.length:
            revert with 0, 17
        if msg.value < arg1.length * sub_b719ac8c:
            revert with 0, 'you didnt pay tax'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(stor2)
            staticcall stor2.0xe05c57bf with:
                    gas gas_remaining wei
                   args (mem[(32 * idx) + 128] << 240)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_1167] == bool(mem[_1167])
            require mem[_1167 + 32] == mem[_1167 + 63 len 1]
            require mem[_1167 + 64] == mem[_1167 + 95 len 1]
            require mem[_1167 + 96] == mem[_1167 + 127 len 1]
            require mem[_1167 + 128] == mem[_1167 + 159 len 1]
            require mem[_1167 + 160] == mem[_1167 + 191 len 1]
            require mem[_1167 + 192] == mem[_1167 + 223 len 1]
            require mem[_1167 + 224] == mem[_1167 + 255 len 1]
            require mem[_1167 + 256] == mem[_1167 + 287 len 1]
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_1167]:
                _1193 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 158 len 2]
                mem[32] = 4
                _1200 = sha3(mem[(32 * idx) + 158 len 2], 4)
                _1201 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1201] = uint16(barn[mem[(32 * idx) + 158 len 2]].field_0)
                mem[_1201 + 32] = Mask(80, 0, stor[_1200].field_16)
                mem[_1201 + 64] = address(stor[_1200].field_96)
                if address(stor[_1200].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not arg2:
                    if sub_608f4f09 < sub_dda4c63d:
                        if block.timestamp < Mask(80, 0, stor[_1200].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1200].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1200].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1469 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1469] = uint16(_1193)
                                mem[_1469 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1469 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1570 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1570] = uint16(_1193)
                                mem[_1570 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1570 + 64] = msg.sender
                            mem[0] = uint16(_1193)
                            mem[32] = 4
                            uint16(barn[_1193 << 240].field_0) = uint16(_1193)
                            Mask(80, 0, barn[_1193 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1193 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1193)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1193 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1271 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1193)
                            _1272 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1272 + 32 len mem[_1272]])) != 1:
                                mem[_1271 + 216] = uint16(_1193)
                                mem[_1271 + 248] = 128
                                mem[_1271 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1193 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint256(barn[_1193 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1271 + 148] = uint16(_1193)
                                mem[_1271 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                mem[_1271 + 212] = arg2
                                emit 0xbc7f0bcc: _1193 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1271 + 216] = uint16(_1193)
                                mem[_1271 + 248] = 128
                                mem[_1271 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1193 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint256(barn[_1193 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1271 + 148] = uint16(_1193)
                                mem[_1271 + 180] = 0
                                mem[_1271 + 212] = arg2
                                emit 0xbc7f0bcc: _1193 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1200].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1353 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1353] = uint16(_1193)
                                    mem[_1353 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1353 + 64] = msg.sender
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
                                    mem[_1436] = uint16(_1193)
                                    mem[_1436 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1436 + 64] = msg.sender
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint16(barn[_1193 << 240].field_0) = uint16(_1193)
                                Mask(80, 0, barn[_1193 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1193 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1193)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1240 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1193)
                                _1241 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1241 + 32 len mem[_1241]])):
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
                                mem[_1240 + 216] = uint16(_1193)
                                mem[_1240 + 248] = 128
                                mem[_1240 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1193 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint256(barn[_1193 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1240 + 148] = uint16(_1193)
                                mem[_1240 + 180] = 0
                                mem[_1240 + 212] = arg2
                            emit 0xbc7f0bcc: _1193 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1200].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1200].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1200].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1483 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1483] = uint16(_1193)
                                    mem[_1483 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1483 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1590 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1590] = uint16(_1193)
                                    mem[_1590 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1590 + 64] = msg.sender
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint16(barn[_1193 << 240].field_0) = uint16(_1193)
                                Mask(80, 0, barn[_1193 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1193 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1193)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1193 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1281 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1193)
                                _1282 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1282 + 32 len mem[_1282]])) != 1:
                                    mem[_1281 + 216] = uint16(_1193)
                                    mem[_1281 + 248] = 128
                                    mem[_1281 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1193 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1193)
                                    mem[32] = 4
                                    uint256(barn[_1193 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1281 + 148] = uint16(_1193)
                                    mem[_1281 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                    mem[_1281 + 212] = arg2
                                    emit 0xbc7f0bcc: _1193 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1281 + 216] = uint16(_1193)
                                    mem[_1281 + 248] = 128
                                    mem[_1281 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1193 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1193)
                                    mem[32] = 4
                                    uint256(barn[_1193 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1281 + 148] = uint16(_1193)
                                    mem[_1281 + 180] = 0
                                    mem[_1281 + 212] = arg2
                                    emit 0xbc7f0bcc: _1193 << 240, 0, arg2
                else:
                    if block.timestamp < Mask(80, 0, stor[_1200].field_16):
                        revert with 0, 17
                    if block.timestamp - Mask(80, 0, stor[_1200].field_16) < 300:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S GEM'
                    if sub_608f4f09 < sub_dda4c63d:
                        if block.timestamp < Mask(80, 0, stor[_1200].field_16):
                            revert with 0, 17
                        if block.timestamp - Mask(80, 0, stor[_1200].field_16) and 10000 * 10^18 > -1 / block.timestamp - Mask(80, 0, stor[_1200].field_16):
                            revert with 0, 17
                        if not arg2:
                            if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                revert with 0, 17
                            if not totalAlphaStaked:
                                if unaccountedRewards > !(20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1540 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1540] = uint16(_1193)
                                mem[_1540 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1540 + 64] = msg.sender
                            else:
                                if 20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    revert with 0, 18
                                if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                    revert with 0, 17
                                uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                unaccountedRewards = 0
                                if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                _1623 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1623] = uint16(_1193)
                                mem[_1623 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1623 + 64] = msg.sender
                            mem[0] = uint16(_1193)
                            mem[32] = 4
                            uint16(barn[_1193 << 240].field_0) = uint16(_1193)
                            Mask(80, 0, barn[_1193 << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[_1193 << 240].field_96) = msg.sender
                            mem[mem[64]] = uint16(_1193)
                            mem[mem[64] + 32] = 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                            mem[mem[64] + 64] = arg2
                            emit 0xbc7f0bcc: _1193 << 240, 80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100, arg2
                            if 0 > !(80 * (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            if block.number < 1:
                                revert with 0, 17
                            _1306 = mem[64]
                            mem[mem[64] + 32] = address(msg.sender)
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(_1193)
                            _1307 = mem[64]
                            mem[mem[64]] = 116
                            mem[64] = mem[64] + 148
                            if bool(sha3(mem[_1307 + 32 len mem[_1307]])) != 1:
                                mem[_1306 + 216] = uint16(_1193)
                                mem[_1306 + 248] = 128
                                mem[_1306 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1193 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint256(barn[_1193 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1306 + 148] = uint16(_1193)
                                mem[_1306 + 180] = (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                mem[_1306 + 212] = arg2
                                emit 0xbc7f0bcc: _1193 << 240, (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600, arg2
                                if 0 > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                else:
                                    if (10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += ((10000 * 10^18 * block.timestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                mem[_1306 + 216] = uint16(_1193)
                                mem[_1306 + 248] = 128
                                mem[_1306 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1193 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint256(barn[_1193 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1306 + 148] = uint16(_1193)
                                mem[_1306 + 180] = 0
                                mem[_1306 + 212] = arg2
                                emit 0xbc7f0bcc: _1193 << 240, 0, arg2
                    else:
                        if Mask(80, 0, stor[_1200].field_16) > lastClaimTimestamp:
                            if not arg2:
                                if not totalAlphaStaked:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _1403 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1403] = uint16(_1193)
                                    mem[_1403 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1403 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !(unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    _1510 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1510] = uint16(_1193)
                                    mem[_1510 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1510 + 64] = msg.sender
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint16(barn[_1193 << 240].field_0) = uint16(_1193)
                                Mask(80, 0, barn[_1193 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1193 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1193)
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = arg2
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1256 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1193)
                                _1257 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if 1 == bool(sha3(mem[_1257 + 32 len mem[_1257]])):
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
                                mem[_1256 + 216] = uint16(_1193)
                                mem[_1256 + 248] = 128
                                mem[_1256 + 280] = 0
                                require ext_code.size(stor2)
                                call stor2.0xb88d4fde with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _1193 << 240, 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint256(barn[_1193 << 240].field_0) = 0
                                if sub_788df81b < 1:
                                    revert with 0, 17
                                sub_788df81b--
                                mem[_1256 + 148] = uint16(_1193)
                                mem[_1256 + 180] = 0
                                mem[_1256 + 212] = arg2
                            emit 0xbc7f0bcc: _1193 << 240, 0, arg2
                        else:
                            if lastClaimTimestamp < Mask(80, 0, stor[_1200].field_16):
                                revert with 0, 17
                            if lastClaimTimestamp - Mask(80, 0, stor[_1200].field_16) and 10000 * 10^18 > -1 / lastClaimTimestamp - Mask(80, 0, stor[_1200].field_16):
                                revert with 0, 17
                            if not arg2:
                                if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 20 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                    revert with 0, 17
                                if not totalAlphaStaked:
                                    if unaccountedRewards > !(20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1552 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1552] = uint16(_1193)
                                    mem[_1552 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1552 + 64] = msg.sender
                                else:
                                    if 20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not totalAlphaStaked:
                                        revert with 0, 18
                                    if uint256(sub_267ed2b0) > !((20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked):
                                        revert with 0, 17
                                    uint256(sub_267ed2b0) += (20 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100) + unaccountedRewards / totalAlphaStaked
                                    unaccountedRewards = 0
                                    if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 and 80 > -1 / (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600:
                                        revert with 0, 17
                                    _1637 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1637] = uint16(_1193)
                                    mem[_1637 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1637 + 64] = msg.sender
                                mem[0] = uint16(_1193)
                                mem[32] = 4
                                uint16(barn[_1193 << 240].field_0) = uint16(_1193)
                                Mask(80, 0, barn[_1193 << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[_1193 << 240].field_96) = msg.sender
                                mem[mem[64]] = uint16(_1193)
                                mem[mem[64] + 32] = 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100
                                mem[mem[64] + 64] = arg2
                                emit 0xbc7f0bcc: _1193 << 240, 80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100, arg2
                                if 0 > !(80 * (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                if block.number < 1:
                                    revert with 0, 17
                                _1321 = mem[64]
                                mem[mem[64] + 32] = address(msg.sender)
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(_1193)
                                _1322 = mem[64]
                                mem[mem[64]] = 116
                                mem[64] = mem[64] + 148
                                if bool(sha3(mem[_1322 + 32 len mem[_1322]])) != 1:
                                    mem[_1321 + 216] = uint16(_1193)
                                    mem[_1321 + 248] = 128
                                    mem[_1321 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1193 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1193)
                                    mem[32] = 4
                                    uint256(barn[_1193 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1321 + 148] = uint16(_1193)
                                    mem[_1321 + 180] = (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                    mem[_1321 + 212] = arg2
                                    emit 0xbc7f0bcc: _1193 << 240, (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600, arg2
                                    if 0 > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not totalAlphaStaked:
                                        if unaccountedRewards > !((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600
                                    else:
                                        if (10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not totalAlphaStaked:
                                            revert with 0, 18
                                        if uint256(sub_267ed2b0) > !(((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked):
                                            revert with 0, 17
                                        uint256(sub_267ed2b0) += ((10000 * 10^18 * lastClaimTimestamp) - (10000 * 10^18 * Mask(80, 0, stor[_1200].field_16)) / 24 * 3600) + unaccountedRewards / totalAlphaStaked
                                        unaccountedRewards = 0
                                    mem[_1321 + 216] = uint16(_1193)
                                    mem[_1321 + 248] = 128
                                    mem[_1321 + 280] = 0
                                    require ext_code.size(stor2)
                                    call stor2.0xb88d4fde with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _1193 << 240, 128, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(_1193)
                                    mem[32] = 4
                                    uint256(barn[_1193 << 240].field_0) = 0
                                    if sub_788df81b < 1:
                                        revert with 0, 17
                                    sub_788df81b--
                                    mem[_1321 + 148] = uint16(_1193)
                                    mem[_1321 + 180] = 0
                                    mem[_1321 + 212] = arg2
                                    emit 0xbc7f0bcc: _1193 << 240, 0, arg2
            else:
                _1192 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 158 len 2]
                require ext_code.size(stor2)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (_1192 << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1206] == mem[_1206 + 12 len 20]
                if mem[_1206 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                require ext_code.size(stor2)
                staticcall stor2.0xe05c57bf with:
                        gas gas_remaining wei
                       args (_1192 << 240)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_1245] == bool(mem[_1245])
                require mem[_1245 + 32] == mem[_1245 + 63 len 1]
                require mem[_1245 + 64] == mem[_1245 + 95 len 1]
                require mem[_1245 + 96] == mem[_1245 + 127 len 1]
                require mem[_1245 + 128] == mem[_1245 + 159 len 1]
                require mem[_1245 + 160] == mem[_1245 + 191 len 1]
                require mem[_1245 + 192] == mem[_1245 + 223 len 1]
                require mem[_1245 + 224] == mem[_1245 + 255 len 1]
                _1523 = mem[_1245 + 256]
                require mem[_1245 + 256] == mem[_1245 + 287 len 1]
                if 8 < mem[_1245 + 287 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1245 + 287 len 1] + 8)
                _1621 = sha3(mem[0], 5)
                mem[32] = 6
                if packIndices[_1192 << 240] >= uint256(pack[mem[0]].field_0):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1636 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1636] = uint16(stor[sha3(_1621) + stor6[_1192 << 240]].field_0)
                mem[_1636 + 32] = Mask(80, 0, stor[sha3(_1621) + stor6[_1192 << 240]].field_16)
                mem[_1636 + 64] = address(stor[sha3(_1621) + stor6[_1192 << 240]].field_96)
                if address(stor[sha3(_1621) + stor6[_1192 << 240]].field_96) != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_267ed2b0) < Mask(80, 0, stor[sha3(_1621) + stor6[_1192 << 240]].field_16):
                    revert with 0, 17
                if uint8(-uint8(_1523) + 8) and uint256(sub_267ed2b0) - Mask(80, 0, stor[sha3(_1621) + stor6[_1192 << 240]].field_16) > -1 / uint8(-uint8(_1523) + 8):
                    revert with 0, 17
                if not arg2:
                    _1667 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1667] = uint16(_1192)
                    mem[_1667 + 32] = Mask(80, 0, stor9)
                    mem[_1667 + 64] = msg.sender
                    mem[32] = 6
                    if packIndices[_1192 << 240] >= uint256(pack[-uint8(_1523) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1523) + 8 << 248, 5)
                    uint16(pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_0) = uint16(_1192)
                    Mask(80, 0, pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_0) = Mask(80, 0, stor9)
                    uint16(pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_80) = 0
                    address(pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_96) = msg.sender
                else:
                    if totalAlphaStaked < uint8(-uint8(_1523) + 8):
                        revert with 0, 17
                    totalAlphaStaked -= uint8(-uint8(_1523) + 8)
                    mem[mem[64] + 68] = uint16(_1192)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor2)
                    call stor2.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1192 << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 5
                    if uint256(pack[-uint8(_1523) + 8 << 248].field_0) < 1:
                        revert with 0, 17
                    if uint256(pack[-uint8(_1523) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_1523) + 8 << 248].field_0):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_1523) + 8 << 248, 5)
                    _1695 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1695] = uint16(pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0)
                    mem[_1695 + 32] = Mask(80, 0, pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0)
                    mem[_1695 + 64] = address(pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0)
                    if packIndices[_1192 << 240] >= uint256(pack[-uint8(_1523) + 8 << 248].field_0):
                        revert with 0, 50
                    uint16(pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_0) = uint16(pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0)
                    Mask(80, 0, pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_16) = Mask(80, 0, pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0)
                    address(pack[-uint8(_1523) + 8 << 248][stor6[_1192 << 240]].field_96) = address(pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0)
                    packIndices[uint16(stor5[-uint8(_1523) + 8 << 248][uint256(stor5[-uint8(_1523) + 8 << 248].field_0)].field_0)] = packIndices[_1192 << 240]
                    if not uint256(pack[-uint8(_1523) + 8 << 248].field_0):
                        revert with 0, 49
                    uint256(pack[-uint8(_1523) + 8 << 248][uint256(pack[-uint8(_1523) + 8 << 248].field_0)].field_0) = 0
                    uint256(pack[-uint8(_1523) + 8 << 248].field_0)--
                    mem[0] = uint16(_1192)
                    mem[32] = 6
                    packIndices[_1192 << 240] = 0
                mem[mem[64]] = uint16(_1192)
                mem[mem[64] + 32] = (uint256(sub_267ed2b0) * uint8(-uint8(_1523) + 8)) - (Mask(80, 0, stor[sha3(_1621) + stor6[_1192 << 240]].field_16) * uint8(-uint8(_1523) + 8))
                mem[mem[64] + 64] = arg2
                emit 0xab26c19b: _1192 << 240, (uint256(sub_267ed2b0) * uint8(-uint8(_1523) + 8)) - (Mask(80, 0, stor[sha3(_1621) + stor6[_1192 << 240]].field_16) * uint8(-uint8(_1523) + 8)), arg2
                if 0 > !((uint256(sub_267ed2b0) * uint8(-uint8(_1523) + 8)) - (Mask(80, 0, stor[sha3(_1621) + stor6[_1192 << 240]].field_16) * uint8(-uint8(_1523) + 8))):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
