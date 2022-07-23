contract main {




// =====================  Runtime code  =====================


#
#  - sub_1d1fa832(?)
#  - sub_4ee571ce(?)
#  - sub_784eceef(?)
#  - sub_7e7b0d57(?)
#  - sub_9c43b6e2(?)
#  - initialize(address[] arg1)
#
address tokenAddress; offset 16
array of uint256 stor1;
address rewardsPoolAddress;
address sub_919df198Address;
mapping of uint8 sub_530ee54b;
uint8 tierTotal;
uint8 sub_2d233503; offset 8
array of struct sub_74bf71c5;
array of uint32 sub_2655c1b9;
uint32 sub_d33953bb;
mapping of uint32 sub_d1b43593;
mapping of uint32 sub_22b45822;
uint256 rewardsTotal;
mapping of uint256 sub_b2dd3b37;
mapping of uint256 sub_4c3f427d;
mapping of uint8 stor15;
mapping of uint8 stor16;
uint32 sub_1c87cdb0;
uint32 withdrawRate; offset 32
uint32 transferFee; offset 64
uint32 rewardsPoolFee; offset 96
uint32 claimFee; offset 128
uint32 sub_3ba28fcb; offset 160
uint32 sub_0a3eccf2; offset 192
uint32 sub_8e6a1bc2; offset 224
uint32 sub_5a64affb;
address uniswapV2RouterAddress; offset 32
address sub_4506598dAddress;
address sub_aea5c394Address;
address owner;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856478;
array of uint32 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;

function sub_0a3eccf2(?) {
    return sub_0a3eccf2
}

function sub_0c6afded(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[arg1])
}

function withdrawRate() {
    return withdrawRate
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function sub_1c87cdb0(?) {
    return sub_1c87cdb0
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor15[arg1])
}

function sub_22b45822(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_22b45822[arg1[all]]
}

function sub_2655c1b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_2655c1b9[arg1])
    return uint256(sub_2655c1b9[arg1][arg2])
}

function sub_2d233503(?) {
    return sub_2d233503
}

function sub_33936f65(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor16[address(arg1)])
}

function sub_3ba28fcb(?) {
    return sub_3ba28fcb
}

function sub_4506598d(?) {
    return sub_4506598dAddress
}

function sub_4c3f427d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4c3f427d[arg1]
}

function sub_530ee54b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_530ee54b[arg1[all]]
}

function sub_5a64affb(?) {
    return sub_5a64affb
}

function nftAddress() {
    return address(stor1.length)
}

function sub_74bf71c5(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_74bf71c5.length
    return uint32(sub_74bf71c5[arg1].field_0), 
           uint8(sub_74bf71c5[arg1].field_0),
           address(sub_74bf71c5[arg1].field_0),
           uint32(sub_74bf71c5[arg1].field_0),
           uint32(sub_74bf71c5[arg1].field_256),
           uint32(sub_74bf71c5[arg1].field_256),
           uint256(sub_74bf71c5[arg1].field_512),
           uint256(sub_74bf71c5[arg1].field_768)
}

function tierTotal() {
    return tierTotal
}

function rewardsPoolFee() {
    return rewardsPoolFee
}

function owner() {
    return owner
}

function sub_8e6a1bc2(?) {
    return sub_8e6a1bc2
}

function sub_919df198(?) {
    return sub_919df198Address
}

function claimFee() {
    return claimFee
}

function tokenAddress() {
    return tokenAddress
}

function transferFee() {
    return transferFee
}

function sub_aea5c394(?) {
    return sub_aea5c394Address
}

function sub_b2dd3b37(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b2dd3b37[arg1]
}

function rewardsTotal() {
    return rewardsTotal
}

function rewardsPoolAddress() {
    return rewardsPoolAddress
}

function sub_d1b43593(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d1b43593[arg1]
}

function sub_d33953bb(?) {
    return sub_d33953bb
}

function _fallback() payable {
    revert
}

function sub_81c31cf9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimFee = uint32(arg1)
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function sub_77ffb52b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2d233503 = uint8(arg1)
}

function sub_2e9ef976(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transferFee = uint32(arg1)
}

function sub_0f81e539(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1c87cdb0 = uint32(arg1)
}

function sub_8c04a2e4(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e6a1bc2 = uint32(arg1)
}

function sub_e0d12873(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5a64affb = uint32(arg1)
}

function sub_f5278a8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3ba28fcb = uint32(arg1)
}

function sub_3fb53751(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolFee = uint32(arg1)
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uniswapV2RouterAddress = arg1
}

function setNFTAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = arg1
}

function sub_55953d25(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4506598dAddress = address(arg1)
}

function sub_e985f283(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_919df198Address = address(arg1)
}

function setRewardsPoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = arg1
}

function sub_b1ee5a81(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
}

function sub_63829152(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not address(stor1.length):
        return 10^18
    staticcall address(stor1.length).0xd7e6c7e7 with:
            gas gas_remaining wei
           args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdraw(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f2d049b6(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) <= 0:
        revert with 0, 'Tier was already removed'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = 0
    if not tierTotal:
        revert with 0, 17
    tierTotal = uint8(tierTotal - 1)
}

function sub_05ec8cec(?) {
    if not stor16[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet nodes havent been migrated'
    if sub_4c3f427d[msg.sender]:
        revert with 0, 'Wallet reward have been migrated'
    staticcall sub_aea5c394Address._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_4c3f427d[msg.sender] = ext_call.return_data[0]
    idx = 0
    while uint32(idx) < uint256(sub_2655c1b9[msg.sender]):
        mem[0] = sha3(msg.sender, 8)
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) <= 0:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) < 1:
            revert with 0, 17
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) - 1 >= sub_74bf71c5.length:
            revert with 0, 50
        mem[0] = 7
        if address(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_40) - msg.sender:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 14
        uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768) = sub_4c3f427d[msg.sender]
        if not uint32(sub_2655c1b9[msg.sender]) - test266151307():
            revert with 0, 17
        idx = uint32(sub_2655c1b9[msg.sender]) + 1
        continue 
}

function sub_85b8eb44(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    require arg4 == uint32(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Tier's price has to be positive'
    if arg3 <= 0:
        revert with 0, 'Tier's rewards has to be positive'
    if uint32(arg4) <= 0:
        revert with 0, 'Tier's claim interval has to be positive'
    mem[ceil32(ceil32(arg1.length)) + 97] = uint8(stor4.length)
    mem[ceil32(ceil32(arg1.length)) + 129] = 96
    mem[ceil32(ceil32(arg1.length)) + 161] = arg2
    mem[ceil32(ceil32(arg1.length)) + 193] = arg3
    mem[ceil32(ceil32(arg1.length)) + 225] = uint32(arg4)
    mem[ceil32(ceil32(arg1.length)) + 257] = arg5
    stor4.length++
    uint8(stor4[stor4.length].field_0) = uint8(stor4.length)
    if bool(stor8A35[stor4.length].field_0):
        if not bool(stor8A35[stor4.length].field_0) - (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5 < 32):
            revert with 0, 34
        if not arg1.length:
            uint256(stor8A35[stor4.length].field_0) = 0
            idx = 0
            while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor8A35[stor4.length].field_0) = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor[sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    uint256(stor[s + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while (uint255(uint256(stor8A35[stor4.length].field_0)) * 0.5) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                    idx = idx + 1
                    continue 
    else:
        if not bool(stor8A35[stor4.length].field_0) - (stor8A35[stor4.length].field_1 % 128 < 32):
            revert with 0, 34
        if not arg1.length:
            uint256(stor8A35[stor4.length].field_0) = 0
            idx = 0
            while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor8A35[stor4.length].field_0) = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor[sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    uint256(stor[s + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while stor8A35[stor4.length].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)]) = 0
                    idx = idx + 1
                    continue 
    stor8A35[stor4.length] = arg2
    stor8A35[stor4.length] = arg3
    stor8A35[stor4.length] = uint32(arg4)
    stor8A35[stor4.length] = arg5
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, 0, stor4.length.field_-(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 8)) << (8 * ceil32(arg1.length)) - 256]) = uint8(stor4.length)
    if not tierTotal - 255:
        revert with 0, 17
    tierTotal = uint8(tierTotal + 1)
}

