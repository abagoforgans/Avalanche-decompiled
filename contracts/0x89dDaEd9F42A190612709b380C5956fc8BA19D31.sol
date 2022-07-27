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
array of uint256 sub_2655c1b9;
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
mapping of uint8 stor22;
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

function sub_253ad3ba(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor22[arg1])
}

function sub_2655c1b9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_2655c1b9[arg1]
    return sub_2655c1b9[arg1][arg2]
}

function sub_2d233503(?) {
    return sub_2d233503
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

function sub_db9dfff5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d1b43593[address(arg1)]
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

function sub_c63d63c0(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0a3eccf2 = uint32(arg1)
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

function sub_05ec8cec(?) {
    if not stor16[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet nodes havent been migrated'
    if stor22[msg.sender]:
        revert with 0, 'Wallet reward have been migrated'
    staticcall sub_aea5c394Address._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_4c3f427d[msg.sender] = ext_call.return_data[0]
    stor22[msg.sender] = 1
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

function getAmountOut(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uniswapV2RouterAddress:
        return 0
    mem[96] = 2
    mem[128] = tokenAddress
    staticcall uniswapV2RouterAddress.WAVAX() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _26 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223
    _27 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _27
    require _26 + (32 * _27) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _27)] = mem[ceil32(return_data.size) + _26 + 224 len ceil32(32 * _27)]
    if 1 >= _27:
        revert with 0, 50
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
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
                        if not uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))]):
                            revert with 0, 17
                        uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))]) - 1)
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
                        if not uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))]):
                            revert with 0, 17
                        uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(idx)].field_32)].field_256))]) - 1)
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

function sub_5bcb11bb(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = address(arg1)
    idx = 0
    while uint32(idx) < sub_2655c1b9[address(arg1)]:
        mem[0] = sha3(address(arg1), 8)
        if sub_2655c1b9[address(arg1)][uint32(idx)] > 0:
            if sub_2655c1b9[address(arg1)][uint32(idx)] < 1:
                revert with 0, 17
            if sub_2655c1b9[address(arg1)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if not address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40) - address(arg1):
                address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40) = 0
                uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) = 0
                if uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                _40 = mem[64]
                if bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256):
                    if not bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256))
                        mem[mem[64] + (uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5)] = 11
                        if not uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256))]):
                            revert with 0, 17
                        uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256))]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5:
                                mem[s + _40] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_40 + (uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5)] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + (uint255(uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256)) * 0.5) + -mem[64] + 32])]) - 1)
                else:
                    if not bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256) - (stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 < 32):
                        revert with 0, 34
                    if not bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256):
                        mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256))
                        mem[mem[64] + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128] = 11
                        if not uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
                    else:
                        if bool(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_256) != 1:
                            mem[0] = 11
                            if not uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len -mem[64] + 32])]) - 1)
                        else:
                            mem[0] = (6 * uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)) + sha3(4) + 1
                            s = 0
                            t = sha3(mem[0])
                            while s < stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128:
                                mem[s + _40] = uint256(stor[t])
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128] = 11
                            if not uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 + -mem[64] + 32])]):
                                revert with 0, 17
                            uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) = uint32(uint32(stor[sha3(mem[mem[64] len _40 + stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_257 % 128 + -mem[64] + 32])]) - 1)
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
    sub_2655c1b9[address(arg1)] = mem[_31]
    mem[0] = sha3(address(arg1), 8)
    if not _33:
        idx = 0
        while sub_2655c1b9[address(arg1)] > idx:
            sub_2655c1b9[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = _31 + 32
        while _31 + (32 * _33) + 32 > idx:
            sub_2655c1b9[address(arg1)][s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * _33) + 31) >> 5
        while sub_2655c1b9[address(arg1)] > idx:
            sub_2655c1b9[address(arg1)][idx] = 0
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
        while uint32(idx) < sub_2655c1b9[address(arg1)]:
            mem[0] = sha3(address(arg1), 8)
            if sub_2655c1b9[address(arg1)][uint32(idx)] <= 0:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            if sub_2655c1b9[address(arg1)][uint32(idx)] < 1:
                revert with 0, 17
            if sub_2655c1b9[address(arg1)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40) - arg1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                continue 
            _72 = mem[64]
            mem[64] = mem[64] + 256
            mem[_72] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_0)
            mem[_72 + 32] = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
            mem[_72 + 64] = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
            mem[_72 + 96] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_200)
            mem[_72 + 128] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
            mem[_72 + 160] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_288)
            mem[_72 + 192] = uint256(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_512)
            mem[_72 + 224] = uint256(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_768)
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
                mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
                mem[mem[64] + 68] = block.timestamp
                staticcall address(stor1.length).0xd7e6c7e7 with:
                        gas gas_remaining wei
                       args address(arg1), uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256), block.timestamp
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
    while uint32(idx) < sub_2655c1b9[address(arg1)]:
        mem[0] = sha3(address(arg1), 8)
        if sub_2655c1b9[address(arg1)][uint32(idx)] <= 0:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        if sub_2655c1b9[address(arg1)][uint32(idx)] < 1:
            revert with 0, 17
        if sub_2655c1b9[address(arg1)][uint32(idx)] - 1 >= sub_74bf71c5.length:
            revert with 0, 50
        mem[0] = 7
        if address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40) - arg1:
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = s
            continue 
        _154 = mem[64]
        mem[64] = mem[64] + 256
        mem[_154] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_0)
        mem[_154 + 32] = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
        mem[_154 + 64] = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
        mem[_154 + 96] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_200)
        mem[_154 + 128] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
        mem[_154 + 160] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_288)
        mem[_154 + 192] = uint256(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_512)
        mem[_154 + 224] = uint256(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_768)
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
            mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
            mem[mem[64] + 68] = block.timestamp
            staticcall address(stor1.length).0xd7e6c7e7 with:
                    gas gas_remaining wei
                   args address(arg1), uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256), block.timestamp
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
                    if not uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]):
                        revert with 0, 17
                    uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) - 1)
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
                    if not uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]):
                        revert with 0, 17
                    uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) - 1)
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
                if not uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]):
                    revert with 0, 17
                uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) - 1)
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
                if not uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]):
                    revert with 0, 17
                uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) = uint32(uint32(stor[mem[mem[64] + 32 len stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[uint32(_90) - 1].field_32)].field_256))]) - 1)
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

