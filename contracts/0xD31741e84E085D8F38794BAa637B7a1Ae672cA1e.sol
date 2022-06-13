contract main {




// =====================  Runtime code  =====================


#
#  - claimManyFromBarnAndPack(uint16[] arg1, bool arg2)
#
const MAXIMUM_GLOBAL_MILK = 480000000 * 10^18

const MAX_ALPHA = 8

const MINIMUM_TO_EXIT = 2

const MILK_CLAIM_TAX_PERCENTAGE = 20

const MILK_UNSTAKE_TAX_PERCENTAGE = 30

const DAILY_MILK_RATE = 10000 * 10^18


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
address stor3;
mapping of struct barn;
mapping of struct sub_e287f92c;
array of struct pack;
mapping of uint256 packIndices;
uint256 totalAlphaStaked;
uint256 totalMilkrateStaked;
uint256 unaccountedRewards;
uint256 milkPerMilkRate;
uint128 stor12;
uint256 sub_c95a3ec2;
uint256 totalMilkEarned;
uint256 totalCowsStaked;
uint256 lastClaimTimestamp;
uint8 stor16;

function barn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return uint16(barn[arg1].field_0), Mask(80, 0, barn[arg1].field_0), address(barn[arg1].field_96)
}

function rescueEnabled() payable {
    return bool(stor16)
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

function totalCowsStaked() payable {
    return totalCowsStaked
}

function totalMilkEarned() payable {
    return totalMilkEarned
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function totalAlphaStaked() payable {
    return totalAlphaStaked
}

function owner() payable {
    return owner
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function sub_c95a3ec2(?) payable {
    return uint256(sub_c95a3ec2)
}

function totalMilkrateStaked() payable {
    return totalMilkrateStaked
}

function pack(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(pack[arg1].field_0)
    return uint16(pack[arg1][arg2].field_0), Mask(80, 0, pack[arg1][arg2].field_0), address(pack[arg1][arg2].field_96)
}

function sub_e287f92c(?) payable {
    require calldata.size - 4 >= 32
    return uint16(sub_e287f92c[arg1].field_0), Mask(80, 0, sub_e287f92c[arg1].field_0), address(sub_e287f92c[arg1].field_96)
}

function milkPerMilkRate() payable {
    return milkPerMilkRate
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

function sub_1083366a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    totalMilkEarned = arg1
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = uint8(arg1)
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

function isGolden(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x94e56847 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 288
    if not bool(ceil32(return_data.size) + 384 <= test266151307()):
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
    return bool(ext_call.return_data[0])
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor16:
        revert with 0, 'RESCUE DISABLED'
    require msg.sender == tx.origin
    mem[64] = 192
    idx = 0
    s = 0
    s = 96
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 4
        _14 = mem[64]
        mem[64] = mem[64] + 96
        mem[_14] = uint16(barn[cd[((32 * idx) + arg1 + 36)]].field_0)
        mem[_14 + 32] = Mask(80, 0, barn[cd[((32 * idx) + arg1 + 36)]].field_16)
        mem[_14 + 64] = address(barn[cd[((32 * idx) + arg1 + 36)]].field_96)
        if address(barn[cd[((32 * idx) + arg1 + 36)]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 4
        uint256(barn[cd[((32 * idx) + arg1 + 36)]].field_0) = 0
        if totalCowsStaked < 1:
            revert with 0, 17
        totalCowsStaked--
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
        emit 0xd85ec0f3: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = cd[((32 * idx) + arg1 + 36)]
        s = _14
        continue 
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
        _23 = mem[64]
        if mem[64] + 96 < mem[64] or mem[64] + 96 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 96
        require cd[s] == uint16(cd[s])
        mem[_23] = cd[s]
        require cd[(s + 32)] == Mask(80, 0, cd[(s + 32)])
        mem[_23 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_23 + 64] = cd[(s + 64)]
        mem[t] = _23
        s = s + 96
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _44 = mem[96]
    idx = 0
    while idx < _44:
        _45 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[96]:
            revert with 0, 50
        mem[_45] = mem[mem[(32 * idx) + 128] + 30 len 2]
        if idx >= mem[96]:
            revert with 0, 50
        mem[_45 + 32] = mem[mem[(32 * idx) + 128] + 54 len 10]
        if idx >= mem[96]:
            revert with 0, 50
        mem[_45 + 64] = mem[mem[(32 * idx) + 128] + 76 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 30 len 2]
        mem[32] = 5
        uint16(sub_e287f92c[mem[0]].field_0) = mem[_45 + 30 len 2]
        Mask(80, 0, sub_e287f92c[mem[0]].field_16) = mem[_45 + 54 len 10]
        address(sub_e287f92c[mem[0]].field_96) = mem[_45 + 76 len 20]
        if idx == -1:
            revert with 0, 17
        _44 = mem[96]
        idx = idx + 1
        continue 
}

function sub_7331403d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if stor0:
        revert with 0, 'Pausable: paused'
    require msg.sender == tx.origin
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(stor2)
        staticcall stor2.0x6352211e with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _61 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_61] == mem[_61 + 12 len 20]
        if mem[_61 + 12 len 20] != this.address:
            revert with 0, 'AINT A PART OF THE PACK'
        require ext_code.size(stor2)
        staticcall stor2.0x94e56847 with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _68 = mem[64]
        if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 256
        require mem[_67] == mem[_67 + 31 len 1]
        mem[_68] = mem[_67]
        require mem[_67 + 32] == mem[_67 + 63 len 1]
        mem[_68 + 32] = mem[_67 + 32]
        require mem[_67 + 64] == mem[_67 + 95 len 1]
        mem[_68 + 64] = mem[_67 + 64]
        require mem[_67 + 96] == mem[_67 + 127 len 1]
        mem[_68 + 96] = mem[_67 + 96]
        require mem[_67 + 128] == mem[_67 + 159 len 1]
        mem[_68 + 128] = mem[_67 + 128]
        require mem[_67 + 160] == mem[_67 + 191 len 1]
        mem[_68 + 160] = mem[_67 + 160]
        require mem[_67 + 192] == mem[_67 + 223 len 1]
        mem[_68 + 192] = mem[_67 + 192]
        require mem[_67 + 224] == mem[_67 + 255 len 1]
        mem[_68 + 224] = mem[_67 + 224]
        _77 = mem[_68 + 224]
        if 8 < mem[_68 + 255 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_68 + 255 len 1] + 8)
        _78 = sha3(mem[0], 6)
        mem[32] = 7
        if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[mem[0]].field_0):
            revert with 0, 50
        mem[0] = sha3(mem[0], 6)
        _81 = mem[64]
        mem[64] = mem[64] + 96
        mem[_81] = uint16(stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0)
        mem[_81 + 32] = Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16)
        mem[_81 + 64] = address(stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96)
        if address(stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if uint256(sub_c95a3ec2) < Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16):
            revert with 0, 17
        if uint8(-uint8(_77) + 8) and uint256(sub_c95a3ec2) - Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) > -1 / uint8(-uint8(_77) + 8):
            revert with 0, 17
        if not cd[36]:
            _85 = mem[64]
            mem[64] = mem[64] + 96
            mem[_85] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[_85 + 32] = Mask(80, 0, stor12)
            mem[_85 + 64] = msg.sender
            mem[32] = 7
            if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_77) + 8 << 248].field_0):
                revert with 0, 50
            mem[0] = sha3(-uint8(_77) + 8 << 248, 6)
            uint16(pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(cd[((32 * idx) + cd[4] + 36)])
            Mask(80, 0, pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = Mask(80, 0, stor12)
            uint16(pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_80) = 0
            address(pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = msg.sender
        else:
            if totalAlphaStaked < uint8(-uint8(_77) + 8):
                revert with 0, 17
            totalAlphaStaked -= uint8(-uint8(_77) + 8)
            mem[32] = 6
            if uint256(pack[-uint8(_77) + 8 << 248].field_0) < 1:
                revert with 0, 17
            if uint256(pack[-uint8(_77) + 8 << 248].field_0) - 1 >= uint256(pack[-uint8(_77) + 8 << 248].field_0):
                revert with 0, 50
            mem[0] = sha3(-uint8(_77) + 8 << 248, 6)
            _96 = mem[64]
            mem[64] = mem[64] + 96
            mem[_96] = uint16(pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0)
            mem[_96 + 32] = Mask(80, 0, pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0)
            mem[_96 + 64] = address(pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0)
            if packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] >= uint256(pack[-uint8(_77) + 8 << 248].field_0):
                revert with 0, 50
            uint16(pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_0) = uint16(pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0)
            Mask(80, 0, pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) = Mask(80, 0, pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0)
            address(pack[-uint8(_77) + 8 << 248][stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_96) = address(pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0)
            packIndices[uint16(stor6[-uint8(_77) + 8 << 248][uint256(stor6[-uint8(_77) + 8 << 248].field_0)].field_0)] = packIndices[cd[((32 * idx) + cd[4] + 36)] << 240]
            if not uint256(pack[-uint8(_77) + 8 << 248].field_0):
                revert with 0, 49
            uint256(pack[-uint8(_77) + 8 << 248][uint256(pack[-uint8(_77) + 8 << 248].field_0)].field_0) = 0
            uint256(pack[-uint8(_77) + 8 << 248].field_0)--
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 7
            packIndices[cd[((32 * idx) + cd[4] + 36)] << 240] = 0
            mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            require ext_code.size(stor2)
            call stor2.0xb88d4fde with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 32] = (uint256(sub_c95a3ec2) * uint8(-uint8(_77) + 8)) - (Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_77) + 8))
        mem[mem[64] + 64] = bool(cd[36])
        emit 0x3890c6a6: cd[((32 * idx) + cd[4] + 36)] << 240, (uint256(sub_c95a3ec2) * uint8(-uint8(_77) + 8)) - (Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_77) + 8)), bool(cd[36])
        if s > !((uint256(sub_c95a3ec2) * uint8(-uint8(_77) + 8)) - (Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_77) + 8))):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (uint256(sub_c95a3ec2) * uint8(-uint8(_77) + 8)) - (Mask(80, 0, stor[sha3(_78) + stor7[cd[((32 * idx) + cd[4] + 36)] << 240]].field_16) * uint8(-uint8(_77) + 8))
        continue 
    if s:
        require ext_code.size(stor3)
        call stor3.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_59ac89b3(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == address(cd[4]):
        require msg.sender == tx.origin
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(stor1)
            staticcall stor1.MAX_PER_MINT() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _129 = mem[_127]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]) > !mem[_127]:
                revert with 0, 17
            require ext_code.size(stor2)
            staticcall stor2.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_135] >= uint16(cd[((32 * idx) + cd[36] + 36)]) + _129
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == stor2:
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor2)
                    staticcall stor2.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _157 = mem[64]
                    if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[_155] == mem[_155 + 31 len 1]
                    mem[_157] = mem[_155]
                    require mem[_155 + 32] == mem[_155 + 63 len 1]
                    mem[_157 + 32] = mem[_155 + 32]
                    require mem[_155 + 64] == mem[_155 + 95 len 1]
                    mem[_157 + 64] = mem[_155 + 64]
                    require mem[_155 + 96] == mem[_155 + 127 len 1]
                    mem[_157 + 96] = mem[_155 + 96]
                    require mem[_155 + 128] == mem[_155 + 159 len 1]
                    mem[_157 + 128] = mem[_155 + 128]
                    require mem[_155 + 160] == mem[_155 + 191 len 1]
                    mem[_157 + 160] = mem[_155 + 160]
                    require mem[_155 + 192] == mem[_155 + 223 len 1]
                    mem[_157 + 192] = mem[_155 + 192]
                    require mem[_155 + 224] == mem[_155 + 255 len 1]
                    mem[_157 + 224] = mem[_155 + 224]
                    if 8 < mem[_157 + 255 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_157 + 255 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_157 + 255 len 1] + 8)
                    mem[0] = uint8(-mem[_157 + 255 len 1] + 8)
                    _199 = sha3(mem[0], 6)
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_199].field_0)
                    mem[32] = 6
                    _201 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_201] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_201 + 32] = Mask(80, 0, stor12)
                    mem[_201 + 64] = address(cd[4])
                    uint256(stor[_199].field_0)++
                    mem[0] = _199
                    Mask(80, 0, stor[uint256(stor[_199].field_0) + sha3(_199)].field_0) = Mask(80, 0, stor12)
                    uint16(stor[uint256(stor[_199].field_0) + sha3(_199)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                    Mask(80, 0, stor[uint256(stor[_199].field_0) + sha3(_199)].field_16) = 0
                    address(stor[uint256(stor[_199].field_0) + sha3(_199)].field_96) = address(cd[4])
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = uint256(sub_c95a3ec2)
                    emit 0xa9cf7110: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_c95a3ec2)
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor2)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _143 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_143] == mem[_143 + 12 len 20]
                if mem[_143 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor2)
                staticcall stor2.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                _181 = mem[64]
                if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 256
                require mem[_177] == mem[_177 + 31 len 1]
                mem[_181] = mem[_177]
                require mem[_177 + 32] == mem[_177 + 63 len 1]
                mem[_181 + 32] = mem[_177 + 32]
                require mem[_177 + 64] == mem[_177 + 95 len 1]
                mem[_181 + 64] = mem[_177 + 64]
                require mem[_177 + 96] == mem[_177 + 127 len 1]
                mem[_181 + 96] = mem[_177 + 96]
                require mem[_177 + 128] == mem[_177 + 159 len 1]
                mem[_181 + 128] = mem[_177 + 128]
                require mem[_177 + 160] == mem[_177 + 191 len 1]
                mem[_181 + 160] = mem[_177 + 160]
                require mem[_177 + 192] == mem[_177 + 223 len 1]
                mem[_181 + 192] = mem[_177 + 192]
                require mem[_177 + 224] == mem[_177 + 255 len 1]
                mem[_181 + 224] = mem[_177 + 224]
                if 8 < mem[_181 + 255 len 1]:
                    revert with 0, 17
                if totalAlphaStaked > !uint8(-mem[_181 + 255 len 1] + 8):
                    revert with 0, 17
                totalAlphaStaked += uint8(-mem[_181 + 255 len 1] + 8)
                mem[0] = uint8(-mem[_181 + 255 len 1] + 8)
                _225 = sha3(mem[0], 6)
                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_225].field_0)
                mem[32] = 6
                _227 = mem[64]
                mem[64] = mem[64] + 96
                mem[_227] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[_227 + 32] = Mask(80, 0, stor12)
                mem[_227 + 64] = address(cd[4])
                uint256(stor[_225].field_0)++
                mem[0] = _225
                Mask(80, 0, stor[uint256(stor[_225].field_0) + sha3(_225)].field_0) = Mask(80, 0, stor12)
                uint16(stor[uint256(stor[_225].field_0) + sha3(_225)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                Mask(80, 0, stor[uint256(stor[_225].field_0) + sha3(_225)].field_16) = 0
                address(stor[uint256(stor[_225].field_0) + sha3(_225)].field_96) = address(cd[4])
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = uint256(sub_c95a3ec2)
                emit 0xa9cf7110: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_c95a3ec2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        require msg.sender == tx.origin
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(stor1)
            staticcall stor1.MAX_PER_MINT() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _130 = mem[_128]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]) > !mem[_128]:
                revert with 0, 17
            require ext_code.size(stor2)
            staticcall stor2.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_136] >= uint16(cd[((32 * idx) + cd[36] + 36)]) + _130
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == stor2:
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor2)
                    staticcall stor2.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _158 = mem[64]
                    if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[_156] == mem[_156 + 31 len 1]
                    mem[_158] = mem[_156]
                    require mem[_156 + 32] == mem[_156 + 63 len 1]
                    mem[_158 + 32] = mem[_156 + 32]
                    require mem[_156 + 64] == mem[_156 + 95 len 1]
                    mem[_158 + 64] = mem[_156 + 64]
                    require mem[_156 + 96] == mem[_156 + 127 len 1]
                    mem[_158 + 96] = mem[_156 + 96]
                    require mem[_156 + 128] == mem[_156 + 159 len 1]
                    mem[_158 + 128] = mem[_156 + 128]
                    require mem[_156 + 160] == mem[_156 + 191 len 1]
                    mem[_158 + 160] = mem[_156 + 160]
                    require mem[_156 + 192] == mem[_156 + 223 len 1]
                    mem[_158 + 192] = mem[_156 + 192]
                    require mem[_156 + 224] == mem[_156 + 255 len 1]
                    mem[_158 + 224] = mem[_156 + 224]
                    if 8 < mem[_158 + 255 len 1]:
                        revert with 0, 17
                    if totalAlphaStaked > !uint8(-mem[_158 + 255 len 1] + 8):
                        revert with 0, 17
                    totalAlphaStaked += uint8(-mem[_158 + 255 len 1] + 8)
                    mem[0] = uint8(-mem[_158 + 255 len 1] + 8)
                    _208 = sha3(mem[0], 6)
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_208].field_0)
                    mem[32] = 6
                    _210 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_210] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_210 + 32] = Mask(80, 0, stor12)
                    mem[_210 + 64] = address(cd[4])
                    uint256(stor[_208].field_0)++
                    mem[0] = _208
                    Mask(80, 0, stor[uint256(stor[_208].field_0) + sha3(_208)].field_0) = Mask(80, 0, stor12)
                    uint16(stor[uint256(stor[_208].field_0) + sha3(_208)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                    Mask(80, 0, stor[uint256(stor[_208].field_0) + sha3(_208)].field_16) = 0
                    address(stor[uint256(stor[_208].field_0) + sha3(_208)].field_96) = address(cd[4])
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = uint256(sub_c95a3ec2)
                    emit 0xa9cf7110: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_c95a3ec2)
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor2)
                staticcall stor2.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_144] == mem[_144 + 12 len 20]
                if mem[_144 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor2)
                staticcall stor2.0x94e56847 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 256
                _182 = mem[64]
                if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 256
                require mem[_178] == mem[_178 + 31 len 1]
                mem[_182] = mem[_178]
                require mem[_178 + 32] == mem[_178 + 63 len 1]
                mem[_182 + 32] = mem[_178 + 32]
                require mem[_178 + 64] == mem[_178 + 95 len 1]
                mem[_182 + 64] = mem[_178 + 64]
                require mem[_178 + 96] == mem[_178 + 127 len 1]
                mem[_182 + 96] = mem[_178 + 96]
                require mem[_178 + 128] == mem[_178 + 159 len 1]
                mem[_182 + 128] = mem[_178 + 128]
                require mem[_178 + 160] == mem[_178 + 191 len 1]
                mem[_182 + 160] = mem[_178 + 160]
                require mem[_178 + 192] == mem[_178 + 223 len 1]
                mem[_182 + 192] = mem[_178 + 192]
                require mem[_178 + 224] == mem[_178 + 255 len 1]
                mem[_182 + 224] = mem[_178 + 224]
                if 8 < mem[_182 + 255 len 1]:
                    revert with 0, 17
                if totalAlphaStaked > !uint8(-mem[_182 + 255 len 1] + 8):
                    revert with 0, 17
                totalAlphaStaked += uint8(-mem[_182 + 255 len 1] + 8)
                mem[0] = uint8(-mem[_182 + 255 len 1] + 8)
                _234 = sha3(mem[0], 6)
                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                packIndices[cd[((32 * idx) + cd[36] + 36)] << 240] = uint256(stor[_234].field_0)
                mem[32] = 6
                _236 = mem[64]
                mem[64] = mem[64] + 96
                mem[_236] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[_236 + 32] = Mask(80, 0, stor12)
                mem[_236 + 64] = address(cd[4])
                uint256(stor[_234].field_0)++
                mem[0] = _234
                Mask(80, 0, stor[uint256(stor[_234].field_0) + sha3(_234)].field_0) = Mask(80, 0, stor12)
                uint16(stor[uint256(stor[_234].field_0) + sha3(_234)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                Mask(80, 0, stor[uint256(stor[_234].field_0) + sha3(_234)].field_16) = 0
                address(stor[uint256(stor[_234].field_0) + sha3(_234)].field_96) = address(cd[4])
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = uint256(sub_c95a3ec2)
                emit 0xa9cf7110: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_c95a3ec2)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_e95ce1f9(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == address(cd[4]):
        require msg.sender == tx.origin
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(stor1)
            staticcall stor1.MAX_PER_MINT() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _457 = mem[_455]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]) > !mem[_455]:
                revert with 0, 17
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _463 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_463] >= uint16(cd[((32 * idx) + cd[36] + 36)]) + _457
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == stor1:
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if totalMilkEarned >= 480000000 * 10^18:
                        require ext_code.size(stor1)
                        staticcall stor1.0x94e56847 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _493 = mem[64]
                        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 288
                        require mem[_487] == bool(mem[_487])
                        mem[_493] = mem[_487]
                        require mem[_487 + 32] == mem[_487 + 63 len 1]
                        mem[_493 + 32] = mem[_487 + 32]
                        require mem[_487 + 64] == mem[_487 + 95 len 1]
                        mem[_493 + 64] = mem[_487 + 64]
                        require mem[_487 + 96] == mem[_487 + 127 len 1]
                        mem[_493 + 96] = mem[_487 + 96]
                        require mem[_487 + 128] == mem[_487 + 159 len 1]
                        mem[_493 + 128] = mem[_487 + 128]
                        require mem[_487 + 160] == mem[_487 + 191 len 1]
                        mem[_493 + 160] = mem[_487 + 160]
                        require mem[_487 + 192] == mem[_487 + 223 len 1]
                        mem[_493 + 192] = mem[_487 + 192]
                        require mem[_487 + 224] == mem[_487 + 255 len 1]
                        mem[_493 + 224] = mem[_487 + 224]
                        require mem[_487 + 256] == mem[_487 + 287 len 1]
                        mem[_493 + 256] = mem[_487 + 256]
                        if not mem[_493 + 287 len 1]:
                            if totalMilkrateStaked > -2:
                                revert with 0, 17
                            totalMilkrateStaked++
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _568 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_568] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_568 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_568 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _577 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_577] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_577 + 32] = Mask(80, 0, block.timestamp)
                                mem[_577 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _582 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_582] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_582 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_582 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                        else:
                            if totalMilkrateStaked > !mem[_493 + 287 len 1]:
                                revert with 0, 17
                            totalMilkrateStaked += mem[_493 + 287 len 1]
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _570 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_570] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_570 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_570 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _589 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_589] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_589 + 32] = Mask(80, 0, block.timestamp)
                                mem[_589 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _594 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_594] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_594 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_594 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and totalCowsStaked > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked):
                            revert with 0, 17
                        if totalMilkEarned > !((10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600):
                            revert with 0, 17
                        totalMilkEarned += (10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        require ext_code.size(stor1)
                        staticcall stor1.0x94e56847 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _519 = mem[64]
                        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 288
                        require mem[_507] == bool(mem[_507])
                        mem[_519] = mem[_507]
                        require mem[_507 + 32] == mem[_507 + 63 len 1]
                        mem[_519 + 32] = mem[_507 + 32]
                        require mem[_507 + 64] == mem[_507 + 95 len 1]
                        mem[_519 + 64] = mem[_507 + 64]
                        require mem[_507 + 96] == mem[_507 + 127 len 1]
                        mem[_519 + 96] = mem[_507 + 96]
                        require mem[_507 + 128] == mem[_507 + 159 len 1]
                        mem[_519 + 128] = mem[_507 + 128]
                        require mem[_507 + 160] == mem[_507 + 191 len 1]
                        mem[_519 + 160] = mem[_507 + 160]
                        require mem[_507 + 192] == mem[_507 + 223 len 1]
                        mem[_519 + 192] = mem[_507 + 192]
                        require mem[_507 + 224] == mem[_507 + 255 len 1]
                        mem[_519 + 224] = mem[_507 + 224]
                        require mem[_507 + 256] == mem[_507 + 287 len 1]
                        mem[_519 + 256] = mem[_507 + 256]
                        if not mem[_519 + 287 len 1]:
                            if totalMilkrateStaked > -2:
                                revert with 0, 17
                            totalMilkrateStaked++
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _672 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_672] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_672 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_672 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _679 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_679] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_679 + 32] = Mask(80, 0, block.timestamp)
                                mem[_679 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _684 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_684] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_684 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_684 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                        else:
                            if totalMilkrateStaked > !mem[_519 + 287 len 1]:
                                revert with 0, 17
                            totalMilkrateStaked += mem[_519 + 287 len 1]
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _674 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_674] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_674 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_674 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _691 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_691] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_691 + 32] = Mask(80, 0, block.timestamp)
                                mem[_691 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _696 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_696] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_696 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_696 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    if totalCowsStaked > -2:
                        revert with 0, 17
                    totalCowsStaked++
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x8789f911: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_471] == mem[_471 + 12 len 20]
                if mem[_471 + 12 len 20] != msg.sender:
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
                if stor0:
                    revert with 0, 'Pausable: paused'
                if totalMilkEarned >= 480000000 * 10^18:
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _523 = mem[64]
                    if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 288
                    require mem[_517] == bool(mem[_517])
                    mem[_523] = mem[_517]
                    require mem[_517 + 32] == mem[_517 + 63 len 1]
                    mem[_523 + 32] = mem[_517 + 32]
                    require mem[_517 + 64] == mem[_517 + 95 len 1]
                    mem[_523 + 64] = mem[_517 + 64]
                    require mem[_517 + 96] == mem[_517 + 127 len 1]
                    mem[_523 + 96] = mem[_517 + 96]
                    require mem[_517 + 128] == mem[_517 + 159 len 1]
                    mem[_523 + 128] = mem[_517 + 128]
                    require mem[_517 + 160] == mem[_517 + 191 len 1]
                    mem[_523 + 160] = mem[_517 + 160]
                    require mem[_517 + 192] == mem[_517 + 223 len 1]
                    mem[_523 + 192] = mem[_517 + 192]
                    require mem[_517 + 224] == mem[_517 + 255 len 1]
                    mem[_523 + 224] = mem[_517 + 224]
                    require mem[_517 + 256] == mem[_517 + 287 len 1]
                    mem[_523 + 256] = mem[_517 + 256]
                    if not mem[_523 + 287 len 1]:
                        if totalMilkrateStaked > -2:
                            revert with 0, 17
                        totalMilkrateStaked++
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _730 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_730] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_730 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_730 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _737 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_737] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_737 + 32] = Mask(80, 0, block.timestamp)
                            mem[_737 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _742 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_742] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_742 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_742 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    else:
                        if totalMilkrateStaked > !mem[_523 + 287 len 1]:
                            revert with 0, 17
                        totalMilkrateStaked += mem[_523 + 287 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _732 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_732] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_732 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_732 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _749 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_749] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_749 + 32] = Mask(80, 0, block.timestamp)
                            mem[_749 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _754 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_754] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_754 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_754 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                else:
                    if block.timestamp < lastClaimTimestamp:
                        revert with 0, 17
                    if block.timestamp - lastClaimTimestamp and totalCowsStaked > -1 / block.timestamp - lastClaimTimestamp:
                        revert with 0, 17
                    if (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked):
                        revert with 0, 17
                    if totalMilkEarned > !((10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600):
                        revert with 0, 17
                    totalMilkEarned += (10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600
                    lastClaimTimestamp = block.timestamp
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _561 = mem[64]
                    if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 288
                    require mem[_551] == bool(mem[_551])
                    mem[_561] = mem[_551]
                    require mem[_551 + 32] == mem[_551 + 63 len 1]
                    mem[_561 + 32] = mem[_551 + 32]
                    require mem[_551 + 64] == mem[_551 + 95 len 1]
                    mem[_561 + 64] = mem[_551 + 64]
                    require mem[_551 + 96] == mem[_551 + 127 len 1]
                    mem[_561 + 96] = mem[_551 + 96]
                    require mem[_551 + 128] == mem[_551 + 159 len 1]
                    mem[_561 + 128] = mem[_551 + 128]
                    require mem[_551 + 160] == mem[_551 + 191 len 1]
                    mem[_561 + 160] = mem[_551 + 160]
                    require mem[_551 + 192] == mem[_551 + 223 len 1]
                    mem[_561 + 192] = mem[_551 + 192]
                    require mem[_551 + 224] == mem[_551 + 255 len 1]
                    mem[_561 + 224] = mem[_551 + 224]
                    require mem[_551 + 256] == mem[_551 + 287 len 1]
                    mem[_561 + 256] = mem[_551 + 256]
                    if not mem[_561 + 287 len 1]:
                        if totalMilkrateStaked > -2:
                            revert with 0, 17
                        totalMilkrateStaked++
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _828 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_828] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_828 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_828 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _835 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_835] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_835 + 32] = Mask(80, 0, block.timestamp)
                            mem[_835 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _840 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_840] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_840 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_840 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    else:
                        if totalMilkrateStaked > !mem[_561 + 287 len 1]:
                            revert with 0, 17
                        totalMilkrateStaked += mem[_561 + 287 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _830 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_830] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_830 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_830 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _847 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_847] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_847 + 32] = Mask(80, 0, block.timestamp)
                            mem[_847 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _852 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_852] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_852 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_852 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                if totalCowsStaked > -2:
                    revert with 0, 17
                totalCowsStaked++
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = block.timestamp
                emit 0x8789f911: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        require msg.sender == tx.origin
        idx = 0
        while idx < ('cd', 36).length:
            require ext_code.size(stor1)
            staticcall stor1.MAX_PER_MINT() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _456 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _458 = mem[_456]
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]) > !mem[_456]:
                revert with 0, 17
            require ext_code.size(stor1)
            staticcall stor1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _464 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_464] >= uint16(cd[((32 * idx) + cd[36] + 36)]) + _458
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == stor1:
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    if totalMilkEarned >= 480000000 * 10^18:
                        require ext_code.size(stor1)
                        staticcall stor1.0x94e56847 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _488 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _494 = mem[64]
                        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 288
                        require mem[_488] == bool(mem[_488])
                        mem[_494] = mem[_488]
                        require mem[_488 + 32] == mem[_488 + 63 len 1]
                        mem[_494 + 32] = mem[_488 + 32]
                        require mem[_488 + 64] == mem[_488 + 95 len 1]
                        mem[_494 + 64] = mem[_488 + 64]
                        require mem[_488 + 96] == mem[_488 + 127 len 1]
                        mem[_494 + 96] = mem[_488 + 96]
                        require mem[_488 + 128] == mem[_488 + 159 len 1]
                        mem[_494 + 128] = mem[_488 + 128]
                        require mem[_488 + 160] == mem[_488 + 191 len 1]
                        mem[_494 + 160] = mem[_488 + 160]
                        require mem[_488 + 192] == mem[_488 + 223 len 1]
                        mem[_494 + 192] = mem[_488 + 192]
                        require mem[_488 + 224] == mem[_488 + 255 len 1]
                        mem[_494 + 224] = mem[_488 + 224]
                        require mem[_488 + 256] == mem[_488 + 287 len 1]
                        mem[_494 + 256] = mem[_488 + 256]
                        if not mem[_494 + 287 len 1]:
                            if totalMilkrateStaked > -2:
                                revert with 0, 17
                            totalMilkrateStaked++
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _573 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_573] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_573 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_573 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _602 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_602] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_602 + 32] = Mask(80, 0, block.timestamp)
                                mem[_602 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _607 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_607] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_607 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_607 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                        else:
                            if totalMilkrateStaked > !mem[_494 + 287 len 1]:
                                revert with 0, 17
                            totalMilkrateStaked += mem[_494 + 287 len 1]
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _575 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_575] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_575 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_575 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _614 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_614] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_614 + 32] = Mask(80, 0, block.timestamp)
                                mem[_614 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _619 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_619] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_619 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_619 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and totalCowsStaked > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked):
                            revert with 0, 17
                        if totalMilkEarned > !((10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600):
                            revert with 0, 17
                        totalMilkEarned += (10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        require ext_code.size(stor1)
                        staticcall stor1.0x94e56847 with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _511 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 288
                        _520 = mem[64]
                        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 288
                        require mem[_511] == bool(mem[_511])
                        mem[_520] = mem[_511]
                        require mem[_511 + 32] == mem[_511 + 63 len 1]
                        mem[_520 + 32] = mem[_511 + 32]
                        require mem[_511 + 64] == mem[_511 + 95 len 1]
                        mem[_520 + 64] = mem[_511 + 64]
                        require mem[_511 + 96] == mem[_511 + 127 len 1]
                        mem[_520 + 96] = mem[_511 + 96]
                        require mem[_511 + 128] == mem[_511 + 159 len 1]
                        mem[_520 + 128] = mem[_511 + 128]
                        require mem[_511 + 160] == mem[_511 + 191 len 1]
                        mem[_520 + 160] = mem[_511 + 160]
                        require mem[_511 + 192] == mem[_511 + 223 len 1]
                        mem[_520 + 192] = mem[_511 + 192]
                        require mem[_511 + 224] == mem[_511 + 255 len 1]
                        mem[_520 + 224] = mem[_511 + 224]
                        require mem[_511 + 256] == mem[_511 + 287 len 1]
                        mem[_520 + 256] = mem[_511 + 256]
                        if not mem[_520 + 287 len 1]:
                            if totalMilkrateStaked > -2:
                                revert with 0, 17
                            totalMilkrateStaked++
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _676 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_676] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_676 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_676 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _704 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_704] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_704 + 32] = Mask(80, 0, block.timestamp)
                                mem[_704 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _709 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_709] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_709 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_709 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                        else:
                            if totalMilkrateStaked > !mem[_520 + 287 len 1]:
                                revert with 0, 17
                            totalMilkrateStaked += mem[_520 + 287 len 1]
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 5
                            _678 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_678] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                            mem[_678 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_678 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                            if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                                _716 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_716] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_716 + 32] = Mask(80, 0, block.timestamp)
                                mem[_716 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[32] = 4
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            else:
                                _721 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_721] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_721 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                mem[_721 + 64] = address(cd[4])
                                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                                Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                                address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                                mem[32] = 5
                                uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    if totalCowsStaked > -2:
                        revert with 0, 17
                    totalCowsStaked++
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit 0x8789f911: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_472] == mem[_472 + 12 len 20]
                if mem[_472 + 12 len 20] != msg.sender:
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
                if stor0:
                    revert with 0, 'Pausable: paused'
                if totalMilkEarned >= 480000000 * 10^18:
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _524 = mem[64]
                    if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 288
                    require mem[_518] == bool(mem[_518])
                    mem[_524] = mem[_518]
                    require mem[_518 + 32] == mem[_518 + 63 len 1]
                    mem[_524 + 32] = mem[_518 + 32]
                    require mem[_518 + 64] == mem[_518 + 95 len 1]
                    mem[_524 + 64] = mem[_518 + 64]
                    require mem[_518 + 96] == mem[_518 + 127 len 1]
                    mem[_524 + 96] = mem[_518 + 96]
                    require mem[_518 + 128] == mem[_518 + 159 len 1]
                    mem[_524 + 128] = mem[_518 + 128]
                    require mem[_518 + 160] == mem[_518 + 191 len 1]
                    mem[_524 + 160] = mem[_518 + 160]
                    require mem[_518 + 192] == mem[_518 + 223 len 1]
                    mem[_524 + 192] = mem[_518 + 192]
                    require mem[_518 + 224] == mem[_518 + 255 len 1]
                    mem[_524 + 224] = mem[_518 + 224]
                    require mem[_518 + 256] == mem[_518 + 287 len 1]
                    mem[_524 + 256] = mem[_518 + 256]
                    if not mem[_524 + 287 len 1]:
                        if totalMilkrateStaked > -2:
                            revert with 0, 17
                        totalMilkrateStaked++
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _734 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_734] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_734 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_734 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _761 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_761] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_761 + 32] = Mask(80, 0, block.timestamp)
                            mem[_761 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _766 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_766] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_766 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_766 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    else:
                        if totalMilkrateStaked > !mem[_524 + 287 len 1]:
                            revert with 0, 17
                        totalMilkrateStaked += mem[_524 + 287 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _736 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_736] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_736 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_736 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _773 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_773] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_773 + 32] = Mask(80, 0, block.timestamp)
                            mem[_773 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _778 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_778] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_778 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_778 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                else:
                    if block.timestamp < lastClaimTimestamp:
                        revert with 0, 17
                    if block.timestamp - lastClaimTimestamp and totalCowsStaked > -1 / block.timestamp - lastClaimTimestamp:
                        revert with 0, 17
                    if (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked) and 10000 * 10^18 > -1 / (block.timestamp * totalCowsStaked) - (lastClaimTimestamp * totalCowsStaked):
                        revert with 0, 17
                    if totalMilkEarned > !((10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600):
                        revert with 0, 17
                    totalMilkEarned += (10000 * 10^18 * block.timestamp * totalCowsStaked) - (10000 * 10^18 * lastClaimTimestamp * totalCowsStaked) / 24 * 3600
                    lastClaimTimestamp = block.timestamp
                    require ext_code.size(stor1)
                    staticcall stor1.0x94e56847 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _552 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _562 = mem[64]
                    if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 288
                    require mem[_552] == bool(mem[_552])
                    mem[_562] = mem[_552]
                    require mem[_552 + 32] == mem[_552 + 63 len 1]
                    mem[_562 + 32] = mem[_552 + 32]
                    require mem[_552 + 64] == mem[_552 + 95 len 1]
                    mem[_562 + 64] = mem[_552 + 64]
                    require mem[_552 + 96] == mem[_552 + 127 len 1]
                    mem[_562 + 96] = mem[_552 + 96]
                    require mem[_552 + 128] == mem[_552 + 159 len 1]
                    mem[_562 + 128] = mem[_552 + 128]
                    require mem[_552 + 160] == mem[_552 + 191 len 1]
                    mem[_562 + 160] = mem[_552 + 160]
                    require mem[_552 + 192] == mem[_552 + 223 len 1]
                    mem[_562 + 192] = mem[_552 + 192]
                    require mem[_552 + 224] == mem[_552 + 255 len 1]
                    mem[_562 + 224] = mem[_552 + 224]
                    require mem[_552 + 256] == mem[_552 + 287 len 1]
                    mem[_562 + 256] = mem[_552 + 256]
                    if not mem[_562 + 287 len 1]:
                        if totalMilkrateStaked > -2:
                            revert with 0, 17
                        totalMilkrateStaked++
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _832 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_832] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_832 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_832 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _859 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_859] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_859 + 32] = Mask(80, 0, block.timestamp)
                            mem[_859 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _864 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_864] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_864 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_864 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                    else:
                        if totalMilkrateStaked > !mem[_562 + 287 len 1]:
                            revert with 0, 17
                        totalMilkrateStaked += mem[_562 + 287 len 1]
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 5
                        _834 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_834] = uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0)
                        mem[_834 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                        mem[_834 + 64] = address(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_96)
                        if not uint16(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0):
                            _871 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_871] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_871 + 32] = Mask(80, 0, block.timestamp)
                            mem[_871 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, block.timestamp)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                        else:
                            _876 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_876] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_876 + 32] = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            mem[_876 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint16(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_16) = Mask(80, 0, sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_16)
                            address(barn[cd[((32 * idx) + cd[36] + 36)] << 240].field_96) = address(cd[4])
                            mem[32] = 5
                            uint256(sub_e287f92c[cd[((32 * idx) + cd[36] + 36)] << 240].field_0) = 0
                if totalCowsStaked > -2:
                    revert with 0, 17
                totalCowsStaked++
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = block.timestamp
                emit 0x8789f911: address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