function sub_fba6c21f(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while uint32(idx) < sub_74bf71c5.length:
        mem[0] = 7
        if address(sub_74bf71c5[4 * uint32(idx)].field_40):
            if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) > -sub_8e6a1bc2 + test266151307():
                revert with 0, 17
            if uint32(sub_8e6a1bc2 + uint32(sub_74bf71c5[4 * uint32(idx)].field_288)) < uint32(block.timestamp):
                mem[32] = 10
                if not sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)]:
                    revert with 0, 17
                sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] - 1)
                address(sub_74bf71c5[4 * uint32(idx)].field_40) = 0
                uint32(sub_74bf71c5[4 * uint32(idx)].field_256) = 0
                if uint8(sub_74bf71c5[4 * uint32(idx)].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                _22 = mem[64]
                if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                        mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5:
                                mem[s + _22] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _22 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                else:
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                        mem[mem[64] + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128:
                                mem[s + _22] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _22 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                if not sub_d33953bb:
                    revert with 0, 17
                sub_d33953bb = uint32(sub_d33953bb - 1)
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        continue 
}

function sub_9ea164b3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if uint8(cd[4]) <= 0:
        revert with 0, 'Invalid number of months'
    if uint8(cd[4]) > sub_2d233503:
        revert with 0, 'Invalid number of months'
    if -('cd', 36).length:
        idx = 0
        while uint32(idx) < ('cd', 36).length:
            if uint32(idx) >= ('cd', 36).length:
                revert with 0, 50
            if mem[(32 * uint32(idx)) + 128] >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if not address(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_40) - msg.sender:
                if uint8(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                if uint8(cd[4]) and sub_8e6a1bc2 > test266151307() / uint8(cd[4]):
                    revert with 0, 17
                if uint32(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_288) > -uint32(sub_8e6a1bc2 * uint8(cd[4])) + test266151307():
                    revert with 0, 17
                uint32(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_288) = uint32(uint32(sub_8e6a1bc2 * uint8(cd[4])) + uint32(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_288))
                if uint32(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_288) < block.timestamp:
                    revert with 0, 17
                if not sub_8e6a1bc2:
                    revert with 0, 18
                if uint8(uint32(sub_74bf71c5[mem[(32 * uint32(idx)) + 128]].field_288) - block.timestamp / sub_8e6a1bc2) > 3:
                    revert with 0, 'Cannot pay more than 3 months'
                if -uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280):
                    if uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280) and uint8(cd[4]) > -1 / uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280):
                        revert with 0, 17
                    if not uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280):
                        revert with 0, 18
                    if uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280) * uint8(cd[4]) / uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280) != uint8(cd[4]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280) * uint8(cd[4]) > -1:
                        revert with 0, 17
                    if uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280) * uint8(cd[4]) < uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_1280) * uint8(cd[4]):
                        revert with 0, 'SafeMath: addition overflow'
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
    else:
        idx = 0
        while uint32(idx) < uint256(sub_2655c1b9[msg.sender]):
            mem[0] = sha3(msg.sender, 8)
            if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) > 0:
                if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) < 1:
                    revert with 0, 17
                if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) - 1 >= sub_74bf71c5.length:
                    revert with 0, 50
                mem[0] = 7
                if not address(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_40) - msg.sender:
                    if uint8(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32) >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    if uint8(cd[4]) and sub_8e6a1bc2 > test266151307() / uint8(cd[4]):
                        revert with 0, 17
                    if uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288) > -uint32(sub_8e6a1bc2 * uint8(cd[4])) + test266151307():
                        revert with 0, 17
                    uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288) = uint32(uint32(sub_8e6a1bc2 * uint8(cd[4])) + uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288))
                    if uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288) < block.timestamp:
                        revert with 0, 17
                    if not sub_8e6a1bc2:
                        revert with 0, 18
                    if uint8(uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288) - block.timestamp / sub_8e6a1bc2) > 3:
                        revert with 0, 'Cannot pay more than 3 months'
                    if -uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280):
                        if uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280) and uint8(cd[4]) > -1 / uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280):
                            revert with 0, 17
                        if not uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280):
                            revert with 0, 18
                        if uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280) * uint8(cd[4]) / uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280) != uint8(cd[4]):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280) * uint8(cd[4]) > -1:
                            revert with 0, 17
                        if uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280) * uint8(cd[4]) < uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1280) * uint8(cd[4]):
                            revert with 0, 'SafeMath: addition overflow'
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
    if msg.value != 0:
        revert with 0, 'Invalid Fee amount'
    call sub_919df198Address with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_450970b5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while uint32(idx) < sub_74bf71c5.length:
        mem[0] = 7
        if not address(sub_74bf71c5[4 * uint32(idx)].field_40):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if address(sub_74bf71c5[4 * uint32(idx)].field_40) != address(arg1):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) >= uint32(block.timestamp):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if not uint32(s) - test266151307():
            revert with 0, 17
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = uint32(s) + 1
        continue 
    if uint32(s) > test266151307():
        revert with 0, 65
    mem[96] = uint32(s)
    mem[64] = (32 * uint32(s)) + 128
    if not uint32(s):
        idx = 0
        s = 0
        while uint32(idx) < sub_74bf71c5.length:
            mem[0] = 7
            if not address(sub_74bf71c5[4 * uint32(idx)].field_40):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            if address(sub_74bf71c5[4 * uint32(idx)].field_40) != address(arg1):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) >= uint32(block.timestamp):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            _65 = mem[64]
            mem[64] = mem[64] + 256
            mem[_65] = uint32(sub_74bf71c5[4 * uint32(idx)].field_0)
            mem[_65 + 32] = uint8(sub_74bf71c5[4 * uint32(idx)].field_32)
            mem[_65 + 64] = address(sub_74bf71c5[4 * uint32(idx)].field_40)
            mem[_65 + 96] = uint32(sub_74bf71c5[4 * uint32(idx)].field_200)
            mem[_65 + 128] = uint32(sub_74bf71c5[4 * uint32(idx)].field_256)
            mem[_65 + 160] = uint32(sub_74bf71c5[4 * uint32(idx)].field_288)
            mem[_65 + 192] = uint256(sub_74bf71c5[4 * uint32(idx)].field_512)
            mem[_65 + 224] = uint256(sub_74bf71c5[4 * uint32(idx)].field_768)
            if not uint32(s) - test266151307():
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint32(s)) + 128] = _65
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            continue 
        _52 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _54:
            _83 = mem[s]
            mem[t] = mem[mem[s] + 28 len 4]
            mem[t + 32] = mem[_83 + 63 len 1]
            mem[t + 64] = mem[_83 + 76 len 20]
            mem[t + 96] = mem[_83 + 124 len 4]
            mem[t + 128] = mem[_83 + 156 len 4]
            mem[t + 160] = mem[_83 + 188 len 4]
            mem[t + 192] = mem[_83 + 192]
            mem[t + 224] = mem[_83 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _52 + (256 * _54) + -mem[64] + 64
    mem[64] = (32 * uint32(s)) + 384
    mem[(32 * uint32(s)) + 128] = 0
    mem[(32 * uint32(s)) + 160] = 0
    mem[(32 * uint32(s)) + 192] = 0
    mem[(32 * uint32(s)) + 224] = 0
    mem[(32 * uint32(s)) + 256] = 0
    mem[(32 * uint32(s)) + 288] = 0
    mem[(32 * uint32(s)) + 320] = 0
    mem[(32 * uint32(s)) + 352] = 0
    mem[var18001] = (32 * uint32(s)) + 128
    t = var18001
    idx = var18002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * uint32(s)) + 128] = 0
        mem[(32 * uint32(s)) + 160] = 0
        mem[(32 * uint32(s)) + 192] = 0
        mem[(32 * uint32(s)) + 224] = 0
        mem[(32 * uint32(s)) + 256] = 0
        mem[(32 * uint32(s)) + 288] = 0
        mem[(32 * uint32(s)) + 320] = 0
        mem[(32 * uint32(s)) + 352] = 0
        mem[t + 32] = (32 * uint32(s)) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while uint32(idx) < sub_74bf71c5.length:
        mem[0] = 7
        if not address(sub_74bf71c5[4 * uint32(idx)].field_40):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if address(sub_74bf71c5[4 * uint32(idx)].field_40) != address(arg1):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) >= uint32(block.timestamp):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        _121 = mem[64]
        mem[64] = mem[64] + 256
        mem[_121] = uint32(sub_74bf71c5[4 * uint32(idx)].field_0)
        mem[_121 + 32] = uint8(sub_74bf71c5[4 * uint32(idx)].field_32)
        mem[_121 + 64] = address(sub_74bf71c5[4 * uint32(idx)].field_40)
        mem[_121 + 96] = uint32(sub_74bf71c5[4 * uint32(idx)].field_200)
        mem[_121 + 128] = uint32(sub_74bf71c5[4 * uint32(idx)].field_256)
        mem[_121 + 160] = uint32(sub_74bf71c5[4 * uint32(idx)].field_288)
        mem[_121 + 192] = uint256(sub_74bf71c5[4 * uint32(idx)].field_512)
        mem[_121 + 224] = uint256(sub_74bf71c5[4 * uint32(idx)].field_768)
        if not uint32(s) - test266151307():
            revert with 0, 17
        if uint32(s) >= mem[96]:
            revert with 0, 50
        mem[(32 * uint32(s)) + 128] = _121
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = uint32(s) + 1
        continue 
    _108 = mem[64]
    mem[mem[64]] = 32
    _110 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _110:
        _123 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_123 + 63 len 1]
        mem[t + 64] = mem[_123 + 76 len 20]
        mem[t + 96] = mem[_123 + 124 len 4]
        mem[t + 128] = mem[_123 + 156 len 4]
        mem[t + 160] = mem[_123 + 188 len 4]
        mem[t + 192] = mem[_123 + 192]
        mem[t + 224] = mem[_123 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _108 + (256 * _110) + -mem[64] + 64
}