function sub_c722e0f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    if stor15[msg.sender]:
        revert with 0, 'Blacklisted'
    if uint32(arg1) < 1:
        revert with 0, 17
    if uint32(uint32(arg1) - 1) >= sub_74bf71c5.length:
        revert with 0, 50
    if address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40):
        idx = 0
        while uint32(idx) < sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]:
            mem[0] = sha3(address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), 8)
            if uint32(arg1) - sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)][uint32(idx)]:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                continue 
            if uint32(idx) >= sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]:
                revert with 0, 50
            sub_2655c1b9[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)][uint32(idx)] = 0
            if not sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]:
                revert with 0, 17
            sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] - 1)
            address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40) = 0
            uint32(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_256) = 0
            if uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32) >= stor4.length:
                revert with 0, 50
            if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                    mem[96] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                    mem[(uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 96] = 11
                    if not uint32(stor[mem[128 len uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]):
                        revert with 0, 17
                    uint32(stor[mem[128 len uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) = uint32(uint32(stor[mem[128 len uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) - 1)
                else:
                    if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                        if not uint32(stor[sha3(mem[96 len -64])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[96 len -64])]) = uint32(uint32(stor[sha3(mem[96 len -64])]) - 1)
                    else:
                        idx = 0
                        s = sha3((6 * uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32)) + sha3(4) + 1)
                        while idx < uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5:
                            mem[idx + 96] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 96] = 11
                        if not uint32(stor[sha3(mem[96 len (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[96 len (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 32])]) = uint32(uint32(stor[sha3(mem[96 len (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 32])]) - 1)
            else:
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                    mem[96] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                    mem[stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 96] = 11
                    if not uint32(stor[mem[128 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]):
                        revert with 0, 17
                    uint32(stor[mem[128 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) = uint32(uint32(stor[mem[128 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) - 1)
                else:
                    if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                        if not uint32(stor[sha3(mem[96 len -64])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[96 len -64])]) = uint32(uint32(stor[sha3(mem[96 len -64])]) - 1)
                    else:
                        idx = 0
                        s = sha3((6 * uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32)) + sha3(4) + 1)
                        while idx < stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128:
                            mem[idx + 96] = uint256(stor[s])
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 96] = 11
                        if not uint32(stor[sha3(mem[96 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 32])]):
                            revert with 0, 17
                        uint32(stor[sha3(mem[96 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 32])]) = uint32(uint32(stor[sha3(mem[96 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 32])]) - 1)
            if not sub_d33953bb:
                revert with 0, 17
            sub_d33953bb = uint32(sub_d33953bb - 1)
            if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
                revert with 0, 17
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)]:
            revert with 0, 17
        sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] = uint32(sub_d1b43593[address(stor7[4 * uint32(uint32(arg1) - 1)].field_0)] - 1)
        address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_40) = 0
        uint32(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_256) = 0
        if uint8(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_32) >= stor4.length:
            revert with 0, 50
        if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                mem[96] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                mem[(uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 96] = 11
                if not uint32(stor[mem[128 len uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]):
                    revert with 0, 17
                uint32(stor[mem[128 len uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) = uint32(uint32(stor[mem[128 len uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) - 1)
            else:
                if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                    if not uint32(stor[sha3(mem[96 len -64])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[96 len -64])]) = uint32(uint32(stor[sha3(mem[96 len -64])]) - 1)
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5:
                        mem[idx + 96] = uint256(stor[s + sha3((6 * uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)) + ('name', 'stor4', 4) + 1)].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 96] = 11
                    if not uint32(stor[sha3(mem[96 len (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[96 len (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 32])]) = uint32(uint32(stor[sha3(mem[96 len (uint255(uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256)) * 0.5) + 32])]) - 1)
        else:
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) - (stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 < 32):
                revert with 0, 34
            if not bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256):
                mem[96] = Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))
                mem[stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 96] = 11
                if not uint32(stor[mem[128 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]):
                    revert with 0, 17
                uint32(stor[mem[128 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) = uint32(uint32(stor[mem[128 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256))]) - 1)
            else:
                if bool(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_256) != 1:
                    if not uint32(stor[sha3(mem[96 len -64])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[96 len -64])]) = uint32(uint32(stor[sha3(mem[96 len -64])]) - 1)
                else:
                    idx = 0
                    s = 0
                    while idx < stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128:
                        mem[idx + 96] = uint256(stor[s + sha3((6 * uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)) + ('name', 'stor4', 4) + 1)].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 96] = 11
                    if not uint32(stor[sha3(mem[96 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 32])]):
                        revert with 0, 17
                    uint32(stor[sha3(mem[96 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 32])]) = uint32(uint32(stor[sha3(mem[96 len stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_257 % 128 + 32])]) - 1)
        if not sub_d33953bb:
            revert with 0, 17
        sub_d33953bb = uint32(sub_d33953bb - 1)
        if uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 and sub_5a64affb > -1 / uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100:
            revert with 0, 17
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args rewardsPoolAddress, address(sub_74bf71c5[4 * uint32(uint32(arg1) - 1)].field_0), uint256(stor4[uint8(stor7[4 * uint32(uint32(arg1) - 1)].field_32)].field_512) / 100 * sub_5a64affb
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
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
            if uint32(idx) >= mem[96]:
                revert with 0, 50
            _124 = mem[(32 * uint32(idx)) + 128]
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
                if uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_512) > 0x15d867c3ece2a53490b9af72015d867c3ece2a53490b9af72015d867c3ece2:
                    revert with 0, 17
                if 3000 * uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_512) / 10000 and uint8(cd[4]) > -1 / 3000 * uint256(stor4[uint8(stor7[mem[(32 * uint32(idx)) + 128]].field_32)].field_512) / 10000:
                    revert with 0, 17
                if uniswapV2RouterAddress:
                    _140 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_140 + 32 len 64] = call.data[calldata.size len 64]
                    if not mem[_140]:
                        revert with 0, 50
                    mem[_140 + 32] = tokenAddress
                    staticcall uniswapV2RouterAddress.WAVAX() with:
                            gas gas_remaining wei
                    mem[_140 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _140 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_140]:
                        revert with 0, 50
                    mem[_140 + 64] = ext_call.return_data[12 len 20]
                    mem[_140 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_140 + ceil32(return_data.size) + 100] = 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])
                    mem[_140 + ceil32(return_data.size) + 132] = 64
                    mem[_140 + ceil32(return_data.size) + 164] = mem[_140]
                    s = 0
                    t = _140 + ceil32(return_data.size) + 196
                    u = _140 + 32
                    while s < mem[_140]:
                        mem[t] = mem[u + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    staticcall uniswapV2RouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4]), 64, mem[_140 + ceil32(return_data.size) + 164 len (32 * mem[_140]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_140 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _140 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _182 = mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32
                    require mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 <= test266151307()
                    require _140 + ceil32(return_data.size) + return_data.size + 96 > _140 + ceil32(return_data.size) + mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 + 127
                    _184 = mem[_140 + ceil32(return_data.size) + mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 + 96]
                    if mem[_140 + ceil32(return_data.size) + mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_140 + ceil32(return_data.size) + mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 + 96]) + 1 < 0 or _140 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_140 + ceil32(return_data.size) + mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = _140 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_140 + ceil32(return_data.size) + mem[_140 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, 3000 * uint256(stor4[uint8(stor7[_124].field_32)].field_512) / 10000 * uint8(cd[4])) >> 32 + 96]) + 97
                    mem[_140 + (2 * ceil32(return_data.size)) + 96] = _184
                    require _182 + (32 * _184) + 32 <= return_data.size
                    t = _140 + (2 * ceil32(return_data.size)) + 128
                    s = _140 + ceil32(return_data.size) + _182 + 128
                    while s < _140 + ceil32(return_data.size) + _182 + (32 * _184) + 128:
                        mem[t] = mem[s]
                        t = t + 32
                        s = s + 32
                        continue 
                    if 1 >= _184:
                        revert with 0, 50
                    if 0 > !mem[_140 + (2 * ceil32(return_data.size)) + 160]:
                        revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 8
        idx = 0
        while uint32(idx) < sub_2655c1b9[msg.sender]:
            mem[0] = sha3(msg.sender, 8)
            if sub_2655c1b9[msg.sender][uint32(idx)] > 0:
                if sub_2655c1b9[msg.sender][uint32(idx)] < 1:
                    revert with 0, 17
                if sub_2655c1b9[msg.sender][uint32(idx)] - 1 >= sub_74bf71c5.length:
                    revert with 0, 50
                mem[0] = 7
                if not address(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_40) - msg.sender:
                    if uint8(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_32) >= stor4.length:
                        revert with 0, 50
                    mem[0] = 4
                    if uint8(cd[4]) and sub_8e6a1bc2 > test266151307() / uint8(cd[4]):
                        revert with 0, 17
                    if uint32(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_288) > -uint32(sub_8e6a1bc2 * uint8(cd[4])) + test266151307():
                        revert with 0, 17
                    uint32(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_288) = uint32(uint32(sub_8e6a1bc2 * uint8(cd[4])) + uint32(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_288))
                    if uint32(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_288) < block.timestamp:
                        revert with 0, 17
                    if not sub_8e6a1bc2:
                        revert with 0, 18
                    if uint8(uint32(sub_74bf71c5[stor8[msg.sender][uint32(idx)] - 1].field_288) - block.timestamp / sub_8e6a1bc2) > 3:
                        revert with 0, 'Cannot pay more than 3 months'
                    if uint256(stor4[uint8(stor7[stor8[msg.sender][uint32(idx)] - 1].field_32)].field_512) > 0x15d867c3ece2a53490b9af72015d867c3ece2a53490b9af72015d867c3ece2:
                        revert with 0, 17
                    if 3000 * uint256(stor4[uint8(stor7[stor8[msg.sender][uint32(idx)] - 1].field_32)].field_512) / 10000 and uint8(cd[4]) > -1 / 3000 * uint256(stor4[uint8(stor7[stor8[msg.sender][uint32(idx)] - 1].field_32)].field_512) / 10000:
                        revert with 0, 17
                    if uniswapV2RouterAddress:
                        _146 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_146 + 32 len 64] = call.data[calldata.size len 64]
                        if not mem[_146]:
                            revert with 0, 50
                        mem[_146 + 32] = tokenAddress
                        staticcall uniswapV2RouterAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[_146 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _146 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_146]:
                            revert with 0, 50
                        mem[_146 + 64] = ext_call.return_data[12 len 20]
                        mem[_146 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[_146 + ceil32(return_data.size) + 100] = 3000 * uint256(stor4[uint8(stor7[stor8[msg.sender][uint32(idx)] - 1].field_32)].field_512) / 10000 * uint8(cd[4])
                        mem[_146 + ceil32(return_data.size) + 132] = 64
                        mem[_146 + ceil32(return_data.size) + 164] = mem[_146]
                        s = 0
                        t = _146 + ceil32(return_data.size) + 196
                        u = _146 + 32
                        while s < mem[_146]:
                            mem[t] = mem[u + 12 len 20]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        staticcall uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _146 + ceil32(return_data.size) + (32 * mem[_146]) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _181 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _183 = mem[_181]
                        require mem[_181] <= test266151307()
                        require _181 + return_data.size > _181 + mem[_181] + 31
                        _185 = mem[_181 + mem[_181]]
                        if mem[_181 + mem[_181]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_181 + mem[_181]]) + 1 < 0 or _181 + ceil32(return_data.size) + ceil32(32 * mem[_181 + mem[_181]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _181 + ceil32(return_data.size) + ceil32(32 * mem[_181 + mem[_181]]) + 1
                        mem[_181 + ceil32(return_data.size)] = _185
                        require _183 + (32 * _185) + 32 <= return_data.size
                        t = _181 + ceil32(return_data.size) + 32
                        s = _181 + _183 + 32
                        while s < _181 + _183 + (32 * _185) + 32:
                            mem[t] = mem[s]
                            t = t + 32
                            s = s + 32
                            continue 
                        if 1 >= _185:
                            revert with 0, 50
                        if 0 > !mem[_181 + ceil32(return_data.size) + 64]:
                            revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            continue 
    if 0 > msg.value:
        revert with 0, 'Invalid Fee amount'
    call sub_919df198Address with:
         gas 2300 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimable(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 8
    if sub_2655c1b9[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_2655c1b9[address(arg1)]
    mem[64] = (32 * sub_2655c1b9[address(arg1)]) + 128
    if not sub_2655c1b9[address(arg1)]:
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        while uint32(idx) < sub_2655c1b9[address(arg1)]:
            mem[0] = sha3(address(arg1), 8)
            if sub_2655c1b9[address(arg1)][uint32(idx)] < 1:
                revert with 0, 17
            if not sub_2655c1b9[address(arg1)][uint32(idx)] - 1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                continue 
            if sub_2655c1b9[address(arg1)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40) - arg1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
                w = w
                continue 
            if not address(stor1.length):
                if uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)):
                    revert with 0, 17
                if not uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024):
                    revert with 0, 18
                if (10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                    revert with 0, 17
                if uint32(s) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint32(s)) + 128] = uint32(idx)
                if not uint32(s) - test266151307():
                    revert with 0, 17
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = uint32(s) + 1
                t = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
                w = ((10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024)) + w
                continue 
            mem[mem[64] + 4] = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
            mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
            mem[mem[64] + 68] = block.timestamp
            staticcall address(stor1.length).0xd7e6c7e7 with:
                    gas gas_remaining wei
                   args address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_0), uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _53 = mem[_51]
            if uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) and _53 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)):
                revert with 0, 17
            if not uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024):
                revert with 0, 18
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _53) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _53) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint32(s)) + 128] = uint32(idx)
            if not uint32(s) - test266151307():
                revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            t = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
            u = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
            v = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
            w = ((block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _53) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _53) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024)) + w
            continue 
    else:
        mem[128 len 32 * sub_2655c1b9[address(arg1)]] = call.data[calldata.size len 32 * sub_2655c1b9[address(arg1)]]
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        while uint32(idx) < sub_2655c1b9[address(arg1)]:
            mem[0] = sha3(address(arg1), 8)
            if sub_2655c1b9[address(arg1)][uint32(idx)] < 1:
                revert with 0, 17
            if not sub_2655c1b9[address(arg1)][uint32(idx)] - 1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                continue 
            if sub_2655c1b9[address(arg1)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40) - arg1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
                w = w
                continue 
            if not address(stor1.length):
                if uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)):
                    revert with 0, 17
                if not uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024):
                    revert with 0, 18
                if (10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                    revert with 0, 17
                if uint32(s) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint32(s)) + 128] = uint32(idx)
                if not uint32(s) - test266151307():
                    revert with 0, 17
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = uint32(s) + 1
                t = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
                w = ((10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024)) + w
                continue 
            mem[mem[64] + 4] = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
            mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
            mem[mem[64] + 68] = block.timestamp
            staticcall address(stor1.length).0xd7e6c7e7 with:
                    gas gas_remaining wei
                   args address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_0), uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _52 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_52]
            if uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) and _55 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768)):
                revert with 0, 17
            if not uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024):
                revert with 0, 18
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _55) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _55) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint32(s)) + 128] = uint32(idx)
            if not uint32(s) - test266151307():
                revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            t = uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256)
            u = uint8(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_32)
            v = address(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_40)
            w = ((block.timestamp * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _55) - (uint32(sub_74bf71c5[stor8[address(arg1)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_768) * _55) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(arg1)][uint32(idx)] - 1].field_32)].field_1024)) + w
            continue 
    if w > !sub_4c3f427d[msg.sender]:
        revert with 0, 17
    return (w + sub_4c3f427d[msg.sender])
}