function claimable() payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 8
    idx = 0
    s = 0
    while uint32(idx) < uint256(sub_2655c1b9[msg.sender]):
        mem[0] = sha3(msg.sender, 8)
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) <= 0:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) < 1:
            revert with 0, 17
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) - 1 >= sub_74bf71c5.length:
            revert with 0, 50
        mem[0] = 7
        if address(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_40) - msg.sender:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if not address(stor1.length):
            if uint8(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
                revert with 0, 17
            if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
                revert with 0, 17
            if (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)):
                revert with 0, 17
            if not uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024):
                revert with 0, 18
            if (10^18 * block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768):
                revert with 0, 17
            if s > !(((10^18 * block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)):
                revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s + ((10^18 * block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256)
        mem[mem[64] + 68] = block.timestamp
        staticcall address(stor1.length).0xd7e6c7e7 with:
                gas gas_remaining wei
               args msg.sender, uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256), block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _19 = mem[_18]
        if uint8(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32) >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
            revert with 0, 17
        if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
            revert with 0, 17
        if (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) and _19 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)):
            revert with 0, 17
        if not uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024):
            revert with 0, 18
        if (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _19) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _19) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768):
            revert with 0, 17
        if s > !(((block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _19) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _19) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)):
            revert with 0, 17
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = s + ((block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _19) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _19) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)
        continue 
    return s
}

function sub_5bcb11bb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(arg1)
    idx = 0
    while uint32(idx) < uint256(sub_2655c1b9[address(arg1)]):
        mem[0] = sha3(address(arg1), 8)
        if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) > 0:
            if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) < 1:
                revert with 0, 17
            if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if not address(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_40) - address(arg1):
                address(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_40) = 0
                uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256) = 0
                if uint8(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                _40 = mem[64]
                if bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256):
                    if not bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256))
                        mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5)] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5:
                                mem[s + _40] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5)] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                else:
                    if not bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256) - (stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256))
                        mem[mem[64] + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128:
                                mem[s + _40] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        continue 
    _31 = mem[64]
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    mem[0] = address(arg1)
    mem[32] = 8
    _33 = mem[_31]
    uint256(sub_2655c1b9[address(arg1)]) = mem[_31]
    mem[0] = sha3(address(arg1), 8)
    if not _33:
        idx = 0
        while uint256(sub_2655c1b9[address(arg1)]) > idx:
            uint256(sub_2655c1b9[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = _31 + 32
        while _31 + (32 * _33) + 32 > idx:
            uint256(sub_2655c1b9[address(arg1)][s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * _33) + 31) >> 5
        while uint256(sub_2655c1b9[address(arg1)]) > idx:
            uint256(sub_2655c1b9[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    if sub_d33953bb < sub_d1b43593[address(arg1)]:
        revert with 0, 17
    sub_d33953bb = uint32(sub_d33953bb - sub_d1b43593[address(arg1)])
    sub_d1b43593[address(arg1)] = 0
}

function nodes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    if sub_d1b43593[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_d1b43593[address(arg1)]
    mem[64] = (32 * sub_d1b43593[address(arg1)]) + 128
    if not sub_d1b43593[address(arg1)]:
        mem[0] = arg1
        mem[32] = 8
        idx = 0
        s = 0
        while uint32(idx) < uint256(sub_2655c1b9[address(arg1)]):
            mem[0] = sha3(address(arg1), 8)
            if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) <= 0:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) < 1:
                revert with 0, 17
            if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_40) - arg1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            _72 = mem[64]
            mem[64] = mem[64] + 256
            mem[_72] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_0)
            mem[_72 + 32] = uint8(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)
            mem[_72 + 64] = address(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_40)
            mem[_72 + 96] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_200)
            mem[_72 + 128] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256)
            mem[_72 + 160] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_288)
            mem[_72 + 192] = uint256(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_512)
            mem[_72 + 224] = uint256(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_768)
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint32(s)) + 128] = _72
            if not address(stor1.length):
                if not uint32(s) - test266151307():
                    revert with 0, 17
                if uint32(s) >= mem[96]:
                    revert with 0, 50
                mem[_72 + 192] = 10^18
            else:
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256)
                mem[mem[64] + 68] = block.timestamp
                staticcall address(stor1.length).0xd7e6c7e7 with:
                        gas gas_remaining wei
                       args address(arg1), uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256), block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not uint32(s) - test266151307():
                    revert with 0, 17
                if uint32(s) >= mem[96]:
                    revert with 0, 50
                mem[_72 + 192] = mem[_87]
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            continue 
        _55 = mem[64]
        mem[mem[64]] = 32
        _57 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _57:
            _105 = mem[s]
            mem[t] = mem[mem[s] + 28 len 4]
            mem[t + 32] = mem[_105 + 63 len 1]
            mem[t + 64] = mem[_105 + 76 len 20]
            mem[t + 96] = mem[_105 + 124 len 4]
            mem[t + 128] = mem[_105 + 156 len 4]
            mem[t + 160] = mem[_105 + 188 len 4]
            mem[t + 192] = mem[_105 + 192]
            mem[t + 224] = mem[_105 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 256
            continue 
        return memory
          from mem[64]
           len _55 + (256 * _57) + -mem[64] + 64
    mem[64] = (32 * sub_d1b43593[address(arg1)]) + 384
    mem[(32 * sub_d1b43593[address(arg1)]) + 128] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 160] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 192] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 224] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 256] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 288] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 320] = 0
    mem[(32 * sub_d1b43593[address(arg1)]) + 352] = 0
    mem[var15001] = (32 * sub_d1b43593[address(arg1)]) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * sub_d1b43593[address(arg1)]) + 128] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 160] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 192] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 224] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 256] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 288] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 320] = 0
        mem[(32 * sub_d1b43593[address(arg1)]) + 352] = 0
        mem[s + 32] = (32 * sub_d1b43593[address(arg1)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = arg1
    mem[32] = 8
    idx = 0
    s = 0
    while uint32(idx) < uint256(sub_2655c1b9[address(arg1)]):
        mem[0] = sha3(address(arg1), 8)
        if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) <= 0:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) < 1:
            revert with 0, 17
        if uint256(sub_2655c1b9[address(arg1)][uint32(idx)]) - 1 >= sub_74bf71c5.length:
            revert with 0, 50
        mem[0] = 7
        if address(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_40) - arg1:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        _154 = mem[64]
        mem[64] = mem[64] + 256
        mem[_154] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_0)
        mem[_154 + 32] = uint8(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_32)
        mem[_154 + 64] = address(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_40)
        mem[_154 + 96] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_200)
        mem[_154 + 128] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256)
        mem[_154 + 160] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_288)
        mem[_154 + 192] = uint256(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_512)
        mem[_154 + 224] = uint256(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_768)
        if uint32(s) >= mem[96]:
            revert with 0, 50
        mem[(32 * uint32(s)) + 128] = _154
        if not address(stor1.length):
            if not uint32(s) - test266151307():
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[_154 + 192] = 10^18
        else:
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256)
            mem[mem[64] + 68] = block.timestamp
            staticcall address(stor1.length).0xd7e6c7e7 with:
                    gas gas_remaining wei
                   args address(arg1), uint32(sub_74bf71c5[uint256(stor8[address(arg1)][uint32(idx)]) - 1].field_256), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not uint32(s) - test266151307():
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[_154 + 192] = mem[_158]
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = uint32(s) + 1
        continue 
    _140 = mem[64]
    mem[mem[64]] = 32
    _142 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _142:
        _164 = mem[s]
        mem[t] = mem[mem[s] + 28 len 4]
        mem[t + 32] = mem[_164 + 63 len 1]
        mem[t + 64] = mem[_164 + 76 len 20]
        mem[t + 96] = mem[_164 + 124 len 4]
        mem[t + 128] = mem[_164 + 156 len 4]
        mem[t + 160] = mem[_164 + 188 len 4]
        mem[t + 192] = mem[_164 + 192]
        mem[t + 224] = mem[_164 + 224]
        idx = idx + 1
        s = s + 32
        t = t + 256
        continue 
    return memory
      from mem[64]
       len _140 + (256 * _142) + -mem[64] + 64
}

function claim() payable {
    mem[64] = 96
    require not msg.value
    if stor15[msg.sender]:
        revert with 0, 'Blacklisted'
    mem[0] = msg.sender
    mem[32] = 8
    idx = 0
    s = 0
    while uint32(idx) < uint256(sub_2655c1b9[msg.sender]):
        mem[0] = sha3(msg.sender, 8)
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) <= 0:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) < 1:
            revert with 0, 17
        if uint256(sub_2655c1b9[msg.sender][uint32(idx)]) - 1 >= sub_74bf71c5.length:
            revert with 0, 50
        mem[0] = 7
        if address(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_40) != msg.sender:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288) > -sub_8e6a1bc2 + test266151307():
            revert with 0, 17
        if uint32(sub_8e6a1bc2 + uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_288)) <= uint32(block.timestamp):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if not address(stor1.length):
            if uint8(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
                revert with 0, 17
            if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
                revert with 0, 17
            if (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)):
                revert with 0, 17
            if not uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024):
                revert with 0, 18
            if (10^18 * block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768):
                revert with 0, 17
            if s > !(((10^18 * block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)):
                revert with 0, 17
            uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768) = 0
            uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) = uint32(block.timestamp)
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s + ((10^18 * block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)
            continue 
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256)
        mem[mem[64] + 68] = block.timestamp
        staticcall address(stor1.length).0xd7e6c7e7 with:
                gas gas_remaining wei
               args msg.sender, uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256), block.timestamp
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _27 = mem[_26]
        if uint8(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32) >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
            revert with 0, 17
        if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256):
            revert with 0, 17
        if (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) and _27 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768)):
            revert with 0, 17
        if not uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024):
            revert with 0, 18
        if (block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _27) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _27) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768):
            revert with 0, 17
        if s > !(((block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _27) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _27) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)):
            revert with 0, 17
        uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768) = 0
        uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) = uint32(block.timestamp)
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = s + ((block.timestamp * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _27) - (uint32(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_768) * _27) / 10^18 / uint32(stor4[uint8(stor7[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_32)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[msg.sender][uint32(idx)]) - 1].field_768)
        continue 
    if s <= 0:
        revert with 0, 'No claimable tokens'
    mem[0] = msg.sender
    mem[32] = 13
    if sub_b2dd3b37[msg.sender] > !s:
        revert with 0, 17
    sub_b2dd3b37[msg.sender] += s
    if rewardsTotal > !s:
        revert with 0, 17
    rewardsTotal += s
    if not claimFee:
        mem[mem[64] + 4] = rewardsPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsPoolAddress, msg.sender, s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_22] == bool(mem[_22])
    else:
        if s and claimFee > -1 / s:
            revert with 0, 17
        if s < s * claimFee / 10000:
            revert with 0, 17
        mem[mem[64] + 4] = rewardsPoolAddress
        mem[mem[64] + 36] = sub_919df198Address
        mem[mem[64] + 68] = s * claimFee / 10000
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsPoolAddress, sub_919df198Address, s * claimFee / 10000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == bool(mem[_31])
        mem[mem[64] + 4] = rewardsPoolAddress
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = s - (s * claimFee / 10000)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsPoolAddress, msg.sender, s - (s * claimFee / 10000)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_36] == bool(mem[_36])
}