function claim() {
    mem[0] = msg.sender
    mem[32] = 8
    if sub_2655c1b9[address(msg.sender)] > test266151307():
        revert with 0, 65
    mem[96] = sub_2655c1b9[address(msg.sender)]
    mem[64] = (32 * sub_2655c1b9[address(msg.sender)]) + 128
    if not sub_2655c1b9[address(msg.sender)]:
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        while uint32(idx) < sub_2655c1b9[address(msg.sender)]:
            mem[0] = sha3(address(msg.sender), 8)
            if sub_2655c1b9[address(msg.sender)][uint32(idx)] < 1:
                revert with 0, 17
            if not sub_2655c1b9[address(msg.sender)][uint32(idx)] - 1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                continue 
            if sub_2655c1b9[address(msg.sender)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40) - msg.sender:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
                w = w
                continue 
            if not address(stor1.length):
                if uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)):
                    revert with 0, 17
                if not uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024):
                    revert with 0, 18
                if (10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                    revert with 0, 17
                if uint32(s) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint32(s)) + 128] = uint32(idx)
                if not uint32(s) - test266151307():
                    revert with 0, 17
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = uint32(s) + 1
                t = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
                w = ((10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024)) + w
                continue 
            mem[mem[64] + 4] = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
            mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
            mem[mem[64] + 68] = block.timestamp
            staticcall address(stor1.length).0xd7e6c7e7 with:
                    gas gas_remaining wei
                   args address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_0), uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _102 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _113 = mem[_102]
            if uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if block.timestamp < uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) and _113 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)):
                revert with 0, 17
            if not uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024):
                revert with 0, 18
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _113) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _113) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint32(s)) + 128] = uint32(idx)
            if not uint32(s) - test266151307():
                revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            t = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
            u = uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)
            v = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
            w = ((block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _113) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _113) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024)) + w
            continue 
        if not w:
            t = 0
            while uint32(t) < uint32(s):
                if uint32(t) >= mem[96]:
                    revert with 0, 50
                if mem[(32 * uint32(t)) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * uint32(t)) + 128] - 1 >= sub_74bf71c5.length:
                    revert with 0, 50
                mem[0] = 7
                uint32(sub_74bf71c5[mem[(32 * uint32(t)) + 128] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                t = uint32(t) + 1
                continue 
            if not sub_4c3f427d[msg.sender]:
                revert with 0, 'No claimable tokens.'
            mem[0] = msg.sender
            mem[32] = 14
            if not -sub_4c3f427d[msg.sender]:
                revert with 0, 'Transfer token amount can't zero!'
            if not rewardsPoolAddress:
                revert with 0, 'Rewards pool can't Zero!'
            if sub_4c3f427d[msg.sender] and rewardsPoolFee > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = rewardsPoolAddress
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, rewardsPoolAddress, sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _223 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_223] == bool(mem[_223])
            if sub_4c3f427d[msg.sender] and sub_3ba28fcb > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_919df198Address
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_919df198Address, sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_239] == bool(mem[_239])
        else:
            if sub_b2dd3b37[msg.sender] > !w:
                revert with 0, 17
            sub_b2dd3b37[msg.sender] += w
            if rewardsTotal > !w:
                revert with 0, 17
            rewardsTotal += w
            if sub_4c3f427d[msg.sender] > !w:
                revert with 0, 17
            sub_4c3f427d[msg.sender] += w
            t = 0
            while uint32(t) < uint32(s):
                if uint32(t) >= mem[96]:
                    revert with 0, 50
                if mem[(32 * uint32(t)) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * uint32(t)) + 128] - 1 >= sub_74bf71c5.length:
                    revert with 0, 50
                mem[0] = 7
                uint32(sub_74bf71c5[mem[(32 * uint32(t)) + 128] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                t = uint32(t) + 1
                continue 
            if not sub_4c3f427d[msg.sender]:
                revert with 0, 'No claimable tokens.'
            mem[0] = msg.sender
            mem[32] = 14
            if not -sub_4c3f427d[msg.sender]:
                revert with 0, 'Transfer token amount can't zero!'
            if not rewardsPoolAddress:
                revert with 0, 'Rewards pool can't Zero!'
            if sub_4c3f427d[msg.sender] and rewardsPoolFee > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = rewardsPoolAddress
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, rewardsPoolAddress, sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_224] == bool(mem[_224])
            if sub_4c3f427d[msg.sender] and sub_3ba28fcb > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_919df198Address
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_919df198Address, sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _240 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_240] == bool(mem[_240])
    else:
        mem[128 len 32 * sub_2655c1b9[address(msg.sender)]] = call.data[calldata.size len 32 * sub_2655c1b9[address(msg.sender)]]
        idx = 0
        s = 0
        t = 0
        u = 0
        v = 0
        w = 0
        while uint32(idx) < sub_2655c1b9[address(msg.sender)]:
            mem[0] = sha3(address(msg.sender), 8)
            if sub_2655c1b9[address(msg.sender)][uint32(idx)] < 1:
                revert with 0, 17
            if not sub_2655c1b9[address(msg.sender)][uint32(idx)] - 1:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                u = u
                v = v
                w = w
                continue 
            if sub_2655c1b9[address(msg.sender)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40) - msg.sender:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
                w = w
                continue 
            if not address(stor1.length):
                if uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32) >= stor4.length:
                    revert with 0, 50
                mem[0] = 4
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)):
                    revert with 0, 17
                if not uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024):
                    revert with 0, 18
                if (10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                    revert with 0, 17
                if uint32(s) >= mem[96]:
                    revert with 0, 50
                mem[(32 * uint32(s)) + 128] = uint32(idx)
                if not uint32(s) - test266151307():
                    revert with 0, 17
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = uint32(s) + 1
                t = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
                u = uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)
                v = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
                w = ((10^18 * block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (10^18 * uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024)) + w
                continue 
            mem[mem[64] + 4] = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
            mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
            mem[mem[64] + 68] = block.timestamp
            staticcall address(stor1.length).0xd7e6c7e7 with:
                    gas gas_remaining wei
                   args address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_0), uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256), block.timestamp
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _117 = mem[_104]
            if uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32) >= stor4.length:
                revert with 0, 50
            mem[0] = 4
            if block.timestamp < uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256):
                revert with 0, 17
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) and _117 > -1 / (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768)):
                revert with 0, 17
            if not uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024):
                revert with 0, 18
            if (block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _117) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _117) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024) > !w:
                revert with 0, 17
            if uint32(s) >= mem[96]:
                revert with 0, 50
            mem[(32 * uint32(s)) + 128] = uint32(idx)
            if not uint32(s) - test266151307():
                revert with 0, 17
            if not uint32(idx) - test266151307():
                revert with 0, 17
            idx = uint32(idx) + 1
            s = uint32(s) + 1
            t = uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256)
            u = uint8(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)
            v = address(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_40)
            w = ((block.timestamp * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _117) - (uint32(sub_74bf71c5[stor8[address(msg.sender)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_768) * _117) / 10^18 / uint32(stor4[uint8(stor7[stor8[address(msg.sender)][uint32(idx)] - 1].field_32)].field_1024)) + w
            continue 
        if not w:
            t = 0
            while uint32(t) < uint32(s):
                if uint32(t) >= mem[96]:
                    revert with 0, 50
                if mem[(32 * uint32(t)) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * uint32(t)) + 128] - 1 >= sub_74bf71c5.length:
                    revert with 0, 50
                mem[0] = 7
                uint32(sub_74bf71c5[mem[(32 * uint32(t)) + 128] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                t = uint32(t) + 1
                continue 
            if not sub_4c3f427d[msg.sender]:
                revert with 0, 'No claimable tokens.'
            mem[0] = msg.sender
            mem[32] = 14
            if not -sub_4c3f427d[msg.sender]:
                revert with 0, 'Transfer token amount can't zero!'
            if not rewardsPoolAddress:
                revert with 0, 'Rewards pool can't Zero!'
            if sub_4c3f427d[msg.sender] and rewardsPoolFee > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = rewardsPoolAddress
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, rewardsPoolAddress, sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_225] == bool(mem[_225])
            if sub_4c3f427d[msg.sender] and sub_3ba28fcb > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_919df198Address
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_919df198Address, sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _241 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_241] == bool(mem[_241])
        else:
            if sub_b2dd3b37[msg.sender] > !w:
                revert with 0, 17
            sub_b2dd3b37[msg.sender] += w
            if rewardsTotal > !w:
                revert with 0, 17
            rewardsTotal += w
            if sub_4c3f427d[msg.sender] > !w:
                revert with 0, 17
            sub_4c3f427d[msg.sender] += w
            t = 0
            while uint32(t) < uint32(s):
                if uint32(t) >= mem[96]:
                    revert with 0, 50
                if mem[(32 * uint32(t)) + 128] < 1:
                    revert with 0, 17
                if mem[(32 * uint32(t)) + 128] - 1 >= sub_74bf71c5.length:
                    revert with 0, 50
                mem[0] = 7
                uint32(sub_74bf71c5[mem[(32 * uint32(t)) + 128] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                t = uint32(t) + 1
                continue 
            if not sub_4c3f427d[msg.sender]:
                revert with 0, 'No claimable tokens.'
            mem[0] = msg.sender
            mem[32] = 14
            if not -sub_4c3f427d[msg.sender]:
                revert with 0, 'Transfer token amount can't zero!'
            if not rewardsPoolAddress:
                revert with 0, 'Rewards pool can't Zero!'
            if sub_4c3f427d[msg.sender] and rewardsPoolFee > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = rewardsPoolAddress
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, rewardsPoolAddress, sub_4c3f427d[msg.sender] * rewardsPoolFee / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == bool(mem[_226])
            if sub_4c3f427d[msg.sender] and sub_3ba28fcb > -1 / sub_4c3f427d[msg.sender]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_919df198Address
            mem[mem[64] + 68] = sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, sub_919df198Address, sub_4c3f427d[msg.sender] * sub_3ba28fcb / 10000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _242 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_242] == bool(mem[_242])
    sub_4c3f427d[msg.sender] = 0
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
    mem[128 len arg1.length] = arg1[all]
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
    if not sha3(arg1[all]) - sha3(arg2[all]):
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
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 5
            uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
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
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 5
            uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
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
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 5
            uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
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
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len ceil32(arg2.length)] = arg2[all], mem[ceil32(ceil32(arg1.length)) + arg2.length + 129 len ceil32(arg2.length) - arg2.length]
            mem[arg2.length + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98] = 5
            uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len arg2.length + 32])]) = uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256])
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 5)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg1.length)) + (8 * ceil32(ceil32(arg1.length))) + 256) << (8 * ceil32(arg1.length)) - 256]) = 0
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
        _118 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
            revert with 0, 17
        if uint32(uint32(arg2) + sub_d1b43593[address(arg4)]) > sub_0a3eccf2:
            revert with 0, 'Cannot create more nodes'
        if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) < 1:
            revert with 0, 17
        if uint8(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) - 1) >= stor4.length:
            revert with 0, 50
        mem[32] = 8
        mem[0] = address(arg4)
        idx = 0
        s = 0
        t = 0
        while uint32(idx) < sub_2655c1b9[address(arg3)]:
            mem[0] = sha3(address(arg3), 8)
            if sub_2655c1b9[address(arg3)][uint32(idx)] <= 0:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if sub_2655c1b9[address(arg3)][uint32(idx)] < 1:
                revert with 0, 17
            if sub_2655c1b9[address(arg3)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_40) != address(arg3):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if uint8(stor[_118]) < 1:
                revert with 0, 17
            if uint8(uint8(stor[_118]) - 1) != uint8(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_32):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            address(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_40) = address(arg4)
            if not address(stor1.length):
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024):
                    revert with 0, 17
                if s > !(10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                sub_2655c1b9[address(arg4)]++
                sub_2655c1b9[address(arg4)][sub_2655c1b9[address(arg4)]] = sub_2655c1b9[address(arg3)][uint32(idx)]
                if uint32(idx) >= sub_2655c1b9[address(arg3)]:
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                sub_2655c1b9[address(arg3)][uint32(idx)] = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)
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
                if s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)
                    if rewardsTotal > !(s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _296 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_296] == bool(mem[_296])
            else:
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256)
                mem[mem[64] + 68] = block.timestamp
                staticcall address(stor1.length).0xd7e6c7e7 with:
                        gas gas_remaining wei
                       args address(arg3), uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256), block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _241 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _246 = mem[_241]
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) and mem[_241] > -1 / (block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024):
                    revert with 0, 17
                if s > !((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * mem[_241] / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                sub_2655c1b9[address(arg4)]++
                sub_2655c1b9[address(arg4)][sub_2655c1b9[address(arg4)]] = sub_2655c1b9[address(arg3)][uint32(idx)]
                if uint32(idx) >= sub_2655c1b9[address(arg3)]:
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                sub_2655c1b9[address(arg3)][uint32(idx)] = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)
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
                if s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)
                    if rewardsTotal > !(s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_118]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_118]) - 1)].field_1024) * _246 / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_303] == bool(mem[_303])
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
            _245 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_245] == bool(mem[_245])
    else:
        _121 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        if sub_d1b43593[address(arg4)] > -uint32(arg2) + test266151307():
            revert with 0, 17
        if uint32(uint32(arg2) + sub_d1b43593[address(arg4)]) > sub_0a3eccf2:
            revert with 0, 'Cannot create more nodes'
        if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) < 1:
            revert with 0, 17
        if uint8(uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) - 1) >= stor4.length:
            revert with 0, 50
        mem[32] = 8
        mem[0] = address(arg4)
        idx = 0
        s = 0
        t = 0
        while uint32(idx) < sub_2655c1b9[address(arg3)]:
            mem[0] = sha3(address(arg3), 8)
            if sub_2655c1b9[address(arg3)][uint32(idx)] <= 0:
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if sub_2655c1b9[address(arg3)][uint32(idx)] < 1:
                revert with 0, 17
            if sub_2655c1b9[address(arg3)][uint32(idx)] - 1 >= sub_74bf71c5.length:
                revert with 0, 50
            mem[0] = 7
            if address(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_40) != address(arg3):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            if uint8(stor[_121]) < 1:
                revert with 0, 17
            if uint8(uint8(stor[_121]) - 1) != uint8(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_32):
                if not uint32(idx) - test266151307():
                    revert with 0, 17
                idx = uint32(idx) + 1
                s = s
                t = t
                continue 
            address(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_40) = address(arg4)
            if not address(stor1.length):
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) and 10^18 > -1 / (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024):
                    revert with 0, 17
                if s > !(10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                sub_2655c1b9[address(arg4)]++
                sub_2655c1b9[address(arg4)][sub_2655c1b9[address(arg4)]] = sub_2655c1b9[address(arg3)][uint32(idx)]
                if uint32(idx) >= sub_2655c1b9[address(arg3)]:
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                sub_2655c1b9[address(arg3)][uint32(idx)] = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)
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
                if s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)
                    if rewardsTotal > !(s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + (10^18 * (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_298] == bool(mem[_298])
            else:
                mem[mem[64] + 4] = address(arg3)
                mem[mem[64] + 36] = uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256)
                mem[mem[64] + 68] = block.timestamp
                staticcall address(stor1.length).0xd7e6c7e7 with:
                        gas gas_remaining wei
                       args address(arg3), uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256), block.timestamp
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _248 = mem[_242]
                if block.timestamp < uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) and uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768) > -1 / block.timestamp - uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256):
                    revert with 0, 17
                if not uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024):
                    revert with 0, 18
                if (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) and mem[_242] > -1 / (block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024):
                    revert with 0, 17
                if s > !((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * mem[_242] / 10^18):
                    revert with 0, 17
                uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) = uint32(block.timestamp)
                if not uint32(t) - test266151307():
                    revert with 0, 17
                sub_2655c1b9[address(arg4)]++
                sub_2655c1b9[address(arg4)][sub_2655c1b9[address(arg4)]] = sub_2655c1b9[address(arg3)][uint32(idx)]
                if uint32(idx) >= sub_2655c1b9[address(arg3)]:
                    revert with 0, 50
                mem[0] = sha3(address(arg3), 8)
                sub_2655c1b9[address(arg3)][uint32(idx)] = 0
                if uint32(uint32(t) + 1) - uint32(arg2):
                    if not uint32(idx) - test266151307():
                        revert with 0, 17
                    idx = uint32(idx) + 1
                    s = s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)
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
                if s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18) > 0:
                    mem[0] = address(arg3)
                    mem[32] = 13
                    if sub_b2dd3b37[address(arg3)] > !(s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)):
                        revert with 0, 17
                    sub_b2dd3b37[address(arg3)] = sub_b2dd3b37[address(arg3)] + s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)
                    if rewardsTotal > !(s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)):
                        revert with 0, 17
                    rewardsTotal = rewardsTotal + s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)
                    mem[mem[64] + 4] = rewardsPoolAddress
                    mem[mem[64] + 36] = address(arg3)
                    mem[mem[64] + 68] = s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args rewardsPoolAddress, address(arg3), s + ((block.timestamp * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) - (uint32(sub_74bf71c5[stor8[address(arg3)][uint32(idx)] - 1].field_256) * uint256(stor4[uint8(uint8(stor[_121]) - 1)].field_768)) / uint32(stor4[uint8(uint8(stor[_121]) - 1)].field_1024) * _248 / 10^18)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_304] == bool(mem[_304])
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
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_247] == bool(mem[_247])
    emit 0x8a091ff4: address(arg3), address(arg4), uint32(arg2)
}