function sub_2dbc78e8(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == uint32(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while uint32(idx) < ('cd', 4).length:
        if uint32(idx) >= mem[96]:
            revert with 0, 50
        _90 = mem[(32 * uint32(idx)) + 128]
        if mem[(32 * uint32(idx)) + 156 len 4] <= 0:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if mem[(32 * uint32(idx)) + 156 len 4] < 1:
            revert with 0, 17
        if mem[(32 * uint32(idx)) + 156 len 4] - 1 >= sub_74bf71c5.length:
            revert with 0, 50
        mem[0] = 7
        if not address(sub_74bf71c5[mem[(32 * uint32(idx)) + 156 len 4] - 1].field_40):
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        mem[0] = address(sub_74bf71c5[mem[(32 * uint32(idx)) + 156 len 4] - 1].field_40)
        _92 = sha3(address(sub_74bf71c5[mem[(32 * uint32(idx)) + 156 len 4] - 1].field_40), 8)
        t = 0
        while uint32(t) < uint256(stor[_92]):
            mem[0] = _92
            if uint32(_90) - uint256(stor[sha3(_92) + uint32(t)]):
                if not uint32(t) - test266151307():
                    revert with 0, 17
                t = uint32(t) + 1
                continue 
            if uint32(t) >= uint256(stor[_92]):
                revert with 0, 50
            uint256(stor[sha3(_92) + uint32(t)]) = 0
            mem[32] = 10
            if not sub_d1b43593[address(stor7[uint32(_90) - 1].field_0)]:
                revert with 0, 17
            sub_d1b43593[address(stor7[uint32(_90) - 1].field_0)] = uint32(sub_d1b43593[address(stor7[uint32(_90) - 1].field_0)] - 1)
            address(sub_74bf71c5[uint32(_90) - 1].field_40) = 0
            uint32(sub_74bf71c5[uint32(_90) - 1].field_256) = 0
            if uint8(sub_74bf71c5[uint32(_90) - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            _136 = mem[64]
            if bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256):
                if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5)] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                else:
                    if bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) != 1:
                        mem[0] = 11
                        if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                    else:
                        mem[0] = (6 * uint8(sub_74bf71c5[uint32(_90) - 1].field_32)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5:
                            mem[t + _136] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5)] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _136 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
            else:
                if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) - (stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))
                    mem[mem[64] + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                else:
                    if bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) != 1:
                        mem[0] = 11
                        if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                    else:
                        mem[0] = (6 * uint8(sub_74bf71c5[uint32(_90) - 1].field_32)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128:
                            mem[t + _136] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _136 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
            if not uint32(s) - test266151307():
                revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            continue 
        mem[32] = 10
        if not sub_d1b43593[address(stor7[uint32(_90) - 1].field_0)]:
            revert with 0, 17
        sub_d1b43593[address(stor7[uint32(_90) - 1].field_0)] = uint32(sub_d1b43593[address(stor7[uint32(_90) - 1].field_0)] - 1)
        address(sub_74bf71c5[uint32(_90) - 1].field_40) = 0
        uint32(sub_74bf71c5[uint32(_90) - 1].field_256) = 0
        if uint8(sub_74bf71c5[uint32(_90) - 1].field_32) >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        _133 = mem[64]
        if bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256):
            if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))
                mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5)] = 11
                if not uint32(stor[sha3(mem[mem[64] len _133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                    revert with 0, 17
                uint32(stor[sha3(mem[mem[64] len _133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
            else:
                if bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) != 1:
                    mem[0] = 11
                    if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                else:
                    mem[0] = (6 * uint8(sub_74bf71c5[uint32(_90) - 1].field_32)) + sha3(4) + 1
                    t = 0
                    u = sha3(mem[0])
                    while t < uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5:
                        mem[t + _133] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5)] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _133 + (uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
        else:
            if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) - (stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))
                mem[mem[64] + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128] = 11
                if not uint32(stor[sha3(mem[mem[64] len _133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                    revert with 0, 17
                uint32(stor[sha3(mem[mem[64] len _133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
            else:
                if bool(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256) != 1:
                    mem[0] = 11
                    if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                else:
                    mem[0] = (6 * uint8(sub_74bf71c5[uint32(_90) - 1].field_32)) + sha3(4) + 1
                    t = 0
                    u = sha3(mem[0])
                    while t < stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128:
                        mem[t + _133] = uint256(stor[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _133 + stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
        if not uint32(s) - test266151307():
            revert with 0, 17
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        s = uint32(s) + 1
        continue 
    if sub_d33953bb < uint32(s):
        revert with 0, 17
    sub_d33953bb = uint32(sub_d33953bb - uint32(s))
}

function sub_c722e0f9(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    mem[0] = msg.sender
    if stor15[msg.sender]:
        revert with 0, 'Blacklisted'
    idx = 0
    while uint32(idx) < sub_74bf71c5.length:
        mem[0] = 7
        if address(sub_74bf71c5[4 * uint32(idx)].field_40):
            if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) > -sub_8e6a1bc2 + test266151307():
                revert with 0, 17
            if uint32(sub_8e6a1bc2 + uint32(sub_74bf71c5[4 * uint32(idx)].field_288)) < uint32(block.timestamp):
                mem[32] = 10
                if not sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)]:
                    revert with 0, 17
                sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] - 1)
                address(sub_74bf71c5[4 * uint32(idx)].field_40) = 0
                uint32(sub_74bf71c5[4 * uint32(idx)].field_256) = 0
                if uint8(sub_74bf71c5[4 * uint32(idx)].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                _116 = mem[64]
                if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                        mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5:
                                mem[s + _116] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _116 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                else:
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                        mem[mem[64] + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128:
                                mem[s + _116] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _116 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                if not sub_d33953bb:
                    revert with 0, 17
                sub_d33953bb = uint32(sub_d33953bb - 1)
        if not uint32(idx) - test266151307():
            revert with 0, 17
        idx = uint32(idx) + 1
        continue 
    if uint32(arg1) < 1:
        revert with 0, 17
    if uint32(uint32(arg1) - 1) >= sub_74bf71c5.length:
        revert with 0, 50
    if address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40):
        mem[0] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
        mem[32] = 8
        idx = 0
        while uint32(idx) < uint256(sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]):
            mem[0] = sha3(address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), 8)
            if uint32(arg1) - uint256(sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)][uint32(idx)]):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                continue 
            if uint32(idx) >= uint256(sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]):
                revert with 0, 50
            uint256(sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)][uint32(idx)]) = 0
            mem[32] = 10
            if not sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]:
                revert with 0, 17
            sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] - 1)
            address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40) = 0
            uint32(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_256) = 0
            if uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            _223 = mem[64]
            if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5)] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
                    if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                    mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _279 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_279] == bool(mem[_279])
                else:
                    if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                        mem[0] = 11
                        if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        if not sub_d33953bb:
                            revert with 0, 17
                        sub_d33953bb = uint32(sub_d33953bb - 1)
                        if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = rewardsPoolAddress
                        mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                        mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _284 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_284] == bool(mem[_284])
                    else:
                        mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32)) + sha3(4) + 1
                        idx = 0
                        s = sha3(mem[0])
                        while idx < uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5:
                            mem[idx + _223] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5)] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _223 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                        if not sub_d33953bb:
                            revert with 0, 17
                        sub_d33953bb = uint32(sub_d33953bb - 1)
                        if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = rewardsPoolAddress
                        mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                        mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _318 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_318] == bool(mem[_318])
            else:
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                    mem[mem[64] + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
                    if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                    mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _285 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_285] == bool(mem[_285])
                else:
                    if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                        mem[0] = 11
                        if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        if not sub_d33953bb:
                            revert with 0, 17
                        sub_d33953bb = uint32(sub_d33953bb - 1)
                        if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = rewardsPoolAddress
                        mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                        mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_291] == bool(mem[_291])
                    else:
                        mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32)) + sha3(4) + 1
                        idx = 0
                        s = sha3(mem[0])
                        while idx < stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128:
                            mem[idx + _223] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[_223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _223 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                        if not sub_d33953bb:
                            revert with 0, 17
                        sub_d33953bb = uint32(sub_d33953bb - 1)
                        if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                            revert with 0, 17
                        mem[mem[64] + 4] = rewardsPoolAddress
                        mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                        mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _319 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_319] == bool(mem[_319])
        mem[32] = 10
        if not sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]:
            revert with 0, 17
        sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] - 1)
        address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40) = 0
        uint32(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_256) = 0
        if uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32) >= stor4.length:
            revert with 0, 50
        mem[0] = 4
        _220 = mem[64]
        if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5)] = 11
                if not uint32(stor[sha3(mem[mem[64] len _220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                    revert with 0, 17
                uint32(stor[sha3(mem[mem[64] len _220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                if not sub_d33953bb:
                    revert with 0, 17
                sub_d33953bb = uint32(sub_d33953bb - 1)
                if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                    revert with 0, 17
                mem[mem[64] + 4] = rewardsPoolAddress
                mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_257] == bool(mem[_257])
            else:
                if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                    mem[0] = 11
                    if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
                    if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                    mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_261] == bool(mem[_261])
                else:
                    mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32)) + sha3(4) + 1
                    idx = 0
                    s = 0
                    while idx < uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5:
                        mem[idx + _220] = uint256(stor[s + sha3(mem[0])])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5)] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _220 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
                    if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                    mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_316] == bool(mem[_316])
        else:
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                mem[mem[64] + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128] = 11
                if not uint32(stor[sha3(mem[mem[64] len _220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                    revert with 0, 17
                uint32(stor[sha3(mem[mem[64] len _220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                if not sub_d33953bb:
                    revert with 0, 17
                sub_d33953bb = uint32(sub_d33953bb - 1)
                if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                    revert with 0, 17
                mem[mem[64] + 4] = rewardsPoolAddress
                mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_262] == bool(mem[_262])
            else:
                if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                    mem[0] = 11
                    if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
                    if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                    mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_268] == bool(mem[_268])
                else:
                    mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32)) + sha3(4) + 1
                    idx = 0
                    s = 0
                    while idx < stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128:
                        mem[idx + _220] = uint256(stor[s + sha3(mem[0])])
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[_220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128] = 11
                    if not uint32(stor[sha3(mem[mem[64] len _220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[mem[64] len _220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _220 + stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
                    if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                        revert with 0, 17
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40)
                    mem[mem[64] + 68] = uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_317] == bool(mem[_317])
}

function sub_dbe2b8ce(?) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len arg2.length] = arg2[all]
    mem[ceil32(ceil32(arg1.length)) + arg2.length + 129] = 0
    require arg5 == uint32(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[arg1.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 5
    if not uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]):
        revert with 0, 'Old tier's name is incorrect'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = arg2.length
    if ceil32(arg1.length) <= arg1.length:
        if ceil32(arg2.length) <= arg2.length:
            _3753 = sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len arg2.length])
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 0
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = arg1.length
            if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) != _3753:
                revert with 0, 'New tier's name is incorrect'
        else:
            _3757 = sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len arg2.length])
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 0
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = arg1.length
            if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) != _3757:
                revert with 0, 'New tier's name is incorrect'
    else:
        if ceil32(arg2.length) <= arg2.length:
            _3761 = sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len arg2.length])
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 0
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = arg1.length
            if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) != _3761:
                revert with 0, 'New tier's name is incorrect'
        else:
            _3765 = sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130 len arg2.length])
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            if ceil32(arg1.length) > arg1.length:
                mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 0
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 130] = arg1.length
            if sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * arg1.length) - 256) != _3765:
                revert with 0, 'New tier's name is incorrect'
    if arg3 <= 0:
        revert with 0, 'Tier's price has to be positive'
    if arg4 <= 0:
        revert with 0, 'Tier's rewards has to be positive'
    if uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) < 1:
        revert with 0, 17
    if uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1) >= stor4.length:
        revert with 0, 50
    if bool(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256):
        if not bool(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256) - (uint255(uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256)) * 0.5 < 32):
            revert with 0, 34
        if not arg2.length:
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256) = 0
            idx = 0
            while (uint255(uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_512) = arg3
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_768) = arg4
            uint32(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1024) = uint32(arg5)
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1280) = arg6
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            mem[(2 * arg2.length) + arg1.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 5
            uint8(stor[mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 162 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256) = (2 * arg2.length) + 1
            if arg2.length <= 0:
                idx = 0
                while (uint255(uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256)) * 0.5) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor[sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = mem[ceil32(ceil32(arg1.length)) + 129]
                s = 1
                idx = ceil32(ceil32(arg1.length)) + 161
                while ceil32(ceil32(arg1.length)) + arg2.length + 129 > idx:
                    uint256(stor[s + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg2.length - 1) >> 5) + 1
                while (uint255(uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256)) * 0.5) + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_512) = arg3
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_768) = arg4
            uint32(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1024) = uint32(arg5)
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1280) = arg6
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            mem[(2 * arg2.length) + arg1.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 5
            uint8(stor[mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 162 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    else:
        if not bool(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256) - (stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_257 % 128 < 32):
            revert with 0, 34
        if not arg2.length:
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256) = 0
            idx = 0
            while stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_257 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = 0
                idx = idx + 1
                continue 
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_512) = arg3
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_768) = arg4
            uint32(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1024) = uint32(arg5)
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1280) = arg6
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            mem[(2 * arg2.length) + arg1.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 5
            uint8(stor[mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 162 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        else:
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_256) = (2 * arg2.length) + 1
            if arg2.length <= 0:
                idx = 0
                while stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_257 % 128 + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor[sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = mem[ceil32(ceil32(arg1.length)) + 129]
                s = 1
                idx = ceil32(ceil32(arg1.length)) + 161
                while ceil32(ceil32(arg1.length)) + arg2.length + 129 > idx:
                    uint256(stor[s + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg2.length - 1) >> 5) + 1
                while stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_257 % 128 + 31 / 32 > idx:
                    uint256(stor[idx + sha3((6 * uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)) + ('name', 'stor4', 4) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_512) = arg3
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_768) = arg4
            uint32(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1024) = uint32(arg5)
            uint256(stor4[uint8(uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) - 1)].field_1280) = arg6
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256
            mem[(2 * arg2.length) + arg1.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 5
            uint8(stor[mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 162 len arg2.length + -ceil32(arg2.length) + 32]][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
            mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    mem[(2 * arg1.length) + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 162] = 5
    uint8(stor[mem[arg1.length + arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(arg1.length) + 162 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) = 0
}

function sub_563e497c(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg1.length)) + 97
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == uint32(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor15[address(arg3)]:
        revert with 0, 'Blacklisted origin'
    if stor15[address(arg4)]:
        revert with 0, 'Blacklisted recipient'
    if stor15[address(arg4)]:
        revert with 0, 'Blacklisted recipient'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 5
    if ceil32(arg1.length) <= arg1.length:
        _154 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[0] = address(arg4)
        if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
            revert with 0, 17
        if uint32(uint32(arg2) + sub_d1b43593[address(arg4)]) > sub_0a3eccf2:
            revert with 0, 'Cannot create more nodes'
        idx = 0
        while uint32(idx) < sub_74bf71c5.length:
            mem[0] = 7
            if address(sub_74bf71c5[4 * uint32(idx)].field_40):
                if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) > -sub_8e6a1bc2 + test266151307():
                    revert with 0, 17
                if uint32(sub_8e6a1bc2 + uint32(sub_74bf71c5[4 * uint32(idx)].field_288)) < uint32(block.timestamp):
                    mem[32] = 10
                    if not sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)]:
                        revert with 0, 17
                    sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] - 1)
                    address(sub_74bf71c5[4 * uint32(idx)].field_40) = 0
                    uint32(sub_74bf71c5[4 * uint32(idx)].field_256) = 0
                    if uint8(sub_74bf71c5[4 * uint32(idx)].field_32) >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    _309 = mem[64]
                    if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                            mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                            mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                        else:
                            if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                                mem[0] = 11
                                if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                            else:
                                mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5:
                                    mem[s + _309] = uint256(stor[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                                if not uint32(stor[sha3(mem[mem[64] len _309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len _309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _309 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    else:
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 < 32):
                            revert with 0, 34
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                            mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                            mem[mem[64] + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                        else:
                            if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                                mem[0] = 11
                                if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                            else:
                                mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                                s = 0
                                t = sha3(mem[0])
                                while s < stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128:
                                    mem[s + _309] = uint256(stor[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                                if not uint32(stor[sha3(mem[mem[64] len _309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len _309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _309 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
        if uint8(stor[_154]) < 1:
            revert with 0, 17
        if uint8(uint8(stor[_154]) - 1) >= stor4.length:
            revert with 0, 50
        mem[32] = 8
        mem[0] = address(arg4)
        idx = 0
        s = 0
        t = 0
        while uint32(idx) < uint256(sub_2655c1b9[address(arg3)]):
            mem[0] = sha3(address(arg3), 8)
            if uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) <= 0:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) < 1:
                revert with 0, 17
            if uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_40) != address(arg3):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if uint8(stor[_154]) < 1:
                revert with 0, 17
            if uint8(uint8(stor[_154]) - 1) != uint8(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_32):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            address(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_40) = address(arg4)
            if not address(stor1.length):
                if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if ((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) and 10^18 > -1 / ((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if s > !((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                uint256(sub_2655c1b9[address(arg4)])++
                uint256(sub_2655c1b9[address(arg4)][uint256(sub_2655c1b9[address(arg4)])]) = uint256(sub_2655c1b9[address(arg3)][uint32(idx)])
                if uint32(idx) >= uint256(sub_2655c1b9[address(arg3)]):
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    t = uint32(t) + 1
                    continue 
                if uint32(uint32(t) + 1) != uint32(arg2):
                    revert with 0, 'Not enough nodes'
                if sub_d1b43593[address(arg3)] < uint32(arg2):
                    revert with 0, 17
                sub_d1b43593[address(arg3)] = uint32(sub_d1b43593[address(arg3)] - uint32(arg2))
                if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
                    revert with 0, 17
                sub_d1b43593[address(arg4)] = uint32(uint32(arg2) + sub_d1b43593[address(arg4)])
                if s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    if rewardsTotal > !(s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_501] == bool(mem[_501])
            else:
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256)
                mem[mem[64] + 68] = block.timestamp
                staticcall address(stor1.length).0xd7e6c7e7 with:
                        gas gas_remaining wei
                       args address(arg3), uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256), block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _452 = mem[_447]
                if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if ((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) and mem[_447] > -1 / ((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if s > !(((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * mem[_447]) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * mem[_447]) / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                uint256(sub_2655c1b9[address(arg4)])++
                uint256(sub_2655c1b9[address(arg4)][uint256(sub_2655c1b9[address(arg4)])]) = uint256(sub_2655c1b9[address(arg3)][uint32(idx)])
                if uint32(idx) >= uint256(sub_2655c1b9[address(arg3)]):
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)
                    t = uint32(t) + 1
                    continue 
                if uint32(uint32(t) + 1) != uint32(arg2):
                    revert with 0, 'Not enough nodes'
                if sub_d1b43593[address(arg3)] < uint32(arg2):
                    revert with 0, 17
                sub_d1b43593[address(arg3)] = uint32(sub_d1b43593[address(arg3)] - uint32(arg2))
                if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
                    revert with 0, 17
                sub_d1b43593[address(arg4)] = uint32(uint32(arg2) + sub_d1b43593[address(arg4)])
                if s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)
                    if rewardsTotal > !(s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_154]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_154]) - 1)].field_1024) * _452) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _452) / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _509 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_509] == bool(mem[_509])
            emit 0x8a091ff4: address(arg3), address(arg4), uint32(arg2)
        if uint32(t) != uint32(arg2):
            revert with 0, 'Not enough nodes'
        if sub_d1b43593[address(arg3)] < uint32(arg2):
            revert with 0, 17
        sub_d1b43593[address(arg3)] = uint32(sub_d1b43593[address(arg3)] - uint32(arg2))
        if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
            revert with 0, 17
        sub_d1b43593[address(arg4)] = uint32(uint32(arg2) + sub_d1b43593[address(arg4)])
        if s > 0:
            mem[0] = address(arg3)
            mem[32] = 13
            if sub_b2dd3b37[address(arg3)] > !s:
                revert with 0, 17
            sub_b2dd3b37[address(arg3)] += s
            if rewardsTotal > !s:
                revert with 0, 17
            rewardsTotal += s
            mem[mem[64] + 4] = rewardsPoolAddress
            mem[mem[64] + 36] = address(arg3)
            mem[mem[64] + 68] = s
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, address(arg3), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _451 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_451] == bool(mem[_451])
    else:
        _157 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[0] = address(arg4)
        if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
            revert with 0, 17
        if uint32(uint32(arg2) + sub_d1b43593[address(arg4)]) > sub_0a3eccf2:
            revert with 0, 'Cannot create more nodes'
        idx = 0
        while uint32(idx) < sub_74bf71c5.length:
            mem[0] = 7
            if address(sub_74bf71c5[4 * uint32(idx)].field_40):
                if uint32(sub_74bf71c5[4 * uint32(idx)].field_288) > -sub_8e6a1bc2 + test266151307():
                    revert with 0, 17
                if uint32(sub_8e6a1bc2 + uint32(sub_74bf71c5[4 * uint32(idx)].field_288)) < uint32(block.timestamp):
                    mem[32] = 10
                    if not sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)]:
                        revert with 0, 17
                    sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(idx)].field_0)] - 1)
                    address(sub_74bf71c5[4 * uint32(idx)].field_40) = 0
                    uint32(sub_74bf71c5[4 * uint32(idx)].field_256) = 0
                    if uint8(sub_74bf71c5[4 * uint32(idx)].field_32) >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    _312 = mem[64]
                    if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                            mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                            mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                        else:
                            if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                                mem[0] = 11
                                if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                            else:
                                mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                                s = 0
                                t = sha3(mem[0])
                                while s < uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5:
                                    mem[s + _312] = uint256(stor[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5)] = 11
                                if not uint32(stor[sha3(mem[mem[64] len _312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len _312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _312 + (uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                    else:
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 < 32):
                            revert with 0, 34
                        if not bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256):
                            mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))
                            mem[mem[64] + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                        else:
                            if bool(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256) != 1:
                                mem[0] = 11
                                if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                            else:
                                mem[0] = (6 * uint8(sub_74bf71c5[4 * uint32(idx)].field_32)) + sha3(4) + 1
                                s = 0
                                t = sha3(mem[0])
                                while s < stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128:
                                    mem[s + _312] = uint256(stor[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                                mem[_312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128] = 11
                                if not uint32(stor[sha3(mem[mem[64] len _312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                    revert with 0, 17
                                uint32(stor[sha3(mem[mem[64] len _312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _312 + stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    if not sub_d33953bb:
                        revert with 0, 17
                    sub_d33953bb = uint32(sub_d33953bb - 1)
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
        if uint8(stor[_157]) < 1:
            revert with 0, 17
        if uint8(uint8(stor[_157]) - 1) >= stor4.length:
            revert with 0, 50
        mem[32] = 8
        mem[0] = address(arg4)
        idx = 0
        s = 0
        t = 0
        while uint32(idx) < uint256(sub_2655c1b9[address(arg3)]):
            mem[0] = sha3(address(arg3), 8)
            if uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) <= 0:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) < 1:
                revert with 0, 17
            if uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_40) != address(arg3):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if uint8(stor[_157]) < 1:
                revert with 0, 17
            if uint8(uint8(stor[_157]) - 1) != uint8(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_32):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            address(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_40) = address(arg4)
            if not address(stor1.length):
                if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if ((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) and 10^18 > -1 / ((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if s > !((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                uint256(sub_2655c1b9[address(arg4)])++
                uint256(sub_2655c1b9[address(arg4)][uint256(sub_2655c1b9[address(arg4)])]) = uint256(sub_2655c1b9[address(arg3)][uint32(idx)])
                if uint32(idx) >= uint256(sub_2655c1b9[address(arg3)]):
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    t = uint32(t) + 1
                    continue 
                if uint32(uint32(t) + 1) != uint32(arg2):
                    revert with 0, 'Not enough nodes'
                if sub_d1b43593[address(arg3)] < uint32(arg2):
                    revert with 0, 17
                sub_d1b43593[address(arg3)] = uint32(sub_d1b43593[address(arg3)] - uint32(arg2))
                if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
                    revert with 0, 17
                sub_d1b43593[address(arg4)] = uint32(uint32(arg2) + sub_d1b43593[address(arg4)])
                if s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    if rewardsTotal > !(s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + ((10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + (10^18 * uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768)) / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_502] == bool(mem[_502])
            else:
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256)
                mem[mem[64] + 68] = block.timestamp
                staticcall address(stor1.length).0xd7e6c7e7 with:
                        gas gas_remaining wei
                       args address(arg3), uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256), block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_448]
                if block.timestamp < uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) and uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) > !uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if ((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) and mem[_448] > -1 / ((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024)) + uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768):
                    revert with 0, 17
                if s > !(((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * mem[_448]) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * mem[_448]) / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                uint256(sub_2655c1b9[address(arg4)])++
                uint256(sub_2655c1b9[address(arg4)][uint256(sub_2655c1b9[address(arg4)])]) = uint256(sub_2655c1b9[address(arg3)][uint32(idx)])
                if uint32(idx) >= uint256(sub_2655c1b9[address(arg3)]):
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                uint256(sub_2655c1b9[address(arg3)][uint32(idx)]) = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)
                    t = uint32(t) + 1
                    continue 
                if uint32(uint32(t) + 1) != uint32(arg2):
                    revert with 0, 'Not enough nodes'
                if sub_d1b43593[address(arg3)] < uint32(arg2):
                    revert with 0, 17
                sub_d1b43593[address(arg3)] = uint32(sub_d1b43593[address(arg3)] - uint32(arg2))
                if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
                    revert with 0, 17
                sub_d1b43593[address(arg4)] = uint32(uint32(arg2) + sub_d1b43593[address(arg4)])
                if s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)
                    if rewardsTotal > !(s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + (((block.timestamp * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) - (uint32(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_256) * uint256(stor4[uint8(uint8(stor[_157]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_157]) - 1)].field_1024) * _454) + (uint256(sub_74bf71c5[uint256(stor8[address(arg3)][uint32(idx)]) - 1].field_768) * _454) / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_510] == bool(mem[_510])
            emit 0x8a091ff4: address(arg3), address(arg4), uint32(arg2)
        if uint32(t) != uint32(arg2):
            revert with 0, 'Not enough nodes'
        if sub_d1b43593[address(arg3)] < uint32(arg2):
            revert with 0, 17
        sub_d1b43593[address(arg3)] = uint32(sub_d1b43593[address(arg3)] - uint32(arg2))
        if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
            revert with 0, 17
        sub_d1b43593[address(arg4)] = uint32(uint32(arg2) + sub_d1b43593[address(arg4)])
        if s > 0:
            mem[0] = address(arg3)
            mem[32] = 13
            if sub_b2dd3b37[address(arg3)] > !s:
                revert with 0, 17
            sub_b2dd3b37[address(arg3)] += s
            if rewardsTotal > !s:
                revert with 0, 17
            rewardsTotal += s
            mem[mem[64] + 4] = rewardsPoolAddress
            mem[mem[64] + 36] = address(arg3)
            mem[mem[64] + 68] = s
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, address(arg3), s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_453] == bool(mem[_453])
    emit 0x8a091ff4: address(arg3), address(arg4), uint32(arg2)
}

function sub_9538d25f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(ceil32(arg1.length)) + 97] = 0
    mem[ceil32(ceil32(arg1.length)) + 129] = 96
    mem[ceil32(ceil32(arg1.length)) + 161] = 0
    mem[ceil32(ceil32(arg1.length)) + 193] = 0
    mem[ceil32(ceil32(arg1.length)) + 225] = 0
    mem[ceil32(ceil32(arg1.length)) + 257] = 0
    mem[64] = ceil32(ceil32(arg1.length)) + 481
    mem[ceil32(ceil32(arg1.length)) + 289] = 0
    mem[ceil32(ceil32(arg1.length)) + 321] = 96
    mem[ceil32(ceil32(arg1.length)) + 353] = 0
    mem[ceil32(ceil32(arg1.length)) + 385] = 0
    mem[ceil32(ceil32(arg1.length)) + 417] = 0
    mem[ceil32(ceil32(arg1.length)) + 449] = 0
    idx = 0
    s = ceil32(ceil32(arg1.length)) + 289
    while uint8(idx) < stor4.length:
        mem[0] = 4
        _157 = mem[64]
        _160 = mem[96]
        t = 0
        while t < _160:
            mem[t + _157 + 32] = mem[t + 128]
            t = t + 32
            continue 
        if ceil32(_160) <= _160:
            _316 = mem[64]
            mem[mem[64]] = _160 + _157 - mem[64]
            mem[64] = _160 + _157 + 32
            _318 = sha3(mem[_316 + 32 len mem[_316]])
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[_160 + _157 + 64] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[_160 + _157 + 32] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    if sha3(mem[_160 + _157 + 64 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]) - _318:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                        mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                        mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = stor4[uint8(idx)].field_257 % 128
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + Mask(254, 1, uint256(stor4[uint8(idx)].field_256)) + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + stor4[uint8(idx)].field_257 % 128 + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if bool(stor4[uint8(idx)].field_256) != 1:
                    mem[_160 + _157 + 32] = -_160 + -_157 - 64
                    mem[64] = 0
                    if sha3(mem[_160 + _157 + 64 len -_160 + -_157 - 64]) - _318:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    mem[0] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        mem[192] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        mem[192] = stor4[uint8(idx)].field_257 % 128
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while stor4[uint8(idx)].field_257 % 128 + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[32] = 192
                    mem[64] = uint256(stor4[uint8(idx)].field_512)
                    mem[96] = uint256(stor4[uint8(idx)].field_768)
                    mem[128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = 0
                    continue 
                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                t = 0
                u = sha3((6 * uint8(idx)) + sha3(4) + 1)
                while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                    mem[t + _160 + _157 + 64] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                _450 = mem[64]
                mem[mem[64]] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32
                mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                if sha3(mem[_450 + 32 len mem[_450]]) - _318:
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = s
                    continue 
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64] = uint8(stor4[uint8(idx)].field_0)
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + Mask(254, 1, uint256(stor4[uint8(idx)].field_256)) + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + stor4[uint8(idx)].field_257 % 128 + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = stor4[uint8(idx)].field_257 % 128
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                        if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        else:
                            mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                            mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                            s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                            t = sha3(mem[0])
                            while _160 + _157 + Mask(254, 1, uint256(stor4[uint8(idx)].field_256)) + 256 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not stor4[uint8(idx)].field_257 % 128:
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if 31 >= stor4[uint8(idx)].field_257 % 128:
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                t = _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 288
                u = sha3(mem[0])
                while _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + stor4[uint8(t)].field_257 % 128 + 256 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 256
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(t)].field_512)
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(t)].field_768)
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(t)].field_1024)
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(t)].field_1280)
                if not uint8(t) - 255:
                    revert with 0, 17
                t = uint8(t) + 1
                u = _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 64
                continue 
            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(idx)].field_256):
                mem[_160 + _157 + 64] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                mem[_160 + _157 + 32] = stor4[uint8(idx)].field_257 % 128
                mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                if sha3(mem[_160 + _157 + 64 len stor4[uint8(idx)].field_257 % 128]) - _318:
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = s
                    continue 
                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64] = uint8(stor4[uint8(idx)].field_0)
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                else:
                    if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = stor4[uint8(idx)].field_257 % 128
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                        if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        else:
                            mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                            s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                            t = sha3(mem[0])
                            while _160 + _157 + stor4[uint8(idx)].field_257 % 128 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                        revert with 0, 34
                    if stor4[uint8(idx)].field_257 % 128:
                        if 31 >= stor4[uint8(idx)].field_257 % 128:
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        else:
                            mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                            s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                            t = sha3(mem[0])
                            while _160 + _157 + (2 * stor4[uint8(idx)].field_257 % 128) + 256 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
            else:
                if bool(stor4[uint8(idx)].field_256) != 1:
                    mem[_160 + _157 + 32] = -_160 + -_157 - 64
                    mem[64] = 0
                    if sha3(mem[_160 + _157 + 64 len -_160 + -_157 - 64]) - _318:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    mem[0] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        mem[192] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        mem[192] = stor4[uint8(idx)].field_257 % 128
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while stor4[uint8(idx)].field_257 % 128 + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[32] = 192
                    mem[64] = uint256(stor4[uint8(idx)].field_512)
                    mem[96] = uint256(stor4[uint8(idx)].field_768)
                    mem[128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = 0
                    continue 
                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                t = 0
                u = sha3((6 * uint8(idx)) + sha3(4) + 1)
                while t < stor4[uint8(idx)].field_257 % 128:
                    mem[t + _160 + _157 + 64] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                _453 = mem[64]
                mem[mem[64]] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32
                mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                if sha3(mem[_453 + 32 len mem[_453]]) - _318:
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = s
                    continue 
                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64] = uint8(stor4[uint8(idx)].field_0)
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                                t = sha3(mem[0])
                                while _160 + _157 + stor4[uint8(idx)].field_257 % 128 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                        revert with 0, 34
                    if not stor4[uint8(idx)].field_257 % 128:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                    t = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 288
                    u = sha3(mem[0])
                    while _160 + _157 + (2 * stor4[uint8(t)].field_257 % 128) + 256 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 256
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 128] = uint256(stor4[uint8(t)].field_512)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 160] = uint256(stor4[uint8(t)].field_768)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 192] = uint32(stor4[uint8(t)].field_1024)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 224] = uint256(stor4[uint8(t)].field_1280)
                    if not uint8(t) - 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    u = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = stor4[uint8(idx)].field_257 % 128
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                    t = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 288
                    u = sha3(mem[0])
                    while _160 + _157 + stor4[uint8(t)].field_257 % 128 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 256 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 256
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 128] = uint256(stor4[uint8(t)].field_512)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 160] = uint256(stor4[uint8(t)].field_768)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 192] = uint32(stor4[uint8(t)].field_1024)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 224] = uint256(stor4[uint8(t)].field_1280)
                    if not uint8(t) - 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    u = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if stor4[uint8(idx)].field_257 % 128:
                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                        t = sha3(mem[0])
                        while _160 + _157 + (2 * stor4[uint8(idx)].field_257 % 128) + 256 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
        else:
            mem[_160 + _157 + 32] = 0
            _320 = mem[64]
            mem[mem[64]] = _160 + _157 - mem[64]
            mem[64] = _160 + _157 + 32
            _322 = sha3(mem[_320 + 32 len mem[_320]])
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[_160 + _157 + 64] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[_160 + _157 + 32] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    if sha3(mem[_160 + _157 + 64 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]) - _322:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                        mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                        mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = stor4[uint8(idx)].field_257 % 128
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + Mask(254, 1, uint256(stor4[uint8(idx)].field_256)) + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + stor4[uint8(idx)].field_257 % 128 + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if bool(stor4[uint8(idx)].field_256) != 1:
                    mem[_160 + _157 + 32] = -_160 + -_157 - 64
                    mem[64] = 0
                    if sha3(mem[_160 + _157 + 64 len -_160 + -_157 - 64]) - _322:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    mem[0] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        mem[192] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        mem[192] = stor4[uint8(idx)].field_257 % 128
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while stor4[uint8(idx)].field_257 % 128 + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[32] = 192
                    mem[64] = uint256(stor4[uint8(idx)].field_512)
                    mem[96] = uint256(stor4[uint8(idx)].field_768)
                    mem[128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = 0
                    continue 
                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                t = 0
                u = sha3((6 * uint8(idx)) + sha3(4) + 1)
                while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                    mem[t + _160 + _157 + 64] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                _456 = mem[64]
                mem[mem[64]] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32
                mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                if sha3(mem[_456 + 32 len mem[_456]]) - _322:
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = s
                    continue 
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64] = uint8(stor4[uint8(idx)].field_0)
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + Mask(254, 1, uint256(stor4[uint8(idx)].field_256)) + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                                t = sha3(mem[0])
                                while _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + stor4[uint8(idx)].field_257 % 128 + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                mem[64] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256] = stor4[uint8(idx)].field_257 % 128
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                        if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        else:
                            mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                            mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                            s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                            t = sha3(mem[0])
                            while _160 + _157 + Mask(254, 1, uint256(stor4[uint8(idx)].field_256)) + 256 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not stor4[uint8(idx)].field_257 % 128:
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                if 31 >= stor4[uint8(idx)].field_257 % 128:
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(idx)].field_512)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(idx)].field_768)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = _160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 64
                    continue 
                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                t = _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 288
                u = sha3(mem[0])
                while _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + stor4[uint8(t)].field_257 % 128 + 256 > t:
                    mem[t + 32] = uint256(stor1[u])
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 96] = _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 256
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 128] = uint256(stor4[uint8(t)].field_512)
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 160] = uint256(stor4[uint8(t)].field_768)
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 192] = uint32(stor4[uint8(t)].field_1024)
                mem[_160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 224] = uint256(stor4[uint8(t)].field_1280)
                if not uint8(t) - 255:
                    revert with 0, 17
                t = uint8(t) + 1
                u = _160 + _157 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 64
                continue 
            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(idx)].field_256):
                mem[_160 + _157 + 64] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                mem[_160 + _157 + 32] = stor4[uint8(idx)].field_257 % 128
                mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                if sha3(mem[_160 + _157 + 64 len stor4[uint8(idx)].field_257 % 128]) - _322:
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = s
                    continue 
                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64] = uint8(stor4[uint8(idx)].field_0)
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                else:
                    if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = stor4[uint8(idx)].field_257 % 128
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                        if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        else:
                            mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                            s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                            t = sha3(mem[0])
                            while _160 + _157 + stor4[uint8(idx)].field_257 % 128 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                        revert with 0, 34
                    if stor4[uint8(idx)].field_257 % 128:
                        if 31 >= stor4[uint8(idx)].field_257 % 128:
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        else:
                            mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                            mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                            s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                            t = sha3(mem[0])
                            while _160 + _157 + (2 * stor4[uint8(idx)].field_257 % 128) + 256 > s:
                                mem[s + 32] = uint256(stor1[t])
                                s = s + 32
                                t = t + 1
                                continue 
            else:
                if bool(stor4[uint8(idx)].field_256) != 1:
                    mem[_160 + _157 + 32] = -_160 + -_157 - 64
                    mem[64] = 0
                    if sha3(mem[_160 + _157 + 64 len -_160 + -_157 - 64]) - _322:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    mem[0] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        mem[192] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        mem[192] = stor4[uint8(idx)].field_257 % 128
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        if stor4[uint8(idx)].field_257 % 128:
                            if 31 >= stor4[uint8(idx)].field_257 % 128:
                                mem[224] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[224] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = 224
                                t = sha3(mem[0])
                                while stor4[uint8(idx)].field_257 % 128 + 192 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[32] = 192
                    mem[64] = uint256(stor4[uint8(idx)].field_512)
                    mem[96] = uint256(stor4[uint8(idx)].field_768)
                    mem[128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = 0
                    continue 
                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                t = 0
                u = sha3((6 * uint8(idx)) + sha3(4) + 1)
                while t < stor4[uint8(idx)].field_257 % 128:
                    mem[t + _160 + _157 + 64] = uint256(stor[u])
                    t = t + 32
                    u = u + 1
                    continue 
                _459 = mem[64]
                mem[mem[64]] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32
                mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                if sha3(mem[_459 + 32 len mem[_459]]) - _322:
                    if not uint8(idx) - 255:
                        revert with 0, 17
                    idx = uint8(idx) + 1
                    s = s
                    continue 
                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64] = uint8(stor4[uint8(idx)].field_0)
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 288
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                            if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                            else:
                                mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                                t = sha3(mem[0])
                                while _160 + _157 + stor4[uint8(idx)].field_257 % 128 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 256 > s:
                                    mem[s + 32] = uint256(stor1[t])
                                    s = s + 32
                                    t = t + 1
                                    continue 
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                        revert with 0, 34
                    if not stor4[uint8(idx)].field_257 % 128:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                    t = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 288
                    u = sha3(mem[0])
                    while _160 + _157 + (2 * stor4[uint8(t)].field_257 % 128) + 256 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 256
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 128] = uint256(stor4[uint8(t)].field_512)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 160] = uint256(stor4[uint8(t)].field_768)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 192] = uint32(stor4[uint8(t)].field_1024)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 224] = uint256(stor4[uint8(t)].field_1280)
                    if not uint8(t) - 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    u = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                mem[64] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + ceil32(stor4[uint8(idx)].field_257 % 128) + 288
                mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256] = stor4[uint8(idx)].field_257 % 128
                if bool(stor4[uint8(idx)].field_256):
                    if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
                        continue 
                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                    mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                    t = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 288
                    u = sha3(mem[0])
                    while _160 + _157 + stor4[uint8(t)].field_257 % 128 + (uint255(uint256(stor4[uint8(t)].field_256)) * 0.5) + 256 > t:
                        mem[t + 32] = uint256(stor1[u])
                        t = t + 32
                        u = u + 1
                        continue 
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 256
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 128] = uint256(stor4[uint8(t)].field_512)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 160] = uint256(stor4[uint8(t)].field_768)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 192] = uint32(stor4[uint8(t)].field_1024)
                    mem[_160 + _157 + stor4[uint8(t)].field_257 % 128 + 224] = uint256(stor4[uint8(t)].field_1280)
                    if not uint8(t) - 255:
                        revert with 0, 17
                    t = uint8(t) + 1
                    u = _160 + _157 + stor4[uint8(t)].field_257 % 128 + 64
                    continue 
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if stor4[uint8(idx)].field_257 % 128:
                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 288
                        t = sha3(mem[0])
                        while _160 + _157 + (2 * stor4[uint8(idx)].field_257 % 128) + 256 > s:
                            mem[s + 32] = uint256(stor1[t])
                            s = s + 32
                            t = t + 1
                            continue 
        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 96] = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 256
        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 128] = uint256(stor4[uint8(idx)].field_512)
        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 160] = uint256(stor4[uint8(idx)].field_768)
        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 192] = uint32(stor4[uint8(idx)].field_1024)
        mem[_160 + _157 + stor4[uint8(idx)].field_257 % 128 + 224] = uint256(stor4[uint8(idx)].field_1280)
        if not uint8(idx) - 255:
            revert with 0, 17
        idx = uint8(idx) + 1
        s = _160 + _157 + stor4[uint8(idx)].field_257 % 128 + 64
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[s + 31 len 1]
    _159 = mem[s + 32]
    mem[mem[64] + 64] = 192
    _161 = mem[_159]
    mem[mem[64] + 224] = mem[_159]
    mem[mem[64] + 256 len ceil32(_161)] = mem[_159 + 32 len ceil32(_161)]
    if ceil32(_161) > _161:
        mem[_161 + mem[64] + 256] = 0
    mem[mem[64] + 96] = mem[s + 64]
    mem[mem[64] + 128] = mem[s + 96]
    mem[mem[64] + 160] = mem[s + 156 len 4]
    mem[mem[64] + 192] = mem[s + 160]
    return 32, mem[mem[64] + 32], 192, mem[mem[64] + 96 len ceil32(_161) + 160]
}



}