function tiers() {
    if tierTotal > test266151307():
        revert with 0, 65
    mem[96] = tierTotal
    mem[64] = (32 * tierTotal) + 128
    if not tierTotal:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _298 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _315 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_315] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _347 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_347] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_347 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_347 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _347 + 32
                                    u = sha3(mem[0])
                                    while _347 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_347 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_347 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _347 + 32
                                    u = sha3(mem[0])
                                    while _347 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_315 + 32] = _347
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _355 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_355] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_355 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_355 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _355 + 32
                                    u = sha3(mem[0])
                                    while _355 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_355 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_355 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _355 + 32
                                    u = sha3(mem[0])
                                    while _355 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_315 + 32] = _355
                    mem[_315 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_315 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_315 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_315 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _315
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _323 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_323] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _356 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_356] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_356 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_356 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _356 + 32
                                        u = sha3(mem[0])
                                        while _356 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_356 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_356 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _356 + 32
                                        u = sha3(mem[0])
                                        while _356 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_323 + 32] = _356
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _362 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_362] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_362 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_362 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _362 + 32
                                        u = sha3(mem[0])
                                        while _362 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_362 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_362 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _362 + 32
                                        u = sha3(mem[0])
                                        while _362 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_323 + 32] = _362
                        mem[_323 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_323 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_323 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_323 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _323
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _298] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_298 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _298 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _599 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_599] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _633 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_633] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_633 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_633 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _633 + 32
                                        u = sha3(mem[0])
                                        while _633 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_633 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_633 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _633 + 32
                                        u = sha3(mem[0])
                                        while _633 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_599 + 32] = _633
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _639 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_639] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_639 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_639 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _639 + 32
                                        u = sha3(mem[0])
                                        while _639 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_639 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_639 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _639 + 32
                                        u = sha3(mem[0])
                                        while _639 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_599 + 32] = _639
                        mem[_599 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_599 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_599 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_599 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _599
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _324 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_324] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _357 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_357] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_357 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_357 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _357 + 32
                                    u = sha3(mem[0])
                                    while _357 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_357 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_357 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _357 + 32
                                    u = sha3(mem[0])
                                    while _357 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_324 + 32] = _357
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _363 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_363] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_363 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_363 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _363 + 32
                                    u = sha3(mem[0])
                                    while _363 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_363 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_363 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _363 + 32
                                    u = sha3(mem[0])
                                    while _363 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_324 + 32] = _363
                    mem[_324 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_324 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_324 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_324 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _324
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _331 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_331] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _364 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_364] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_364 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_364 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _364 + 32
                                        u = sha3(mem[0])
                                        while _364 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_364 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_364 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _364 + 32
                                        u = sha3(mem[0])
                                        while _364 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_331 + 32] = _364
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _369 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_369] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_369 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_369 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _369 + 32
                                        u = sha3(mem[0])
                                        while _369 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_369 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_369 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _369 + 32
                                        u = sha3(mem[0])
                                        while _369 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_331 + 32] = _369
                        mem[_331 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_331 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_331 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_331 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _331
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _298] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_298 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _298 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _600 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_600] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _634 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_634] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_634 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_634 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _634 + 32
                                        u = sha3(mem[0])
                                        while _634 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_634 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_634 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _634 + 32
                                        u = sha3(mem[0])
                                        while _634 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_600 + 32] = _634
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _640 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_640] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_640 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_640 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _640 + 32
                                        u = sha3(mem[0])
                                        while _640 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_640 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_640 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _640 + 32
                                        u = sha3(mem[0])
                                        while _640 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_600 + 32] = _640
                        mem[_600 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_600 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_600 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_600 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _600
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _296 = mem[64]
        mem[mem[64]] = 32
        _300 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _300:
            mem[u] = t + -_296 - 64
            _589 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _591 = mem[_589 + 32]
            mem[t + 32] = 192
            _594 = mem[_591]
            mem[t + 192] = mem[_591]
            v = 0
            while v < _594:
                mem[v + t + 224] = mem[v + _591 + 32]
                v = v + 32
                continue 
            if ceil32(_594) > _594:
                mem[_594 + t + 224] = 0
            mem[t + 64] = mem[_589 + 64]
            mem[t + 96] = mem[_589 + 96]
            mem[t + 128] = mem[_589 + 156 len 4]
            mem[t + 160] = mem[_589 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_594) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 320
    mem[(32 * tierTotal) + 128] = 0
    mem[(32 * tierTotal) + 160] = 96
    mem[(32 * tierTotal) + 192] = 0
    mem[(32 * tierTotal) + 224] = 0
    mem[(32 * tierTotal) + 256] = 0
    mem[(32 * tierTotal) + 288] = 0
    mem[var10002] = var10001
    if not var10003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _959 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _994 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_994] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _1029 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_1029] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1029 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1029 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1029 + 32
                                    u = sha3(mem[0])
                                    while _1029 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1029 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1029 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1029 + 32
                                    u = sha3(mem[0])
                                    while _1029 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_994 + 32] = _1029
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _1035 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_1035] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1035 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1035 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1035 + 32
                                    u = sha3(mem[0])
                                    while _1035 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1035 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1035 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1035 + 32
                                    u = sha3(mem[0])
                                    while _1035 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_994 + 32] = _1035
                    mem[_994 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_994 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_994 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_994 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _994
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1001 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1001] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1036 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1036] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1036 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1036 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1036 + 32
                                        u = sha3(mem[0])
                                        while _1036 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1036 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1036 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1036 + 32
                                        u = sha3(mem[0])
                                        while _1036 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1001 + 32] = _1036
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1041 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1041] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1041 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1041 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1041 + 32
                                        u = sha3(mem[0])
                                        while _1041 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1041 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1041 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1041 + 32
                                        u = sha3(mem[0])
                                        while _1041 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1001 + 32] = _1041
                        mem[_1001 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1001 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1001 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1001 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1001
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _959] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_959 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _959 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1275 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1275] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1313 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1313] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1313 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1313 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1313 + 32
                                        u = sha3(mem[0])
                                        while _1313 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1313 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1313 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1313 + 32
                                        u = sha3(mem[0])
                                        while _1313 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1275 + 32] = _1313
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1317 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1317] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1317 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1317 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1317 + 32
                                        u = sha3(mem[0])
                                        while _1317 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1317 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1317 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1317 + 32
                                        u = sha3(mem[0])
                                        while _1317 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1275 + 32] = _1317
                        mem[_1275 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1275 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1275 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1275 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1275
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[sha3(mem[mem[64] len _959 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _1002 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1002] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _1037 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_1037] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1037 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1037 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1037 + 32
                                    u = sha3(mem[0])
                                    while _1037 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1037 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1037 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1037 + 32
                                    u = sha3(mem[0])
                                    while _1037 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_1002 + 32] = _1037
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _1042 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_1042] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1042 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1042 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1042 + 32
                                    u = sha3(mem[0])
                                    while _1042 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1042 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1042 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1042 + 32
                                    u = sha3(mem[0])
                                    while _1042 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_1002 + 32] = _1042
                    mem[_1002 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_1002 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_1002 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_1002 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _1002
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1008 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1008] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1043 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1043] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1043 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1043 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1043 + 32
                                        u = sha3(mem[0])
                                        while _1043 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1043 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1043 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1043 + 32
                                        u = sha3(mem[0])
                                        while _1043 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1008 + 32] = _1043
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1056 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1056] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1056 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1056 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1056 + 32
                                        u = sha3(mem[0])
                                        while _1056 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1056 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1056 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1056 + 32
                                        u = sha3(mem[0])
                                        while _1056 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1008 + 32] = _1056
                        mem[_1008 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1008 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1008 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1008 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1008
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _959] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_959 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _959 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1276 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1276] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1314 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1314] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1314 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1314 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1314 + 32
                                        u = sha3(mem[0])
                                        while _1314 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1314 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1314 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1314 + 32
                                        u = sha3(mem[0])
                                        while _1314 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1276 + 32] = _1314
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1318 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1318] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1318 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1318 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1318 + 32
                                        u = sha3(mem[0])
                                        while _1318 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1318 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1318 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1318 + 32
                                        u = sha3(mem[0])
                                        while _1318 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1276 + 32] = _1318
                        mem[_1276 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1276 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1276 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1276 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1276
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _957 = mem[64]
        mem[mem[64]] = 32
        _960 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _960:
            mem[u] = t + -_957 - 64
            _1266 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _1268 = mem[_1266 + 32]
            mem[t + 32] = 192
            _1270 = mem[_1268]
            mem[t + 192] = mem[_1268]
            v = 0
            while v < _1270:
                mem[v + t + 224] = mem[v + _1268 + 32]
                v = v + 32
                continue 
            if ceil32(_1270) > _1270:
                mem[_1270 + t + 224] = 0
            mem[t + 64] = mem[_1266 + 64]
            mem[t + 96] = mem[_1266 + 96]
            mem[t + 128] = mem[_1266 + 156 len 4]
            mem[t + 160] = mem[_1266 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1270) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 512
    mem[(32 * tierTotal) + 320] = 0
    mem[(32 * tierTotal) + 352] = 96
    mem[(32 * tierTotal) + 384] = 0
    mem[(32 * tierTotal) + 416] = 0
    mem[(32 * tierTotal) + 448] = 0
    mem[(32 * tierTotal) + 480] = 0
    mem[var14002] = var14001
    if not var14003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _1635 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _1670 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1670] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _1705 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_1705] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1705 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1705 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1705 + 32
                                    u = sha3(mem[0])
                                    while _1705 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1705 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1705 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1705 + 32
                                    u = sha3(mem[0])
                                    while _1705 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_1670 + 32] = _1705
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _1711 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_1711] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1711 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1711 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1711 + 32
                                    u = sha3(mem[0])
                                    while _1711 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1711 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1711 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1711 + 32
                                    u = sha3(mem[0])
                                    while _1711 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_1670 + 32] = _1711
                    mem[_1670 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_1670 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_1670 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_1670 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _1670
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1677 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1677] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1712 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1712] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1712 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1712 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1712 + 32
                                        u = sha3(mem[0])
                                        while _1712 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1712 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1712 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1712 + 32
                                        u = sha3(mem[0])
                                        while _1712 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1677 + 32] = _1712
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1717 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1717] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1717 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1717 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1717 + 32
                                        u = sha3(mem[0])
                                        while _1717 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1717 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1717 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1717 + 32
                                        u = sha3(mem[0])
                                        while _1717 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1677 + 32] = _1717
                        mem[_1677 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1677 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1677 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1677 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1677
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _1635] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1635 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _1635 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1951 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1951] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1989 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1989] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1989 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1989 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1989 + 32
                                        u = sha3(mem[0])
                                        while _1989 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1989 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1989 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1989 + 32
                                        u = sha3(mem[0])
                                        while _1989 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1951 + 32] = _1989
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1993 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1993] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1993 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1993 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1993 + 32
                                        u = sha3(mem[0])
                                        while _1993 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1993 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1993 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1993 + 32
                                        u = sha3(mem[0])
                                        while _1993 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1951 + 32] = _1993
                        mem[_1951 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1951 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1951 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1951 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1951
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _1678 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1678] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _1713 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_1713] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1713 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1713 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1713 + 32
                                    u = sha3(mem[0])
                                    while _1713 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1713 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1713 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1713 + 32
                                    u = sha3(mem[0])
                                    while _1713 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_1678 + 32] = _1713
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _1718 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_1718] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_1718 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1718 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1718 + 32
                                    u = sha3(mem[0])
                                    while _1718 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_1718 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_1718 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _1718 + 32
                                    u = sha3(mem[0])
                                    while _1718 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_1678 + 32] = _1718
                    mem[_1678 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_1678 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_1678 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_1678 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _1678
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1684 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1684] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1719 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1719] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1719 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1719 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1719 + 32
                                        u = sha3(mem[0])
                                        while _1719 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1719 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1719 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1719 + 32
                                        u = sha3(mem[0])
                                        while _1719 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1684 + 32] = _1719
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1732 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1732] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1732 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1732 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1732 + 32
                                        u = sha3(mem[0])
                                        while _1732 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1732 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1732 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1732 + 32
                                        u = sha3(mem[0])
                                        while _1732 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1684 + 32] = _1732
                        mem[_1684 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1684 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1684 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1684 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1684
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _1635] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_1635 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _1635 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _1952 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_1952] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _1990 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_1990] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1990 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1990 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1990 + 32
                                        u = sha3(mem[0])
                                        while _1990 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1990 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1990 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1990 + 32
                                        u = sha3(mem[0])
                                        while _1990 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1952 + 32] = _1990
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _1994 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_1994] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_1994 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1994 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1994 + 32
                                        u = sha3(mem[0])
                                        while _1994 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_1994 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_1994 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _1994 + 32
                                        u = sha3(mem[0])
                                        while _1994 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_1952 + 32] = _1994
                        mem[_1952 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_1952 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_1952 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_1952 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _1952
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _1633 = mem[64]
        mem[mem[64]] = 32
        _1636 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1636:
            mem[u] = t + -_1633 - 64
            _1942 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _1944 = mem[_1942 + 32]
            mem[t + 32] = 192
            _1946 = mem[_1944]
            mem[t + 192] = mem[_1944]
            v = 0
            while v < _1946:
                mem[v + t + 224] = mem[v + _1944 + 32]
                v = v + 32
                continue 
            if ceil32(_1946) > _1946:
                mem[_1946 + t + 224] = 0
            mem[t + 64] = mem[_1942 + 64]
            mem[t + 96] = mem[_1942 + 96]
            mem[t + 128] = mem[_1942 + 156 len 4]
            mem[t + 160] = mem[_1942 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_1946) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 704
    mem[(32 * tierTotal) + 512] = 0
    mem[(32 * tierTotal) + 544] = 96
    mem[(32 * tierTotal) + 576] = 0
    mem[(32 * tierTotal) + 608] = 0
    mem[(32 * tierTotal) + 640] = 0
    mem[(32 * tierTotal) + 672] = 0
    mem[var18002] = var18001
    if not var18003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _2311 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[sha3(mem[mem[64] len _2311 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _2346 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2346] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _2381 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_2381] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_2381 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2381 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2381 + 32
                                    u = sha3(mem[0])
                                    while _2381 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_2381 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2381 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2381 + 32
                                    u = sha3(mem[0])
                                    while _2381 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_2346 + 32] = _2381
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _2387 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_2387] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_2387 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2387 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2387 + 32
                                    u = sha3(mem[0])
                                    while _2387 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_2387 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2387 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2387 + 32
                                    u = sha3(mem[0])
                                    while _2387 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_2346 + 32] = _2387
                    mem[_2346 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_2346 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_2346 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_2346 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _2346
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _2353 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2353] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _2388 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_2388] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2388 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2388 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2388 + 32
                                        u = sha3(mem[0])
                                        while _2388 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2388 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2388 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2388 + 32
                                        u = sha3(mem[0])
                                        while _2388 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2353 + 32] = _2388
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _2393 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_2393] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2393 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2393 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2393 + 32
                                        u = sha3(mem[0])
                                        while _2393 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2393 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2393 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2393 + 32
                                        u = sha3(mem[0])
                                        while _2393 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2353 + 32] = _2393
                        mem[_2353 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_2353 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_2353 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_2353 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _2353
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _2311] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2311 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _2311 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _2627 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2627] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _2665 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_2665] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2665 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2665 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2665 + 32
                                        u = sha3(mem[0])
                                        while _2665 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2665 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2665 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2665 + 32
                                        u = sha3(mem[0])
                                        while _2665 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2627 + 32] = _2665
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _2669 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_2669] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2669 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2669 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2669 + 32
                                        u = sha3(mem[0])
                                        while _2669 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2669 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2669 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2669 + 32
                                        u = sha3(mem[0])
                                        while _2669 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2627 + 32] = _2669
                        mem[_2627 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_2627 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_2627 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_2627 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _2627
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _2354 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2354] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _2389 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_2389] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_2389 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2389 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2389 + 32
                                    u = sha3(mem[0])
                                    while _2389 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_2389 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2389 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2389 + 32
                                    u = sha3(mem[0])
                                    while _2389 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_2354 + 32] = _2389
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _2394 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_2394] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_2394 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2394 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2394 + 32
                                    u = sha3(mem[0])
                                    while _2394 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_2394 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_2394 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _2394 + 32
                                    u = sha3(mem[0])
                                    while _2394 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_2354 + 32] = _2394
                    mem[_2354 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_2354 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_2354 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_2354 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _2354
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _2360 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2360] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _2395 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_2395] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2395 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2395 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2395 + 32
                                        u = sha3(mem[0])
                                        while _2395 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2395 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2395 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2395 + 32
                                        u = sha3(mem[0])
                                        while _2395 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2360 + 32] = _2395
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _2408 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_2408] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2408 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2408 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2408 + 32
                                        u = sha3(mem[0])
                                        while _2408 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2408 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2408 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2408 + 32
                                        u = sha3(mem[0])
                                        while _2408 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2360 + 32] = _2408
                        mem[_2360 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_2360 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_2360 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_2360 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _2360
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _2311] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2311 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _2311 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _2628 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_2628] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _2666 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_2666] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2666 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2666 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2666 + 32
                                        u = sha3(mem[0])
                                        while _2666 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2666 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2666 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2666 + 32
                                        u = sha3(mem[0])
                                        while _2666 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2628 + 32] = _2666
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _2670 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_2670] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_2670 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2670 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2670 + 32
                                        u = sha3(mem[0])
                                        while _2670 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_2670 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_2670 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _2670 + 32
                                        u = sha3(mem[0])
                                        while _2670 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_2628 + 32] = _2670
                        mem[_2628 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_2628 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_2628 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_2628 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _2628
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _2309 = mem[64]
        mem[mem[64]] = 32
        _2312 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2312:
            mem[u] = t + -_2309 - 64
            _2618 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _2620 = mem[_2618 + 32]
            mem[t + 32] = 192
            _2622 = mem[_2620]
            mem[t + 192] = mem[_2620]
            v = 0
            while v < _2622:
                mem[v + t + 224] = mem[v + _2620 + 32]
                v = v + 32
                continue 
            if ceil32(_2622) > _2622:
                mem[_2622 + t + 224] = 0
            mem[t + 64] = mem[_2618 + 64]
            mem[t + 96] = mem[_2618 + 96]
            mem[t + 128] = mem[_2618 + 156 len 4]
            mem[t + 160] = mem[_2618 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_2622) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 896
    mem[(32 * tierTotal) + 704] = 0
    mem[(32 * tierTotal) + 736] = 96
    mem[(32 * tierTotal) + 768] = 0
    mem[(32 * tierTotal) + 800] = 0
    mem[(32 * tierTotal) + 832] = 0
    mem[(32 * tierTotal) + 864] = 0
    mem[var22002] = var22001
    if not var22003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _2987 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[sha3(mem[mem[64] len _2987 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _3022 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_3022] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _3057 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_3057] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3057 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3057 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3057 + 32
                                    u = sha3(mem[0])
                                    while _3057 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3057 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3057 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3057 + 32
                                    u = sha3(mem[0])
                                    while _3057 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3022 + 32] = _3057
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _3063 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_3063] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3063 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3063 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3063 + 32
                                    u = sha3(mem[0])
                                    while _3063 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3063 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3063 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3063 + 32
                                    u = sha3(mem[0])
                                    while _3063 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3022 + 32] = _3063
                    mem[_3022 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_3022 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_3022 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_3022 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _3022
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3029 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3029] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _3064 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_3064] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3064 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3064 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3064 + 32
                                        u = sha3(mem[0])
                                        while _3064 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3064 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3064 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3064 + 32
                                        u = sha3(mem[0])
                                        while _3064 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3029 + 32] = _3064
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _3069 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_3069] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3069 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3069 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3069 + 32
                                        u = sha3(mem[0])
                                        while _3069 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3069 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3069 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3069 + 32
                                        u = sha3(mem[0])
                                        while _3069 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3029 + 32] = _3069
                        mem[_3029 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3029 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3029 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3029 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3029
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _2987] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2987 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _2987 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3303 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3303] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _3341 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_3341] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3341 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3341 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3341 + 32
                                        u = sha3(mem[0])
                                        while _3341 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3341 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3341 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3341 + 32
                                        u = sha3(mem[0])
                                        while _3341 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3303 + 32] = _3341
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _3345 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_3345] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3345 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3345 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3345 + 32
                                        u = sha3(mem[0])
                                        while _3345 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3345 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3345 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3345 + 32
                                        u = sha3(mem[0])
                                        while _3345 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3303 + 32] = _3345
                        mem[_3303 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3303 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3303 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3303 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3303
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _3030 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_3030] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _3065 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_3065] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3065 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3065 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3065 + 32
                                    u = sha3(mem[0])
                                    while _3065 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3065 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3065 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3065 + 32
                                    u = sha3(mem[0])
                                    while _3065 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3030 + 32] = _3065
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _3070 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_3070] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3070 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3070 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3070 + 32
                                    u = sha3(mem[0])
                                    while _3070 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3070 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3070 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3070 + 32
                                    u = sha3(mem[0])
                                    while _3070 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3030 + 32] = _3070
                    mem[_3030 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_3030 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_3030 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_3030 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _3030
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3036 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3036] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _3071 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_3071] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3071 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3071 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3071 + 32
                                        u = sha3(mem[0])
                                        while _3071 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3071 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3071 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3071 + 32
                                        u = sha3(mem[0])
                                        while _3071 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3036 + 32] = _3071
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _3084 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_3084] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3084 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3084 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3084 + 32
                                        u = sha3(mem[0])
                                        while _3084 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3084 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3084 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3084 + 32
                                        u = sha3(mem[0])
                                        while _3084 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3036 + 32] = _3084
                        mem[_3036 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3036 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3036 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3036 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3036
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _2987] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_2987 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _2987 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3304 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3304] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _3342 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_3342] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3342 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3342 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3342 + 32
                                        u = sha3(mem[0])
                                        while _3342 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3342 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3342 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3342 + 32
                                        u = sha3(mem[0])
                                        while _3342 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3304 + 32] = _3342
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _3346 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_3346] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3346 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3346 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3346 + 32
                                        u = sha3(mem[0])
                                        while _3346 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3346 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3346 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3346 + 32
                                        u = sha3(mem[0])
                                        while _3346 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3304 + 32] = _3346
                        mem[_3304 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3304 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3304 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3304 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3304
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _2985 = mem[64]
        mem[mem[64]] = 32
        _2988 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2988:
            mem[u] = t + -_2985 - 64
            _3294 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _3296 = mem[_3294 + 32]
            mem[t + 32] = 192
            _3298 = mem[_3296]
            mem[t + 192] = mem[_3296]
            v = 0
            while v < _3298:
                mem[v + t + 224] = mem[v + _3296 + 32]
                v = v + 32
                continue 
            if ceil32(_3298) > _3298:
                mem[_3298 + t + 224] = 0
            mem[t + 64] = mem[_3294 + 64]
            mem[t + 96] = mem[_3294 + 96]
            mem[t + 128] = mem[_3294 + 156 len 4]
            mem[t + 160] = mem[_3294 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_3298) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 1088
    mem[(32 * tierTotal) + 896] = 0
    mem[(32 * tierTotal) + 928] = 96
    mem[(32 * tierTotal) + 960] = 0
    mem[(32 * tierTotal) + 992] = 0
    mem[(32 * tierTotal) + 1024] = 0
    mem[(32 * tierTotal) + 1056] = 0
    mem[var26002] = var26001
    if not var26003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _3663 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _3698 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_3698] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _3733 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_3733] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3733 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3733 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3733 + 32
                                    u = sha3(mem[0])
                                    while _3733 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3733 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3733 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3733 + 32
                                    u = sha3(mem[0])
                                    while _3733 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3698 + 32] = _3733
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _3739 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_3739] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3739 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3739 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3739 + 32
                                    u = sha3(mem[0])
                                    while _3739 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3739 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3739 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3739 + 32
                                    u = sha3(mem[0])
                                    while _3739 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3698 + 32] = _3739
                    mem[_3698 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_3698 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_3698 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_3698 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _3698
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3705 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3705] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _3740 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_3740] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3740 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3740 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3740 + 32
                                        u = sha3(mem[0])
                                        while _3740 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3740 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3740 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3740 + 32
                                        u = sha3(mem[0])
                                        while _3740 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3705 + 32] = _3740
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _3745 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_3745] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3745 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3745 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3745 + 32
                                        u = sha3(mem[0])
                                        while _3745 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3745 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3745 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3745 + 32
                                        u = sha3(mem[0])
                                        while _3745 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3705 + 32] = _3745
                        mem[_3705 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3705 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3705 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3705 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3705
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _3663] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_3663 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _3663 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3979 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3979] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _4017 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_4017] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4017 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4017 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4017 + 32
                                        u = sha3(mem[0])
                                        while _4017 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4017 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4017 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4017 + 32
                                        u = sha3(mem[0])
                                        while _4017 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3979 + 32] = _4017
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _4021 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_4021] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4021 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4021 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4021 + 32
                                        u = sha3(mem[0])
                                        while _4021 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4021 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4021 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4021 + 32
                                        u = sha3(mem[0])
                                        while _4021 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3979 + 32] = _4021
                        mem[_3979 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3979 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3979 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3979 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3979
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _3706 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_3706] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _3741 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_3741] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3741 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3741 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3741 + 32
                                    u = sha3(mem[0])
                                    while _3741 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3741 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3741 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3741 + 32
                                    u = sha3(mem[0])
                                    while _3741 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3706 + 32] = _3741
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _3746 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_3746] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_3746 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3746 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3746 + 32
                                    u = sha3(mem[0])
                                    while _3746 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_3746 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_3746 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _3746 + 32
                                    u = sha3(mem[0])
                                    while _3746 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_3706 + 32] = _3746
                    mem[_3706 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_3706 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_3706 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_3706 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _3706
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3712 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3712] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _3747 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_3747] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3747 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3747 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3747 + 32
                                        u = sha3(mem[0])
                                        while _3747 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3747 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3747 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3747 + 32
                                        u = sha3(mem[0])
                                        while _3747 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3712 + 32] = _3747
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _3760 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_3760] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_3760 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3760 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3760 + 32
                                        u = sha3(mem[0])
                                        while _3760 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_3760 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_3760 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _3760 + 32
                                        u = sha3(mem[0])
                                        while _3760 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3712 + 32] = _3760
                        mem[_3712 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3712 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3712 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3712 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3712
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _3663] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_3663 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _3663 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _3980 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_3980] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _4018 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_4018] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4018 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4018 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4018 + 32
                                        u = sha3(mem[0])
                                        while _4018 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4018 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4018 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4018 + 32
                                        u = sha3(mem[0])
                                        while _4018 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3980 + 32] = _4018
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _4022 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_4022] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4022 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4022 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4022 + 32
                                        u = sha3(mem[0])
                                        while _4022 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4022 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4022 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4022 + 32
                                        u = sha3(mem[0])
                                        while _4022 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_3980 + 32] = _4022
                        mem[_3980 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_3980 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_3980 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_3980 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _3980
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _3661 = mem[64]
        mem[mem[64]] = 32
        _3664 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _3664:
            mem[u] = t + -_3661 - 64
            _3970 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _3972 = mem[_3970 + 32]
            mem[t + 32] = 192
            _3974 = mem[_3972]
            mem[t + 192] = mem[_3972]
            v = 0
            while v < _3974:
                mem[v + t + 224] = mem[v + _3972 + 32]
                v = v + 32
                continue 
            if ceil32(_3974) > _3974:
                mem[_3974 + t + 224] = 0
            mem[t + 64] = mem[_3970 + 64]
            mem[t + 96] = mem[_3970 + 96]
            mem[t + 128] = mem[_3970 + 156 len 4]
            mem[t + 160] = mem[_3970 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_3974) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 1280
    mem[(32 * tierTotal) + 1088] = 0
    mem[(32 * tierTotal) + 1120] = 96
    mem[(32 * tierTotal) + 1152] = 0
    mem[(32 * tierTotal) + 1184] = 0
    mem[(32 * tierTotal) + 1216] = 0
    mem[(32 * tierTotal) + 1248] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _4339 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _4374 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_4374] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _4409 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_4409] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_4409 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4409 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4409 + 32
                                    u = sha3(mem[0])
                                    while _4409 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_4409 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4409 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4409 + 32
                                    u = sha3(mem[0])
                                    while _4409 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_4374 + 32] = _4409
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _4415 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_4415] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_4415 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4415 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4415 + 32
                                    u = sha3(mem[0])
                                    while _4415 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_4415 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4415 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4415 + 32
                                    u = sha3(mem[0])
                                    while _4415 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_4374 + 32] = _4415
                    mem[_4374 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_4374 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_4374 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_4374 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _4374
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _4381 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_4381] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _4416 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_4416] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4416 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4416 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4416 + 32
                                        u = sha3(mem[0])
                                        while _4416 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4416 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4416 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4416 + 32
                                        u = sha3(mem[0])
                                        while _4416 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4381 + 32] = _4416
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _4421 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_4421] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4421 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4421 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4421 + 32
                                        u = sha3(mem[0])
                                        while _4421 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4421 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4421 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4421 + 32
                                        u = sha3(mem[0])
                                        while _4421 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4381 + 32] = _4421
                        mem[_4381 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_4381 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_4381 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_4381 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _4381
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _4339] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4339 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _4339 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _4655 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_4655] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _4693 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_4693] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4693 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4693 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4693 + 32
                                        u = sha3(mem[0])
                                        while _4693 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4693 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4693 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4693 + 32
                                        u = sha3(mem[0])
                                        while _4693 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4655 + 32] = _4693
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _4697 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_4697] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4697 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4697 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4697 + 32
                                        u = sha3(mem[0])
                                        while _4697 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4697 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4697 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4697 + 32
                                        u = sha3(mem[0])
                                        while _4697 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4655 + 32] = _4697
                        mem[_4655 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_4655 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_4655 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_4655 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _4655
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _4382 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_4382] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _4417 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_4417] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_4417 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4417 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4417 + 32
                                    u = sha3(mem[0])
                                    while _4417 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_4417 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4417 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4417 + 32
                                    u = sha3(mem[0])
                                    while _4417 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_4382 + 32] = _4417
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _4422 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_4422] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_4422 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4422 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4422 + 32
                                    u = sha3(mem[0])
                                    while _4422 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_4422 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_4422 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _4422 + 32
                                    u = sha3(mem[0])
                                    while _4422 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_4382 + 32] = _4422
                    mem[_4382 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_4382 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_4382 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_4382 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _4382
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _4388 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_4388] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _4423 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_4423] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4423 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4423 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4423 + 32
                                        u = sha3(mem[0])
                                        while _4423 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4423 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4423 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4423 + 32
                                        u = sha3(mem[0])
                                        while _4423 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4388 + 32] = _4423
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _4436 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_4436] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4436 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4436 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4436 + 32
                                        u = sha3(mem[0])
                                        while _4436 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4436 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4436 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4436 + 32
                                        u = sha3(mem[0])
                                        while _4436 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4388 + 32] = _4436
                        mem[_4388 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_4388 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_4388 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_4388 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _4388
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _4339] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_4339 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _4339 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _4656 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_4656] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _4694 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_4694] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4694 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4694 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4694 + 32
                                        u = sha3(mem[0])
                                        while _4694 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4694 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4694 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4694 + 32
                                        u = sha3(mem[0])
                                        while _4694 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4656 + 32] = _4694
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _4698 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_4698] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_4698 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4698 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4698 + 32
                                        u = sha3(mem[0])
                                        while _4698 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_4698 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_4698 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _4698 + 32
                                        u = sha3(mem[0])
                                        while _4698 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_4656 + 32] = _4698
                        mem[_4656 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_4656 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_4656 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_4656 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _4656
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _4337 = mem[64]
        mem[mem[64]] = 32
        _4340 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _4340:
            mem[u] = t + -_4337 - 64
            _4646 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _4648 = mem[_4646 + 32]
            mem[t + 32] = 192
            _4650 = mem[_4648]
            mem[t + 192] = mem[_4648]
            v = 0
            while v < _4650:
                mem[v + t + 224] = mem[v + _4648 + 32]
                v = v + 32
                continue 
            if ceil32(_4650) > _4650:
                mem[_4650 + t + 224] = 0
            mem[t + 64] = mem[_4646 + 64]
            mem[t + 96] = mem[_4646 + 96]
            mem[t + 128] = mem[_4646 + 156 len 4]
            mem[t + 160] = mem[_4646 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_4650) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 1472
    mem[(32 * tierTotal) + 1280] = 0
    mem[(32 * tierTotal) + 1312] = 96
    mem[(32 * tierTotal) + 1344] = 0
    mem[(32 * tierTotal) + 1376] = 0
    mem[(32 * tierTotal) + 1408] = 0
    mem[(32 * tierTotal) + 1440] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _5015 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[mem[mem[64] + 32 len uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _5050 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_5050] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _5085 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_5085] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5085 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5085 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5085 + 32
                                    u = sha3(mem[0])
                                    while _5085 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5085 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5085 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5085 + 32
                                    u = sha3(mem[0])
                                    while _5085 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5050 + 32] = _5085
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _5091 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_5091] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5091 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5091 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5091 + 32
                                    u = sha3(mem[0])
                                    while _5091 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5091 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5091 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5091 + 32
                                    u = sha3(mem[0])
                                    while _5091 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5050 + 32] = _5091
                    mem[_5050 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_5050 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_5050 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_5050 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _5050
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _5057 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5057] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _5092 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_5092] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5092 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5092 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5092 + 32
                                        u = sha3(mem[0])
                                        while _5092 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5092 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5092 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5092 + 32
                                        u = sha3(mem[0])
                                        while _5092 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5057 + 32] = _5092
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _5097 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_5097] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5097 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5097 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5097 + 32
                                        u = sha3(mem[0])
                                        while _5097 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5097 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5097 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5097 + 32
                                        u = sha3(mem[0])
                                        while _5097 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5057 + 32] = _5097
                        mem[_5057 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_5057 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_5057 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_5057 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _5057
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _5015] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_5015 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _5015 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _5331 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5331] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _5369 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_5369] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5369 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5369 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5369 + 32
                                        u = sha3(mem[0])
                                        while _5369 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5369 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5369 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5369 + 32
                                        u = sha3(mem[0])
                                        while _5369 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5331 + 32] = _5369
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _5373 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_5373] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5373 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5373 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5373 + 32
                                        u = sha3(mem[0])
                                        while _5373 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5373 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5373 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5373 + 32
                                        u = sha3(mem[0])
                                        while _5373 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5331 + 32] = _5373
                        mem[_5331 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_5331 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_5331 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_5331 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _5331
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[sha3(mem[mem[64] len _5015 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _5058 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_5058] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _5093 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_5093] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5093 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5093 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5093 + 32
                                    u = sha3(mem[0])
                                    while _5093 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5093 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5093 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5093 + 32
                                    u = sha3(mem[0])
                                    while _5093 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5058 + 32] = _5093
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _5098 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_5098] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5098 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5098 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5098 + 32
                                    u = sha3(mem[0])
                                    while _5098 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5098 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5098 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5098 + 32
                                    u = sha3(mem[0])
                                    while _5098 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5058 + 32] = _5098
                    mem[_5058 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_5058 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_5058 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_5058 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _5058
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _5064 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5064] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _5099 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_5099] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5099 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5099 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5099 + 32
                                        u = sha3(mem[0])
                                        while _5099 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5099 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5099 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5099 + 32
                                        u = sha3(mem[0])
                                        while _5099 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5064 + 32] = _5099
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _5112 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_5112] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5112 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5112 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5112 + 32
                                        u = sha3(mem[0])
                                        while _5112 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5112 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5112 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5112 + 32
                                        u = sha3(mem[0])
                                        while _5112 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5064 + 32] = _5112
                        mem[_5064 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_5064 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_5064 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_5064 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _5064
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _5015] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_5015 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _5015 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _5332 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5332] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _5370 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_5370] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5370 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5370 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5370 + 32
                                        u = sha3(mem[0])
                                        while _5370 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5370 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5370 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5370 + 32
                                        u = sha3(mem[0])
                                        while _5370 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5332 + 32] = _5370
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _5374 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_5374] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5374 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5374 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5374 + 32
                                        u = sha3(mem[0])
                                        while _5374 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5374 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5374 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5374 + 32
                                        u = sha3(mem[0])
                                        while _5374 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5332 + 32] = _5374
                        mem[_5332 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_5332 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_5332 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_5332 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _5332
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _5013 = mem[64]
        mem[mem[64]] = 32
        _5016 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _5016:
            mem[u] = t + -_5013 - 64
            _5322 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _5324 = mem[_5322 + 32]
            mem[t + 32] = 192
            _5326 = mem[_5324]
            mem[t + 192] = mem[_5324]
            v = 0
            while v < _5326:
                mem[v + t + 224] = mem[v + _5324 + 32]
                v = v + 32
                continue 
            if ceil32(_5326) > _5326:
                mem[_5326 + t + 224] = 0
            mem[t + 64] = mem[_5322 + 64]
            mem[t + 96] = mem[_5322 + 96]
            mem[t + 128] = mem[_5322 + 156 len 4]
            mem[t + 160] = mem[_5322 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_5326) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 1664
    mem[(32 * tierTotal) + 1472] = 0
    mem[(32 * tierTotal) + 1504] = 96
    mem[(32 * tierTotal) + 1536] = 0
    mem[(32 * tierTotal) + 1568] = 0
    mem[(32 * tierTotal) + 1600] = 0
    mem[(32 * tierTotal) + 1632] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _5691 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[sha3(mem[mem[64] len _5691 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _5726 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_5726] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _5761 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_5761] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5761 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5761 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5761 + 32
                                    u = sha3(mem[0])
                                    while _5761 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5761 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5761 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5761 + 32
                                    u = sha3(mem[0])
                                    while _5761 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5726 + 32] = _5761
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _5767 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_5767] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5767 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5767 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5767 + 32
                                    u = sha3(mem[0])
                                    while _5767 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5767 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5767 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5767 + 32
                                    u = sha3(mem[0])
                                    while _5767 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5726 + 32] = _5767
                    mem[_5726 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_5726 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_5726 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_5726 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _5726
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _5733 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5733] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _5768 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_5768] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5768 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5768 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5768 + 32
                                        u = sha3(mem[0])
                                        while _5768 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5768 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5768 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5768 + 32
                                        u = sha3(mem[0])
                                        while _5768 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5733 + 32] = _5768
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _5773 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_5773] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5773 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5773 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5773 + 32
                                        u = sha3(mem[0])
                                        while _5773 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5773 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5773 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5773 + 32
                                        u = sha3(mem[0])
                                        while _5773 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5733 + 32] = _5773
                        mem[_5733 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_5733 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_5733 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_5733 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _5733
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                            mem[t + _5691] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_5691 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                        if uint8(stor[sha3(mem[mem[64] len _5691 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _6007 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_6007] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _6045 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_6045] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_6045 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6045 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6045 + 32
                                        u = sha3(mem[0])
                                        while _6045 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_6045 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6045 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6045 + 32
                                        u = sha3(mem[0])
                                        while _6045 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_6007 + 32] = _6045
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _6049 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_6049] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_6049 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6049 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6049 + 32
                                        u = sha3(mem[0])
                                        while _6049 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_6049 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6049 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6049 + 32
                                        u = sha3(mem[0])
                                        while _6049 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_6007 + 32] = _6049
                        mem[_6007 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_6007 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_6007 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_6007 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _6007
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _5734 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_5734] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _5769 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_5769] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5769 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5769 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5769 + 32
                                    u = sha3(mem[0])
                                    while _5769 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5769 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5769 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5769 + 32
                                    u = sha3(mem[0])
                                    while _5769 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5734 + 32] = _5769
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _5774 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_5774] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    mem[_5774 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5774 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5774 + 32
                                    u = sha3(mem[0])
                                    while _5774 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if stor4[uint8(idx)].field_257 % 128:
                                if 31 >= stor4[uint8(idx)].field_257 % 128:
                                    mem[_5774 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                else:
                                    mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                    mem[_5774 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                    t = _5774 + 32
                                    u = sha3(mem[0])
                                    while _5774 + stor4[uint8(idx)].field_257 % 128 > t:
                                        mem[t + 32] = uint256(stor1[u])
                                        t = t + 32
                                        u = u + 1
                                        continue 
                        mem[_5734 + 32] = _5774
                    mem[_5734 + 64] = uint256(stor4[uint8(idx)].field_512)
                    mem[_5734 + 96] = uint256(stor4[uint8(idx)].field_768)
                    mem[_5734 + 128] = uint32(stor4[uint8(idx)].field_1024)
                    mem[_5734 + 160] = uint256(stor4[uint8(idx)].field_1280)
                    if not uint8(s) - 255:
                        revert with 0, 17
                    if uint8(s) >= mem[96]:
                        revert with 0, 50
                    mem[(32 * uint8(s)) + 128] = _5734
                else:
                    if bool(stor4[uint8(idx)].field_256) != 1:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _5740 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_5740] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _5775 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_5775] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5775 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5775 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5775 + 32
                                        u = sha3(mem[0])
                                        while _5775 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5775 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5775 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5775 + 32
                                        u = sha3(mem[0])
                                        while _5775 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5740 + 32] = _5775
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _5788 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_5788] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_5788 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5788 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5788 + 32
                                        u = sha3(mem[0])
                                        while _5788 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_5788 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_5788 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _5788 + 32
                                        u = sha3(mem[0])
                                        while _5788 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_5740 + 32] = _5788
                        mem[_5740 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_5740 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_5740 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_5740 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _5740
                    else:
                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                        t = 0
                        u = sha3(mem[0])
                        while t < stor4[uint8(idx)].field_257 % 128:
                            mem[t + _5691] = uint256(stor[u])
                            t = t + 32
                            u = u + 1
                            continue 
                        mem[_5691 + stor4[uint8(idx)].field_257 % 128] = 5
                        if uint8(stor[sha3(mem[mem[64] len _5691 + stor4[uint8(idx)].field_257 % 128 + -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _6008 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_6008] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _6046 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_6046] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_6046 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6046 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6046 + 32
                                        u = sha3(mem[0])
                                        while _6046 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_6046 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6046 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6046 + 32
                                        u = sha3(mem[0])
                                        while _6046 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_6008 + 32] = _6046
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _6050 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_6050] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    if 31 >= uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                        mem[_6050 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6050 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6050 + 32
                                        u = sha3(mem[0])
                                        while _6050 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if stor4[uint8(idx)].field_257 % 128:
                                    if 31 >= stor4[uint8(idx)].field_257 % 128:
                                        mem[_6050 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    else:
                                        mem[0] = (6 * uint8(idx)) + sha3(4) + 1
                                        mem[_6050 + 32] = uint256(stor[sha3((6 * uint8(idx)) + ('name', 'stor4', 4) + 1)].field_0)
                                        t = _6050 + 32
                                        u = sha3(mem[0])
                                        while _6050 + stor4[uint8(idx)].field_257 % 128 > t:
                                            mem[t + 32] = uint256(stor1[u])
                                            t = t + 32
                                            u = u + 1
                                            continue 
                            mem[_6008 + 32] = _6050
                        mem[_6008 + 64] = uint256(stor4[uint8(idx)].field_512)
                        mem[_6008 + 96] = uint256(stor4[uint8(idx)].field_768)
                        mem[_6008 + 128] = uint32(stor4[uint8(idx)].field_1024)
                        mem[_6008 + 160] = uint256(stor4[uint8(idx)].field_1280)
                        if not uint8(s) - 255:
                            revert with 0, 17
                        if uint8(s) >= mem[96]:
                            revert with 0, 50
                        mem[(32 * uint8(s)) + 128] = _6008
            if not uint8(idx) - 255:
                revert with 0, 17
            idx = uint8(idx) + 1
            s = uint8(s) + 1
            continue 
        _5689 = mem[64]
        mem[mem[64]] = 32
        _5692 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _5692:
            mem[u] = t + -_5689 - 64
            _5998 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            _6000 = mem[_5998 + 32]
            mem[t + 32] = 192
            _6002 = mem[_6000]
            mem[t + 192] = mem[_6000]
            v = 0
            while v < _6002:
                mem[v + t + 224] = mem[v + _6000 + 32]
                v = v + 32
                continue 
            if ceil32(_6002) > _6002:
                mem[_6002 + t + 224] = 0
            mem[t + 64] = mem[_5998 + 64]
            mem[t + 96] = mem[_5998 + 96]
            mem[t + 128] = mem[_5998 + 156 len 4]
            mem[t + 160] = mem[_5998 + 160]
            idx = idx + 1
            s = s + 32
            t = ceil32(_6002) + t + 224
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * tierTotal) + 1856
    mem[(32 * tierTotal) + 1664] = 0
    mem[(32 * tierTotal) + 1696] = 96
    mem[(32 * tierTotal) + 1728] = 0
    mem[(32 * tierTotal) + 1760] = 0
    mem[(32 * tierTotal) + 1792] = 0
    mem[(32 * tierTotal) + 1824] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = 0
        s = 0
        while uint8(idx) < stor4.length:
            mem[0] = 4
            _6367 = mem[64]
            if bool(stor4[uint8(idx)].field_256):
                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5)] = 5
                    if uint8(stor[sha3(mem[mem[64] len _6367 + (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + -mem[64] + 32])]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _6402 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_6402] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _6437 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_6437] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                mem[_6402 + 32] = _6437
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                # nil
                            else:
                                mem[_6437 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6402 + 32] = _6437
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if not stor4[uint8(idx)].field_257 % 128:
                                mem[_6402 + 32] = _6437
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < stor4[uint8(idx)].field_257 % 128:
                                # nil
                            else:
                                mem[_6437 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6402 + 32] = _6437
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _6443 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_6443] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                mem[_6402 + 32] = _6443
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                # nil
                            else:
                                mem[_6443 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6402 + 32] = _6443
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if not stor4[uint8(idx)].field_257 % 128:
                                mem[_6402 + 32] = _6443
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < stor4[uint8(idx)].field_257 % 128:
                                # nil
                            else:
                                mem[_6443 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6402 + 32] = _6443
                                mem[_6402 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6402 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6402 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6402 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6402
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                else:
                    if bool(stor4[uint8(idx)].field_256) == 1:
                        # nil
                    else:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _6409 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_6409] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _6444 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_6444] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    mem[_6409 + 32] = _6444
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    # nil
                                else:
                                    mem[_6444 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6409 + 32] = _6444
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if not stor4[uint8(idx)].field_257 % 128:
                                    mem[_6409 + 32] = _6444
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < stor4[uint8(idx)].field_257 % 128:
                                    # nil
                                else:
                                    mem[_6444 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6409 + 32] = _6444
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _6449 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_6449] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    mem[_6409 + 32] = _6449
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    # nil
                                else:
                                    mem[_6449 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6409 + 32] = _6449
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if not stor4[uint8(idx)].field_257 % 128:
                                    mem[_6409 + 32] = _6449
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < stor4[uint8(idx)].field_257 % 128:
                                    # nil
                                else:
                                    mem[_6449 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6409 + 32] = _6449
                                    mem[_6409 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6409 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6409 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6409 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6409
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
            else:
                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                    revert with 0, 34
                if not bool(stor4[uint8(idx)].field_256):
                    mem[mem[64]] = Mask(248, 8, uint256(stor4[uint8(idx)].field_256))
                    mem[mem[64] + stor4[uint8(idx)].field_257 % 128] = 5
                    if uint8(stor[mem[mem[64] + 32 len stor4[uint8(idx)].field_257 % 128]][Mask(248, 8, uint256(stor4[uint8(idx)].field_256))]) <= 0:
                        if not uint8(idx) - 255:
                            revert with 0, 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                    _6410 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_6410] = uint8(stor4[uint8(idx)].field_0)
                    if bool(stor4[uint8(idx)].field_256):
                        if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                            revert with 0, 34
                        _6445 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                        mem[_6445] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                mem[_6410 + 32] = _6445
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                # nil
                            else:
                                mem[_6445 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6410 + 32] = _6445
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if not stor4[uint8(idx)].field_257 % 128:
                                mem[_6410 + 32] = _6445
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < stor4[uint8(idx)].field_257 % 128:
                                # nil
                            else:
                                mem[_6445 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6410 + 32] = _6445
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                    else:
                        if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                            revert with 0, 34
                        _6450 = mem[64]
                        mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                        mem[_6450] = stor4[uint8(idx)].field_257 % 128
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                mem[_6410 + 32] = _6450
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                # nil
                            else:
                                mem[_6450 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6410 + 32] = _6450
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            if not stor4[uint8(idx)].field_257 % 128:
                                mem[_6410 + 32] = _6450
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                            if 31 < stor4[uint8(idx)].field_257 % 128:
                                # nil
                            else:
                                mem[_6450 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                mem[_6410 + 32] = _6450
                                mem[_6410 + 64] = uint256(stor4[uint8(idx)].field_512)
                                mem[_6410 + 96] = uint256(stor4[uint8(idx)].field_768)
                                mem[_6410 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                mem[_6410 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                if not uint8(s) - 255:
                                    revert with 0, 17
                                if uint8(s) >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * uint8(s)) + 128] = _6410
                                if not uint8(idx) - 255:
                                    revert with 0, 17
                                idx = uint8(idx) + 1
                                s = uint8(s) + 1
                                continue 
                else:
                    if bool(stor4[uint8(idx)].field_256) == 1:
                        # nil
                    else:
                        mem[0] = 5
                        if uint8(stor[sha3(mem[mem[64] len -mem[64] + 32])]) <= 0:
                            if not uint8(idx) - 255:
                                revert with 0, 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                        _6416 = mem[64]
                        mem[64] = mem[64] + 192
                        mem[_6416] = uint8(stor4[uint8(idx)].field_0)
                        if bool(stor4[uint8(idx)].field_256):
                            if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                revert with 0, 34
                            _6451 = mem[64]
                            mem[64] = mem[64] + ceil32(uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5) + 32
                            mem[_6451] = uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    mem[_6416 + 32] = _6451
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    # nil
                                else:
                                    mem[_6451 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6416 + 32] = _6451
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if not stor4[uint8(idx)].field_257 % 128:
                                    mem[_6416 + 32] = _6451
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < stor4[uint8(idx)].field_257 % 128:
                                    # nil
                                else:
                                    mem[_6451 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6416 + 32] = _6451
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                        else:
                            if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                revert with 0, 34
                            _6464 = mem[64]
                            mem[64] = mem[64] + ceil32(stor4[uint8(idx)].field_257 % 128) + 32
                            mem[_6464] = stor4[uint8(idx)].field_257 % 128
                            if bool(stor4[uint8(idx)].field_256):
                                if not bool(stor4[uint8(idx)].field_256) - (uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5 < 32):
                                    revert with 0, 34
                                if not Mask(256, -1, uint256(stor4[uint8(idx)].field_256)):
                                    mem[_6416 + 32] = _6464
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < uint255(uint256(stor4[uint8(idx)].field_256)) * 0.5:
                                    # nil
                                else:
                                    mem[_6464 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6416 + 32] = _6464
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                            else:
                                if not bool(stor4[uint8(idx)].field_256) - (stor4[uint8(idx)].field_257 % 128 < 32):
                                    revert with 0, 34
                                if not stor4[uint8(idx)].field_257 % 128:
                                    mem[_6416 + 32] = _6464
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
                                if 31 < stor4[uint8(idx)].field_257 % 128:
                                    # nil
                                else:
                                    mem[_6464 + 32] = 256 * Mask(248, 0, stor4[uint8(idx)].field_264)
                                    mem[_6416 + 32] = _6464
                                    mem[_6416 + 64] = uint256(stor4[uint8(idx)].field_512)
                                    mem[_6416 + 96] = uint256(stor4[uint8(idx)].field_768)
                                    mem[_6416 + 128] = uint32(stor4[uint8(idx)].field_1024)
                                    mem[_6416 + 160] = uint256(stor4[uint8(idx)].field_1280)
                                    if not uint8(s) - 255:
                                        revert with 0, 17
                                    if uint8(s) >= mem[96]:
                                        revert with 0, 50
                                    mem[(32 * uint8(s)) + 128] = _6416
                                    if not uint8(idx) - 255:
                                        revert with 0, 17
                                    idx = uint8(idx) + 1
                                    s = uint8(s) + 1
                                    continue 
    # nil
}



}
